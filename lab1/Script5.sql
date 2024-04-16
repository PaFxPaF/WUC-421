select d."DocumentNode" 
	  ,d."Title" 
	  ,d."FileExtension" 
from "Production"."Document" d 
where d."FileExtension" like '%.doc%'