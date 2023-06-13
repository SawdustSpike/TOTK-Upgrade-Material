using Dapper;
using System.Data;
using System.Xml.Linq;
using TOTK.Models;

namespace TOTK
{
    public class MaterialRepository : IMaterialRepository
    {
        private readonly IDbConnection _conn;
        public MaterialRepository(IDbConnection conn)
        {
            _conn = conn;
        }
        public void DeleteMaterial(Material material)
        {
            _conn.Execute("DELETE FROM material WHERE MaterialID = @id;", new { id = material.MaterialID });
        }

        public IEnumerable<Material> GetAllMaterials()
        {
            return _conn.Query<Material>("SELECT * FROM material;");
        }
        //For some reason this does not work using the dapper measures against SQL injection
        public IEnumerable<Material> GetAllMaterialsByFirstLetter(char id)
        {
            return _conn.Query<Material>($"SELECT * FROM material Where Name like '{id}%';");
        }

        public Material GetMaterial(int id)
        {
            return _conn.QuerySingle<Material>("SELECT * FROM material WHERE MaterialID = @id;", new { id = id });
        }

        public void InsertMaterial(Material material)
        {
            _conn.Execute("INSERT INTO material (Name, AmountNeeded) VALUES (@name, @amountNeeded);",
               new { name = material.Name, amountNeeded = material.AmountNeeded });
        }

        public void UpdateMaterial(Material material)
        {
            _conn.Execute("UPDATE material SET AmountNeeded = @amountNeeded WHERE MaterialID = @materialID;",
               new { amountNeeded = material.AmountNeeded, materialID = material.MaterialID });
        }

        public List<char> Letters(IEnumerable<Material> material)
        {
            var letters = new List<char>();
            foreach (var item in material)
            {
                if (!letters.Contains(item.Name[0]))
                {
                    letters.Add(item.Name[0]);
                }
            }
            letters.Sort();
            return letters;
        }
    }
}
