import { queryParams, type RouteQueryOptions, type RouteDefinition } from './../../../../wayfinder'
/**
* @see \App\Http\Controllers\General::home
 * @see app/Http/Controllers/General.php:10
 * @route '/'
 */
export const home = (options?: RouteQueryOptions): RouteDefinition<'get'> => ({
    url: home.url(options),
    method: 'get',
})

home.definition = {
    methods: ["get","head"],
    url: '/',
} satisfies RouteDefinition<["get","head"]>

/**
* @see \App\Http\Controllers\General::home
 * @see app/Http/Controllers/General.php:10
 * @route '/'
 */
home.url = (options?: RouteQueryOptions) => {
    return home.definition.url + queryParams(options)
}

/**
* @see \App\Http\Controllers\General::home
 * @see app/Http/Controllers/General.php:10
 * @route '/'
 */
home.get = (options?: RouteQueryOptions): RouteDefinition<'get'> => ({
    url: home.url(options),
    method: 'get',
})
/**
* @see \App\Http\Controllers\General::home
 * @see app/Http/Controllers/General.php:10
 * @route '/'
 */
home.head = (options?: RouteQueryOptions): RouteDefinition<'head'> => ({
    url: home.url(options),
    method: 'head',
})

/**
* @see \App\Http\Controllers\General::other
 * @see app/Http/Controllers/General.php:15
 * @route '/other'
 */
export const other = (options?: RouteQueryOptions): RouteDefinition<'get'> => ({
    url: other.url(options),
    method: 'get',
})

other.definition = {
    methods: ["get","head"],
    url: '/other',
} satisfies RouteDefinition<["get","head"]>

/**
* @see \App\Http\Controllers\General::other
 * @see app/Http/Controllers/General.php:15
 * @route '/other'
 */
other.url = (options?: RouteQueryOptions) => {
    return other.definition.url + queryParams(options)
}

/**
* @see \App\Http\Controllers\General::other
 * @see app/Http/Controllers/General.php:15
 * @route '/other'
 */
other.get = (options?: RouteQueryOptions): RouteDefinition<'get'> => ({
    url: other.url(options),
    method: 'get',
})
/**
* @see \App\Http\Controllers\General::other
 * @see app/Http/Controllers/General.php:15
 * @route '/other'
 */
other.head = (options?: RouteQueryOptions): RouteDefinition<'head'> => ({
    url: other.url(options),
    method: 'head',
})
const General = { home, other }

export default General