#Autor: Sergio Alejandro Hernandez Moreno
#19/01/2024
#----------------------------------------------------
#!/bin/bash
createuser --pwprompt synapse
createdb --encoding=UTF8 --locale=C --template=template0 --owner=synapse synapsedb
exit