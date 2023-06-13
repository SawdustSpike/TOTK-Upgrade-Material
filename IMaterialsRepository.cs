using TOTK.Models;

namespace TOTK
{
    public interface IMaterialRepository
    {
        public Material GetMaterial(int id);
        public void DeleteMaterial(Material material);
        public void UpdateMaterial(Material material);
        public void InsertMaterial(Material material);
        public IEnumerable<Material> GetAllMaterials();
        public List<char> Letters(IEnumerable<Material> material);
        public IEnumerable<Material> GetAllMaterialsByFirstLetter(char id);
    }
}
