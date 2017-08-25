

def application(env, start_response):
    response = "200 OK"
    content = "Content-type", "text/plain"

    result = ""
    for arg in env['QUERY_STRING'].split("&"):
        result += arg + "\n"


    start_response(response, [content])
    return [ result.strip().encode() ]
