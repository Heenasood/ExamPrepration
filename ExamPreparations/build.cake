///////////////////////////////////////////////////////////////////////////////
// ARGUMENTS
///////////////////////////////////////////////////////////////////////////////
using System.Linq;
string[] solutions = new string[]
 {
    "PureHtmlClient"
 };

var solution = "C:/source/ExamPrep/ExamPrepration/ExamPreparations/ExamPreparations.sln";
var target = Argument("target", "Default");
var configuration = Argument("configuration", "Release");
var solutionFiles = solutions.Select(solution => File("source/"+solution+"/"+solution+".sln"));


///////////////////////////////////////////////////////////////////////////////
// SETUP / TEARDOWN
///////////////////////////////////////////////////////////////////////////////

Setup(ctx =>
{
   // Executed BEFORE the first task.
   Information("Running tasks...");
});

Teardown(ctx =>
{
   // Executed AFTER the last task.
   Information("Finished running tasks.");
});

///////////////////////////////////////////////////////////////////////////////
// TASKS
///////////////////////////////////////////////////////////////////////////////

Task("Default")
.Does(() => {
   Information("Hello Cake!");
   MSBuild("C:/source/ExamPrep/ExamPrepration/ExamPreparations/ExamPreparations/ExamPreparations.csproj");
});

Task("Test")
.Does(() => {
   Information("Hello Test execution started!");
   MSBuild("C:/source/ExamPrep/ExamPrepration/ExamPreparations/ExamPreparations/ExamPreparations.csproj");
});

RunTarget(target);