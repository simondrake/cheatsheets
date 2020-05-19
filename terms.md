# Terms

Common terms that are often used in the industry, that I always have to look up. 
 
| Term | Description | Example |
| - | - | - |
| Atomicity | An operation that appears to be instantaneous from the perspective of all other threads. You don't need to worry about a partly complete operation when the guarantee applies. | In the context of a database system, one can have 'atomic commits', meaning that you can push a changeset of updates to a relational database and those changes will either all be submitted, or none of them will. <br><br> In this way, data does not become corrupt, and consequential of locks and/or queues, the next operation will be a different write or a read, but only after the fact. In the context of variables and threading this is much the same, applied to memory. |
| Idempotent operations | An operation that has no additional effect if it is called more than once with the same input parameters. An operation that can be repeated an arbitrary number of times and the result will be the same as if it had been done only once. | Idempotence is talked about a lot in the context of "RESTful" web services. <br><br> If you GET a representation of a REST resource (eg, GET a jpeg image from Flickr), and the operation fails, you can just repeat the GET again and again until the operation succeeds. To the web service, it doesn't matter how many times the image is gotten. <br><br> Likewise, if you use a RESTful web service to update your Twitter account information, you can PUT the new information as many times as it takes in order to get confirmation from the web service. PUT-ing it a thousand times is the same as PUT-ing it once. <br><br> Similarly DELETE-ing a REST resource a thousand times is the same as deleting it once. Idempotence thus makes it a lot easier to construct a web service that's resilient to communication errors. |
| Orthogonality | Operations change just one thing without affecting others ("Changing A does not change B"). | An example of an orthogonal system would be a radio, where changing the station does not change the volume and vice-versa.<br><br>A non-orthogonal system would be like a helicopter where changing the speed can change the direction.<br><br>In programming languages this means that when you execute an instruction, nothing but that instruction happens (very important for debugging).|