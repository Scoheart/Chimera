# XMLHttpRequest

## XMLHttpRequest.prototype

### properties

- UNSENT: Number = 0
- OPENED: Number = 1
- HEADERS_RECEIVED: Number = 2
- LOADING: Number = 3
- DONE: Number = 4



- timeout: Number = 0

- readystate: Number = 0
- status: Number = 0
- statusText: String = ""
- response: any = ""
- responseText: String = ""
- responseType: XMLHttpRequestType = ""
- responseURL: String = ""
- responseXML: Document | null



- open: (method: String, url: String, asynchronous: Boolean) : void
- send: (data?: Object | null) : void
- abort: () : void
- getAllResponseHeaders: (): void
- getResponseHeader: (headerName: String) : void



- onreadystatechange

##XMLHttpRequest.prototype._ _ proto _ _

> XMLHttpRequestEvenTarget

### properties

- onabort
- onloadstart
- onprogress
- onload
- onerror
- ontimeout
- onloadend



## Life Cycle

```javascript
let request = new XMLHttpRequest()
// UNSENT = 0   open() not called

request.open(method, url, true)
// OPENED = 1   open() has been called，send() not called
/**
 *  1. open() is calling    
 *  2. onreadystatechange: UNSENT->OPENED(0->1)
 *  3. open() is called   
 *  4. onloadstart
 */

request.send()
/**
 *  HEADERS_RECEIVED 2     send() has been called, headers and status are avaliable
 *  LOADING 3           Downloading data, response has partial data
 *  DONE 4          request is complete, maybe successful or failed    
 */

/**
 * A. Success
 *  1. onreadystatechange: 1->2
 *  2. onreadystatechange: 2->3
 *  3. onprogress
 *      onreadystatechange: 3->3 && onprogress
 *  4. onreadystatechange: 3->4
 *  5. onload
 *  6. onloadend
 * 
 * B. Error
 *  1. onreadystatechange: 1->4
 *  2. onerror
 *  3. onloadend
 * 
 * C. Timeout
 *   a.
 *     1. onreadystatechange: 1->4
 *     2. ontimeout
 *     3. onloadend
 * 
 *   b.
 *     1. onreadystatechange: 1->2->3
 *        [onprogress]
 *     2. onreadystatechange: 3->4
 *        ontimeout
 *     3. onloadend
 */


```

