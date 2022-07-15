using OrdenacaoAPI.Models;

namespace OrdenacaoTest;

[TestClass]
public class UnitTest1
{
    [TestMethod]
    public void ChangeTest()
    {
        int[] expected = new int[] {4,6};
        int[] result;

        NumbersOrdenrs numbers = new NumbersOrdenrs();
        result = numbers.Change(6,4);

        CollectionAssert.AreEqual(expected,result); 
    }

}   

