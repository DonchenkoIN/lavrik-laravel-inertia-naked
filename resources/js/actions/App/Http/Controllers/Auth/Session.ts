import { queryParams, type RouteQueryOptions, type RouteDefinition } from './../../../../../wayfinder'
/**
* @see \App\Http\Controllers\Auth\Session::create
 * @see app/Http/Controllers/Auth/Session.php:15
 * @route '/sessions/create'
 */
export const create = (options?: RouteQueryOptions): RouteDefinition<'get'> => ({
    url: create.url(options),
    method: 'get',
})

create.definition = {
    methods: ["get","head"],
    url: '/sessions/create',
} satisfies RouteDefinition<["get","head"]>

/**
* @see \App\Http\Controllers\Auth\Session::create
 * @see app/Http/Controllers/Auth/Session.php:15
 * @route '/sessions/create'
 */
create.url = (options?: RouteQueryOptions) => {
    return create.definition.url + queryParams(options)
}

/**
* @see \App\Http\Controllers\Auth\Session::create
 * @see app/Http/Controllers/Auth/Session.php:15
 * @route '/sessions/create'
 */
create.get = (options?: RouteQueryOptions): RouteDefinition<'get'> => ({
    url: create.url(options),
    method: 'get',
})
/**
* @see \App\Http\Controllers\Auth\Session::create
 * @see app/Http/Controllers/Auth/Session.php:15
 * @route '/sessions/create'
 */
create.head = (options?: RouteQueryOptions): RouteDefinition<'head'> => ({
    url: create.url(options),
    method: 'head',
})

/**
* @see \App\Http\Controllers\Auth\Session::store
 * @see app/Http/Controllers/Auth/Session.php:20
 * @route '/sessions'
 */
export const store = (options?: RouteQueryOptions): RouteDefinition<'post'> => ({
    url: store.url(options),
    method: 'post',
})

store.definition = {
    methods: ["post"],
    url: '/sessions',
} satisfies RouteDefinition<["post"]>

/**
* @see \App\Http\Controllers\Auth\Session::store
 * @see app/Http/Controllers/Auth/Session.php:20
 * @route '/sessions'
 */
store.url = (options?: RouteQueryOptions) => {
    return store.definition.url + queryParams(options)
}

/**
* @see \App\Http\Controllers\Auth\Session::store
 * @see app/Http/Controllers/Auth/Session.php:20
 * @route '/sessions'
 */
store.post = (options?: RouteQueryOptions): RouteDefinition<'post'> => ({
    url: store.url(options),
    method: 'post',
})

/**
* @see \App\Http\Controllers\Auth\Session::logout
 * @see app/Http/Controllers/Auth/Session.php:32
 * @route '/office/sessions'
 */
export const logout = (options?: RouteQueryOptions): RouteDefinition<'delete'> => ({
    url: logout.url(options),
    method: 'delete',
})

logout.definition = {
    methods: ["delete"],
    url: '/office/sessions',
} satisfies RouteDefinition<["delete"]>

/**
* @see \App\Http\Controllers\Auth\Session::logout
 * @see app/Http/Controllers/Auth/Session.php:32
 * @route '/office/sessions'
 */
logout.url = (options?: RouteQueryOptions) => {
    return logout.definition.url + queryParams(options)
}

/**
* @see \App\Http\Controllers\Auth\Session::logout
 * @see app/Http/Controllers/Auth/Session.php:32
 * @route '/office/sessions'
 */
logout.delete = (options?: RouteQueryOptions): RouteDefinition<'delete'> => ({
    url: logout.url(options),
    method: 'delete',
})
const Session = { create, store, logout }

export default Session