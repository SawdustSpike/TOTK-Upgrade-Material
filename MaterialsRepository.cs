using Dapper;
using System.Data;
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

        public Material GetMaterial(int id)
        {
            return _conn.QuerySingle<Material>("SELECT * FROM material WHERE MaterialID = @id;", new { id = id });
        }

        public void InsertMaterial(Material material)
        {
            _conn.Execute("INSERT INTO material (Name, AmountNeeded) VALUES (@name, @amountNeeded);",
               new { name = material.Name, amountNeeded = material.AmountNeeded});
        }

        public void UpdateMaterial(Material material)
        {
            _conn.Execute("UPDATE material SET AmountNeeded = @amountNeeded WHERE MaterialID = @materialID;",
               new { amountNeeded = material.AmountNeeded, materialID = material.MaterialID });
        }
    }
}
