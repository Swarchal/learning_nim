import httpclient

var
    client = newHttpClient()
    url = "http://www.uniprot.org/uniprot/Q58895.fasta"
    output : string

output = client.getContent(url)

echo output
