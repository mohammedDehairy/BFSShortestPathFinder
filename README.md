BSTShortesPathFinder
====================

shortest path finder in an unweighted graphs


1.Import the Classes folder to your project

2.import the header "ShortestPathFinder.h"

3.Construct you graph as an NSDictionary with each key is an NSNumber index for each "unblocked" node in your graph , and the values are NSArray of NSNumber indexes of the children of each node .

4.Calls the Class method of ShortestPathFinder

```obj

+(NSArray*)shortesPathWithGraph:(NSDictionary *)graph start:(NSInteger)start end:(NSInteger)end;

```
passing your NSDictionay graph , start node index ,and end node index

5.The the return NSArray is an array of NSNumber's representing the shortes path from the start node to end node.

IMPORTANT : if some of your nodes are "Blocked" then simply don't add them to your NSDictionary grah neither as a parent nor as a child.
