PGDMP     *    &            
    t            postgis    9.4.9    9.4.9 �   �
           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                       false            �
           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                       false            �
           1262    178580    postgis    DATABASE     y   CREATE DATABASE postgis WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'pt_BR.UTF-8' LC_CTYPE = 'pt_BR.UTF-8';
    DROP DATABASE postgis;
             postgres    false                        2615    2200    public    SCHEMA        CREATE SCHEMA public;
    DROP SCHEMA public;
             postgres    false            �
           0    0    SCHEMA public    COMMENT     6   COMMENT ON SCHEMA public IS 'standard public schema';
                  postgres    false    6            �
           0    0    public    ACL     �   REVOKE ALL ON SCHEMA public FROM PUBLIC;
REVOKE ALL ON SCHEMA public FROM postgres;
GRANT ALL ON SCHEMA public TO postgres;
GRANT ALL ON SCHEMA public TO PUBLIC;
                  postgres    false    6                        3079    11861    plpgsql 	   EXTENSION     ?   CREATE EXTENSION IF NOT EXISTS plpgsql WITH SCHEMA pg_catalog;
    DROP EXTENSION plpgsql;
                  false            �
           0    0    EXTENSION plpgsql    COMMENT     @   COMMENT ON EXTENSION plpgsql IS 'PL/pgSQL procedural language';
                       false    1            �           0    0    box2d 
   SHELL TYPE        CREATE TYPE box2d;
            public       postgres    false            �            1255    177805    box2d_in(cstring)    FUNCTION     z   CREATE FUNCTION box2d_in(cstring) RETURNS box2d
    LANGUAGE c IMMUTABLE STRICT
    AS '$libdir/postgis-2.3', 'BOX2D_in';
 (   DROP FUNCTION public.box2d_in(cstring);
       public       postgres    false    6    1174            �            1255    177806    box2d_out(box2d)    FUNCTION     |   CREATE FUNCTION box2d_out(box2d) RETURNS cstring
    LANGUAGE c IMMUTABLE STRICT
    AS '$libdir/postgis-2.3', 'BOX2D_out';
 '   DROP FUNCTION public.box2d_out(box2d);
       public       postgres    false    6    1174            �           1247    177804    box2d    TYPE     �   CREATE TYPE box2d (
    INTERNALLENGTH = 65,
    INPUT = box2d_in,
    OUTPUT = box2d_out,
    ALIGNMENT = int4,
    STORAGE = plain
);
     DROP TYPE public.box2d CASCADE;
       public       postgres    false    6    219    218            �           0    0    box2df 
   SHELL TYPE        CREATE TYPE box2df;
            public       postgres    false            �            1255    177809    box2df_in(cstring)    FUNCTION     }   CREATE FUNCTION box2df_in(cstring) RETURNS box2df
    LANGUAGE c IMMUTABLE STRICT
    AS '$libdir/postgis-2.3', 'box2df_in';
 )   DROP FUNCTION public.box2df_in(cstring);
       public       postgres    false    6    1178            �            1255    177810    box2df_out(box2df)    FUNCTION        CREATE FUNCTION box2df_out(box2df) RETURNS cstring
    LANGUAGE c IMMUTABLE STRICT
    AS '$libdir/postgis-2.3', 'box2df_out';
 )   DROP FUNCTION public.box2df_out(box2df);
       public       postgres    false    6    1178            �           1247    177808    box2df    TYPE     �   CREATE TYPE box2df (
    INTERNALLENGTH = 16,
    INPUT = box2df_in,
    OUTPUT = box2df_out,
    ALIGNMENT = double,
    STORAGE = plain
);
 !   DROP TYPE public.box2df CASCADE;
       public       postgres    false    220    221    6            �           0    0    box3d 
   SHELL TYPE        CREATE TYPE box3d;
            public       postgres    false            �            1255    177801    box3d_in(cstring)    FUNCTION     z   CREATE FUNCTION box3d_in(cstring) RETURNS box3d
    LANGUAGE c IMMUTABLE STRICT
    AS '$libdir/postgis-2.3', 'BOX3D_in';
 (   DROP FUNCTION public.box3d_in(cstring);
       public       postgres    false    6    1170            �            1255    177802    box3d_out(box3d)    FUNCTION     |   CREATE FUNCTION box3d_out(box3d) RETURNS cstring
    LANGUAGE c IMMUTABLE STRICT
    AS '$libdir/postgis-2.3', 'BOX3D_out';
 '   DROP FUNCTION public.box3d_out(box3d);
       public       postgres    false    6    1170            �           1247    177800    box3d    TYPE     �   CREATE TYPE box3d (
    INTERNALLENGTH = 52,
    INPUT = box3d_in,
    OUTPUT = box3d_out,
    ALIGNMENT = double,
    STORAGE = plain
);
     DROP TYPE public.box3d CASCADE;
       public       postgres    false    6    217    216            �           0    0 	   geography 
   SHELL TYPE        CREATE TYPE geography;
            public       postgres    false            �           1255    178397    geography_analyze(internal)    FUNCTION     �   CREATE FUNCTION geography_analyze(internal) RETURNS boolean
    LANGUAGE c STRICT
    AS '$libdir/postgis-2.3', 'gserialized_analyze_nd';
 2   DROP FUNCTION public.geography_analyze(internal);
       public       postgres    false    6            �           1255    178393 #   geography_in(cstring, oid, integer)    FUNCTION     �   CREATE FUNCTION geography_in(cstring, oid, integer) RETURNS geography
    LANGUAGE c IMMUTABLE STRICT
    AS '$libdir/postgis-2.3', 'geography_in';
 :   DROP FUNCTION public.geography_in(cstring, oid, integer);
       public       postgres    false    6    1200            �           1255    178394    geography_out(geography)    FUNCTION     �   CREATE FUNCTION geography_out(geography) RETURNS cstring
    LANGUAGE c IMMUTABLE STRICT
    AS '$libdir/postgis-2.3', 'geography_out';
 /   DROP FUNCTION public.geography_out(geography);
       public       postgres    false    6    1200            �           1255    178395 &   geography_recv(internal, oid, integer)    FUNCTION     �   CREATE FUNCTION geography_recv(internal, oid, integer) RETURNS geography
    LANGUAGE c IMMUTABLE STRICT
    AS '$libdir/postgis-2.3', 'geography_recv';
 =   DROP FUNCTION public.geography_recv(internal, oid, integer);
       public       postgres    false    6    1200            �           1255    178396    geography_send(geography)    FUNCTION     �   CREATE FUNCTION geography_send(geography) RETURNS bytea
    LANGUAGE c IMMUTABLE STRICT
    AS '$libdir/postgis-2.3', 'geography_send';
 0   DROP FUNCTION public.geography_send(geography);
       public       postgres    false    6    1200            �           1255    178390    geography_typmod_in(cstring[])    FUNCTION     �   CREATE FUNCTION geography_typmod_in(cstring[]) RETURNS integer
    LANGUAGE c IMMUTABLE STRICT
    AS '$libdir/postgis-2.3', 'geography_typmod_in';
 5   DROP FUNCTION public.geography_typmod_in(cstring[]);
       public       postgres    false    6            �           1255    178391    geography_typmod_out(integer)    FUNCTION     �   CREATE FUNCTION geography_typmod_out(integer) RETURNS cstring
    LANGUAGE c IMMUTABLE STRICT
    AS '$libdir/postgis-2.3', 'postgis_typmod_out';
 4   DROP FUNCTION public.geography_typmod_out(integer);
       public       postgres    false    6            �           1247    178392 	   geography    TYPE     V  CREATE TYPE geography (
    INTERNALLENGTH = variable,
    INPUT = geography_in,
    OUTPUT = geography_out,
    RECEIVE = geography_recv,
    SEND = geography_send,
    TYPMOD_IN = geography_typmod_in,
    TYPMOD_OUT = geography_typmod_out,
    ANALYZE = geography_analyze,
    DELIMITER = ':',
    ALIGNMENT = double,
    STORAGE = main
);
 $   DROP TYPE public.geography CASCADE;
       public       postgres    false    693    690    691    692    687    688    689    6            �           0    0    geometry 
   SHELL TYPE        CREATE TYPE geometry;
            public       postgres    false            �            1255    177778    geometry_analyze(internal)    FUNCTION     �   CREATE FUNCTION geometry_analyze(internal) RETURNS boolean
    LANGUAGE c STRICT
    AS '$libdir/postgis-2.3', 'gserialized_analyze_nd';
 1   DROP FUNCTION public.geometry_analyze(internal);
       public       postgres    false    6            �            1255    177774    geometry_in(cstring)    FUNCTION     �   CREATE FUNCTION geometry_in(cstring) RETURNS geometry
    LANGUAGE c IMMUTABLE STRICT
    AS '$libdir/postgis-2.3', 'LWGEOM_in';
 +   DROP FUNCTION public.geometry_in(cstring);
       public       postgres    false    6    1166            �            1255    177775    geometry_out(geometry)    FUNCTION     �   CREATE FUNCTION geometry_out(geometry) RETURNS cstring
    LANGUAGE c IMMUTABLE STRICT
    AS '$libdir/postgis-2.3', 'LWGEOM_out';
 -   DROP FUNCTION public.geometry_out(geometry);
       public       postgres    false    6    1166            �            1255    177779    geometry_recv(internal)    FUNCTION     �   CREATE FUNCTION geometry_recv(internal) RETURNS geometry
    LANGUAGE c IMMUTABLE STRICT
    AS '$libdir/postgis-2.3', 'LWGEOM_recv';
 .   DROP FUNCTION public.geometry_recv(internal);
       public       postgres    false    6    1166            �            1255    177780    geometry_send(geometry)    FUNCTION     �   CREATE FUNCTION geometry_send(geometry) RETURNS bytea
    LANGUAGE c IMMUTABLE STRICT
    AS '$libdir/postgis-2.3', 'LWGEOM_send';
 .   DROP FUNCTION public.geometry_send(geometry);
       public       postgres    false    6    1166            �            1255    177776    geometry_typmod_in(cstring[])    FUNCTION     �   CREATE FUNCTION geometry_typmod_in(cstring[]) RETURNS integer
    LANGUAGE c IMMUTABLE STRICT
    AS '$libdir/postgis-2.3', 'geometry_typmod_in';
 4   DROP FUNCTION public.geometry_typmod_in(cstring[]);
       public       postgres    false    6            �            1255    177777    geometry_typmod_out(integer)    FUNCTION     �   CREATE FUNCTION geometry_typmod_out(integer) RETURNS cstring
    LANGUAGE c IMMUTABLE STRICT
    AS '$libdir/postgis-2.3', 'postgis_typmod_out';
 3   DROP FUNCTION public.geometry_typmod_out(integer);
       public       postgres    false    6            �           1247    177773    geometry    TYPE     N  CREATE TYPE geometry (
    INTERNALLENGTH = variable,
    INPUT = geometry_in,
    OUTPUT = geometry_out,
    RECEIVE = geometry_recv,
    SEND = geometry_send,
    TYPMOD_IN = geometry_typmod_in,
    TYPMOD_OUT = geometry_typmod_out,
    ANALYZE = geometry_analyze,
    DELIMITER = ':',
    ALIGNMENT = double,
    STORAGE = main
);
 #   DROP TYPE public.geometry CASCADE;
       public       postgres    false    201    202    204    198    200    6    203    199            �           1247    178058    geometry_dump    TYPE     B   CREATE TYPE geometry_dump AS (
	path integer[],
	geom geometry
);
     DROP TYPE public.geometry_dump;
       public       postgres    false    6    1165            �           0    0    gidx 
   SHELL TYPE        CREATE TYPE gidx;
            public       postgres    false            �            1255    177813    gidx_in(cstring)    FUNCTION     w   CREATE FUNCTION gidx_in(cstring) RETURNS gidx
    LANGUAGE c IMMUTABLE STRICT
    AS '$libdir/postgis-2.3', 'gidx_in';
 '   DROP FUNCTION public.gidx_in(cstring);
       public       postgres    false    6    1182            �            1255    177814    gidx_out(gidx)    FUNCTION     y   CREATE FUNCTION gidx_out(gidx) RETURNS cstring
    LANGUAGE c IMMUTABLE STRICT
    AS '$libdir/postgis-2.3', 'gidx_out';
 %   DROP FUNCTION public.gidx_out(gidx);
       public       postgres    false    6    1182            �           1247    177812    gidx    TYPE     �   CREATE TYPE gidx (
    INTERNALLENGTH = variable,
    INPUT = gidx_in,
    OUTPUT = gidx_out,
    ALIGNMENT = double,
    STORAGE = plain
);
    DROP TYPE public.gidx CASCADE;
       public       postgres    false    6    223    222            �           0    0    pgis_abs 
   SHELL TYPE        CREATE TYPE pgis_abs;
            public       postgres    false                       1255    178212    pgis_abs_in(cstring)    FUNCTION     �   CREATE FUNCTION pgis_abs_in(cstring) RETURNS pgis_abs
    LANGUAGE c IMMUTABLE STRICT
    AS '$libdir/postgis-2.3', 'pgis_abs_in';
 +   DROP FUNCTION public.pgis_abs_in(cstring);
       public       postgres    false    6    1196                       1255    178213    pgis_abs_out(pgis_abs)    FUNCTION     �   CREATE FUNCTION pgis_abs_out(pgis_abs) RETURNS cstring
    LANGUAGE c IMMUTABLE STRICT
    AS '$libdir/postgis-2.3', 'pgis_abs_out';
 -   DROP FUNCTION public.pgis_abs_out(pgis_abs);
       public       postgres    false    6    1196            �           1247    178211    pgis_abs    TYPE     �   CREATE TYPE pgis_abs (
    INTERNALLENGTH = 16,
    INPUT = pgis_abs_in,
    OUTPUT = pgis_abs_out,
    ALIGNMENT = double,
    STORAGE = plain
);
 #   DROP TYPE public.pgis_abs CASCADE;
       public       postgres    false    519    518    6            �           0    0    spheroid 
   SHELL TYPE        CREATE TYPE spheroid;
            public       postgres    false            �            1255    177770    spheroid_in(cstring)    FUNCTION     �   CREATE FUNCTION spheroid_in(cstring) RETURNS spheroid
    LANGUAGE c IMMUTABLE STRICT
    AS '$libdir/postgis-2.3', 'ellipsoid_in';
 +   DROP FUNCTION public.spheroid_in(cstring);
       public       postgres    false    6    1162            �            1255    177771    spheroid_out(spheroid)    FUNCTION     �   CREATE FUNCTION spheroid_out(spheroid) RETURNS cstring
    LANGUAGE c IMMUTABLE STRICT
    AS '$libdir/postgis-2.3', 'ellipsoid_out';
 -   DROP FUNCTION public.spheroid_out(spheroid);
       public       postgres    false    6    1162            �           1247    177769    spheroid    TYPE     �   CREATE TYPE spheroid (
    INTERNALLENGTH = 65,
    INPUT = spheroid_in,
    OUTPUT = spheroid_out,
    ALIGNMENT = double,
    STORAGE = plain
);
 #   DROP TYPE public.spheroid CASCADE;
       public       postgres    false    6    196    197            �           1247    178172    valid_detail    TYPE     _   CREATE TYPE valid_detail AS (
	valid boolean,
	reason character varying,
	location geometry
);
    DROP TYPE public.valid_detail;
       public       postgres    false    6    1165            �            1255    177768 $   _postgis_deprecate(text, text, text)    FUNCTION       CREATE FUNCTION _postgis_deprecate(oldname text, newname text, version text) RETURNS void
    LANGUAGE plpgsql IMMUTABLE STRICT
    AS $$
DECLARE
  curver_text text;
BEGIN
  --
  -- Raises a NOTICE if it was deprecated in this version,
  -- a WARNING if in a previous version (only up to minor version checked)
  --
    curver_text := '2.3.0';
    IF split_part(curver_text,'.',1)::int > split_part(version,'.',1)::int OR
       ( split_part(curver_text,'.',1) = split_part(version,'.',1) AND
         split_part(curver_text,'.',2) != split_part(version,'.',2) )
    THEN
      RAISE WARNING '% signature was deprecated in %. Please use %', oldname, version, newname;
    ELSE
      RAISE DEBUG '% signature was deprecated in %. Please use %', oldname, version, newname;
    END IF;
END;
$$;
 S   DROP FUNCTION public._postgis_deprecate(oldname text, newname text, version text);
       public       postgres    false    1    6            �            1255    177844 ?   _postgis_join_selectivity(regclass, text, regclass, text, text)    FUNCTION     �   CREATE FUNCTION _postgis_join_selectivity(regclass, text, regclass, text, text DEFAULT '2'::text) RETURNS double precision
    LANGUAGE c STRICT
    AS '$libdir/postgis-2.3', '_postgis_gserialized_joinsel';
 V   DROP FUNCTION public._postgis_join_selectivity(regclass, text, regclass, text, text);
       public       postgres    false    6            �            1255    177843 4   _postgis_selectivity(regclass, text, geometry, text)    FUNCTION     �   CREATE FUNCTION _postgis_selectivity(tbl regclass, att_name text, geom geometry, mode text DEFAULT '2'::text) RETURNS double precision
    LANGUAGE c STRICT
    AS '$libdir/postgis-2.3', '_postgis_gserialized_sel';
 b   DROP FUNCTION public._postgis_selectivity(tbl regclass, att_name text, geom geometry, mode text);
       public       postgres    false    6    1165            �            1255    177845 $   _postgis_stats(regclass, text, text)    FUNCTION     �   CREATE FUNCTION _postgis_stats(tbl regclass, att_name text, text DEFAULT '2'::text) RETURNS text
    LANGUAGE c STRICT
    AS '$libdir/postgis-2.3', '_postgis_gserialized_stats';
 H   DROP FUNCTION public._postgis_stats(tbl regclass, att_name text, text);
       public       postgres    false    6                        1255    178551 8   _st_3ddfullywithin(geometry, geometry, double precision)    FUNCTION     �   CREATE FUNCTION _st_3ddfullywithin(geom1 geometry, geom2 geometry, double precision) RETURNS boolean
    LANGUAGE c IMMUTABLE STRICT COST 100
    AS '$libdir/postgis-2.3', 'LWGEOM_dfullywithin3d';
 [   DROP FUNCTION public._st_3ddfullywithin(geom1 geometry, geom2 geometry, double precision);
       public       postgres    false    1165    1165    6                       1255    178549 3   _st_3ddwithin(geometry, geometry, double precision)    FUNCTION     �   CREATE FUNCTION _st_3ddwithin(geom1 geometry, geom2 geometry, double precision) RETURNS boolean
    LANGUAGE c IMMUTABLE STRICT COST 100
    AS '$libdir/postgis-2.3', 'LWGEOM_dwithin3d';
 V   DROP FUNCTION public._st_3ddwithin(geom1 geometry, geom2 geometry, double precision);
       public       postgres    false    6    1165    1165            "           1255    178553 $   _st_3dintersects(geometry, geometry)    FUNCTION     �   CREATE FUNCTION _st_3dintersects(geom1 geometry, geom2 geometry) RETURNS boolean
    LANGUAGE c IMMUTABLE STRICT COST 100
    AS '$libdir/postgis-2.3', 'intersects3d';
 G   DROP FUNCTION public._st_3dintersects(geom1 geometry, geom2 geometry);
       public       postgres    false    1165    1165    6            �           1255    178475 3   _st_asgeojson(integer, geography, integer, integer)    FUNCTION     �   CREATE FUNCTION _st_asgeojson(integer, geography, integer, integer) RETURNS text
    LANGUAGE c IMMUTABLE STRICT
    AS '$libdir/postgis-2.3', 'geography_as_geojson';
 J   DROP FUNCTION public._st_asgeojson(integer, geography, integer, integer);
       public       postgres    false    6    1199            I           1255    178288 2   _st_asgeojson(integer, geometry, integer, integer)    FUNCTION     �   CREATE FUNCTION _st_asgeojson(integer, geometry, integer, integer) RETURNS text
    LANGUAGE sql IMMUTABLE STRICT
    AS $_$ SELECT ST_AsGeoJson($2::geometry, $3::int4, $4::int4); $_$;
 I   DROP FUNCTION public._st_asgeojson(integer, geometry, integer, integer);
       public       postgres    false    6    1165            �           1255    178467 ;   _st_asgml(integer, geography, integer, integer, text, text)    FUNCTION     �   CREATE FUNCTION _st_asgml(integer, geography, integer, integer, text, text) RETURNS text
    LANGUAGE c IMMUTABLE
    AS '$libdir/postgis-2.3', 'geography_as_gml';
 R   DROP FUNCTION public._st_asgml(integer, geography, integer, integer, text, text);
       public       postgres    false    6    1199            A           1255    178281 :   _st_asgml(integer, geometry, integer, integer, text, text)    FUNCTION     �   CREATE FUNCTION _st_asgml(integer, geometry, integer, integer, text, text) RETURNS text
    LANGUAGE c IMMUTABLE COST 2500
    AS '$libdir/postgis-2.3', 'LWGEOM_asGML';
 Q   DROP FUNCTION public._st_asgml(integer, geometry, integer, integer, text, text);
       public       postgres    false    6    1165            �           1255    178471 ,   _st_askml(integer, geography, integer, text)    FUNCTION     �   CREATE FUNCTION _st_askml(integer, geography, integer, text) RETURNS text
    LANGUAGE c IMMUTABLE
    AS '$libdir/postgis-2.3', 'geography_as_kml';
 C   DROP FUNCTION public._st_askml(integer, geography, integer, text);
       public       postgres    false    6    1199            D           1255    178284 +   _st_askml(integer, geometry, integer, text)    FUNCTION     �   CREATE FUNCTION _st_askml(integer, geometry, integer, text) RETURNS text
    LANGUAGE c IMMUTABLE COST 5000
    AS '$libdir/postgis-2.3', 'LWGEOM_asKML';
 B   DROP FUNCTION public._st_askml(integer, geometry, integer, text);
       public       postgres    false    6    1165            4           1255    178572 4   _st_asx3d(integer, geometry, integer, integer, text)    FUNCTION     �   CREATE FUNCTION _st_asx3d(integer, geometry, integer, integer, text) RETURNS text
    LANGUAGE c IMMUTABLE
    AS '$libdir/postgis-2.3', 'LWGEOM_asX3D';
 K   DROP FUNCTION public._st_asx3d(integer, geometry, integer, integer, text);
       public       postgres    false    1165    6                       1255    178512    _st_bestsrid(geography)    FUNCTION     �   CREATE FUNCTION _st_bestsrid(geography) RETURNS integer
    LANGUAGE sql IMMUTABLE STRICT
    AS $_$SELECT _ST_BestSRID($1,$1)$_$;
 .   DROP FUNCTION public._st_bestsrid(geography);
       public       postgres    false    1199    6                       1255    178511 "   _st_bestsrid(geography, geography)    FUNCTION     �   CREATE FUNCTION _st_bestsrid(geography, geography) RETURNS integer
    LANGUAGE c IMMUTABLE STRICT
    AS '$libdir/postgis-2.3', 'geography_bestsrid';
 9   DROP FUNCTION public._st_bestsrid(geography, geography);
       public       postgres    false    1199    1199    6            �           1255    178158 /   _st_buffer(geometry, double precision, cstring)    FUNCTION     �   CREATE FUNCTION _st_buffer(geometry, double precision, cstring) RETURNS geometry
    LANGUAGE c IMMUTABLE STRICT COST 5000
    AS '$libdir/postgis-2.3', 'buffer';
 F   DROP FUNCTION public._st_buffer(geometry, double precision, cstring);
       public       postgres    false    6    1165    1165            2           1255    178569    _st_concavehull(geometry)    FUNCTION     �  CREATE FUNCTION _st_concavehull(param_inputgeom geometry) RETURNS geometry
    LANGUAGE plpgsql IMMUTABLE STRICT
    AS $$
	DECLARE
	vexhull GEOMETRY;
	var_resultgeom geometry;
	var_inputgeom geometry;
	vexring GEOMETRY;
	cavering GEOMETRY;
	cavept geometry[];
	seglength double precision;
	var_tempgeom geometry;
	scale_factor integer := 1;
	i integer;

	BEGIN

		-- First compute the ConvexHull of the geometry
		vexhull := ST_ConvexHull(param_inputgeom);
		var_inputgeom := param_inputgeom;
		--A point really has no concave hull
		IF ST_GeometryType(vexhull) = 'ST_Point' OR ST_GeometryType(vexHull) = 'ST_LineString' THEN
			RETURN vexhull;
		END IF;

		-- convert the hull perimeter to a linestring so we can manipulate individual points
		vexring := CASE WHEN ST_GeometryType(vexhull) = 'ST_LineString' THEN vexhull ELSE ST_ExteriorRing(vexhull) END;
		IF abs(ST_X(ST_PointN(vexring,1))) < 1 THEN --scale the geometry to prevent stupid precision errors - not sure it works so make low for now
			scale_factor := 100;
			vexring := ST_Scale(vexring, scale_factor,scale_factor);
			var_inputgeom := ST_Scale(var_inputgeom, scale_factor, scale_factor);
			--RAISE NOTICE 'Scaling';
		END IF;
		seglength := ST_Length(vexring)/least(ST_NPoints(vexring)*2,1000) ;

		vexring := ST_Segmentize(vexring, seglength);
		-- find the point on the original geom that is closest to each point of the convex hull and make a new linestring out of it.
		cavering := ST_Collect(
			ARRAY(

				SELECT
					ST_ClosestPoint(var_inputgeom, pt ) As the_geom
					FROM (
						SELECT  ST_PointN(vexring, n ) As pt, n
							FROM
							generate_series(1, ST_NPoints(vexring) ) As n
						) As pt

				)
			)
		;


		var_resultgeom := ST_MakeLine(geom)
			FROM ST_Dump(cavering) As foo;

		IF ST_IsSimple(var_resultgeom) THEN
			var_resultgeom := ST_MakePolygon(var_resultgeom);
			--RAISE NOTICE 'is Simple: %', var_resultgeom;
		ELSE 
			--RAISE NOTICE 'is not Simple: %', var_resultgeom;
			var_resultgeom := ST_ConvexHull(var_resultgeom);
		END IF;

		IF scale_factor > 1 THEN -- scale the result back
			var_resultgeom := ST_Scale(var_resultgeom, 1/scale_factor, 1/scale_factor);
		END IF;
		RETURN var_resultgeom;

	END;
$$;
 @   DROP FUNCTION public._st_concavehull(param_inputgeom geometry);
       public       postgres    false    1165    1165    1    6                       1255    178246     _st_contains(geometry, geometry)    FUNCTION     �   CREATE FUNCTION _st_contains(geom1 geometry, geom2 geometry) RETURNS boolean
    LANGUAGE c IMMUTABLE STRICT COST 100
    AS '$libdir/postgis-2.3', 'contains';
 C   DROP FUNCTION public._st_contains(geom1 geometry, geom2 geometry);
       public       postgres    false    6    1165    1165            $           1255    178252 (   _st_containsproperly(geometry, geometry)    FUNCTION     �   CREATE FUNCTION _st_containsproperly(geom1 geometry, geom2 geometry) RETURNS boolean
    LANGUAGE c IMMUTABLE STRICT COST 100
    AS '$libdir/postgis-2.3', 'containsproperly';
 K   DROP FUNCTION public._st_containsproperly(geom1 geometry, geom2 geometry);
       public       postgres    false    6    1165    1165                        1255    178248 !   _st_coveredby(geometry, geometry)    FUNCTION     �   CREATE FUNCTION _st_coveredby(geom1 geometry, geom2 geometry) RETURNS boolean
    LANGUAGE c IMMUTABLE STRICT COST 100
    AS '$libdir/postgis-2.3', 'coveredby';
 D   DROP FUNCTION public._st_coveredby(geom1 geometry, geom2 geometry);
       public       postgres    false    6    1165    1165            �           1255    178503     _st_covers(geography, geography)    FUNCTION     �   CREATE FUNCTION _st_covers(geography, geography) RETURNS boolean
    LANGUAGE c IMMUTABLE STRICT COST 100
    AS '$libdir/postgis-2.3', 'geography_covers';
 7   DROP FUNCTION public._st_covers(geography, geography);
       public       postgres    false    1199    1199    6            "           1255    178250    _st_covers(geometry, geometry)    FUNCTION     �   CREATE FUNCTION _st_covers(geom1 geometry, geom2 geometry) RETURNS boolean
    LANGUAGE c IMMUTABLE STRICT COST 100
    AS '$libdir/postgis-2.3', 'covers';
 A   DROP FUNCTION public._st_covers(geom1 geometry, geom2 geometry);
       public       postgres    false    6    1165    1165                       1255    178244    _st_crosses(geometry, geometry)    FUNCTION     �   CREATE FUNCTION _st_crosses(geom1 geometry, geom2 geometry) RETURNS boolean
    LANGUAGE c IMMUTABLE STRICT COST 100
    AS '$libdir/postgis-2.3', 'crosses';
 B   DROP FUNCTION public._st_crosses(geom1 geometry, geom2 geometry);
       public       postgres    false    6    1165    1165            �           1255    178371 6   _st_dfullywithin(geometry, geometry, double precision)    FUNCTION     �   CREATE FUNCTION _st_dfullywithin(geom1 geometry, geom2 geometry, double precision) RETURNS boolean
    LANGUAGE c IMMUTABLE STRICT
    AS '$libdir/postgis-2.3', 'LWGEOM_dfullywithin';
 Y   DROP FUNCTION public._st_dfullywithin(geom1 geometry, geom2 geometry, double precision);
       public       postgres    false    6    1165    1165            �           1255    178479 =   _st_distance(geography, geography, double precision, boolean)    FUNCTION     �   CREATE FUNCTION _st_distance(geography, geography, double precision, boolean) RETURNS double precision
    LANGUAGE c IMMUTABLE STRICT COST 100
    AS '$libdir/postgis-2.3', 'geography_distance';
 T   DROP FUNCTION public._st_distance(geography, geography, double precision, boolean);
       public       postgres    false    1199    1199    6            �           1255    178492 &   _st_distancetree(geography, geography)    FUNCTION     �   CREATE FUNCTION _st_distancetree(geography, geography) RETURNS double precision
    LANGUAGE sql IMMUTABLE STRICT
    AS $_$SELECT _ST_DistanceTree($1, $2, 0.0, true)$_$;
 =   DROP FUNCTION public._st_distancetree(geography, geography);
       public       postgres    false    6    1199    1199            �           1255    178491 A   _st_distancetree(geography, geography, double precision, boolean)    FUNCTION     �   CREATE FUNCTION _st_distancetree(geography, geography, double precision, boolean) RETURNS double precision
    LANGUAGE c IMMUTABLE STRICT COST 100
    AS '$libdir/postgis-2.3', 'geography_distance_tree';
 X   DROP FUNCTION public._st_distancetree(geography, geography, double precision, boolean);
       public       postgres    false    1199    1199    6            �           1255    178490 *   _st_distanceuncached(geography, geography)    FUNCTION     �   CREATE FUNCTION _st_distanceuncached(geography, geography) RETURNS double precision
    LANGUAGE sql IMMUTABLE STRICT
    AS $_$SELECT _ST_DistanceUnCached($1, $2, 0.0, true)$_$;
 A   DROP FUNCTION public._st_distanceuncached(geography, geography);
       public       postgres    false    1199    6    1199            �           1255    178489 3   _st_distanceuncached(geography, geography, boolean)    FUNCTION     �   CREATE FUNCTION _st_distanceuncached(geography, geography, boolean) RETURNS double precision
    LANGUAGE sql IMMUTABLE STRICT
    AS $_$SELECT _ST_DistanceUnCached($1, $2, 0.0, $3)$_$;
 J   DROP FUNCTION public._st_distanceuncached(geography, geography, boolean);
       public       postgres    false    1199    1199    6            �           1255    178488 E   _st_distanceuncached(geography, geography, double precision, boolean)    FUNCTION     �   CREATE FUNCTION _st_distanceuncached(geography, geography, double precision, boolean) RETURNS double precision
    LANGUAGE c IMMUTABLE STRICT COST 100
    AS '$libdir/postgis-2.3', 'geography_distance_uncached';
 \   DROP FUNCTION public._st_distanceuncached(geography, geography, double precision, boolean);
       public       postgres    false    1199    6    1199            �           1255    178061 #   _st_dumppoints(geometry, integer[])    FUNCTION     �  CREATE FUNCTION _st_dumppoints(the_geom geometry, cur_path integer[]) RETURNS SETOF geometry_dump
    LANGUAGE plpgsql
    AS $$
DECLARE
  tmp geometry_dump;
  tmp2 geometry_dump;
  nb_points integer;
  nb_geom integer;
  i integer;
  j integer;
  g geometry;

BEGIN

  -- RAISE DEBUG '%,%', cur_path, ST_GeometryType(the_geom);

  -- Special case collections : iterate and return the DumpPoints of the geometries

  IF (ST_IsCollection(the_geom)) THEN

    i = 1;
    FOR tmp2 IN SELECT (ST_Dump(the_geom)).* LOOP

      FOR tmp IN SELECT * FROM _ST_DumpPoints(tmp2.geom, cur_path || tmp2.path) LOOP
	    RETURN NEXT tmp;
      END LOOP;
      i = i + 1;

    END LOOP;

    RETURN;
  END IF;


  -- Special case (POLYGON) : return the points of the rings of a polygon
  IF (ST_GeometryType(the_geom) = 'ST_Polygon') THEN

    FOR tmp IN SELECT * FROM _ST_DumpPoints(ST_ExteriorRing(the_geom), cur_path || ARRAY[1]) LOOP
      RETURN NEXT tmp;
    END LOOP;

    j := ST_NumInteriorRings(the_geom);
    FOR i IN 1..j LOOP
        FOR tmp IN SELECT * FROM _ST_DumpPoints(ST_InteriorRingN(the_geom, i), cur_path || ARRAY[i+1]) LOOP
          RETURN NEXT tmp;
        END LOOP;
    END LOOP;

    RETURN;
  END IF;

  -- Special case (TRIANGLE) : return the points of the external rings of a TRIANGLE
  IF (ST_GeometryType(the_geom) = 'ST_Triangle') THEN

    FOR tmp IN SELECT * FROM _ST_DumpPoints(ST_ExteriorRing(the_geom), cur_path || ARRAY[1]) LOOP
      RETURN NEXT tmp;
    END LOOP;

    RETURN;
  END IF;


  -- Special case (POINT) : return the point
  IF (ST_GeometryType(the_geom) = 'ST_Point') THEN

    tmp.path = cur_path || ARRAY[1];
    tmp.geom = the_geom;

    RETURN NEXT tmp;
    RETURN;

  END IF;


  -- Use ST_NumPoints rather than ST_NPoints to have a NULL value if the_geom isn't
  -- a LINESTRING, CIRCULARSTRING.
  SELECT ST_NumPoints(the_geom) INTO nb_points;

  -- This should never happen
  IF (nb_points IS NULL) THEN
    RAISE EXCEPTION 'Unexpected error while dumping geometry %', ST_AsText(the_geom);
  END IF;

  FOR i IN 1..nb_points LOOP
    tmp.path = cur_path || ARRAY[i];
    tmp.geom := ST_PointN(the_geom, i);
    RETURN NEXT tmp;
  END LOOP;

END
$$;
 L   DROP FUNCTION public._st_dumppoints(the_geom geometry, cur_path integer[]);
       public       postgres    false    1185    6    1    1165                       1255    178240 1   _st_dwithin(geometry, geometry, double precision)    FUNCTION     �   CREATE FUNCTION _st_dwithin(geom1 geometry, geom2 geometry, double precision) RETURNS boolean
    LANGUAGE c IMMUTABLE STRICT COST 100
    AS '$libdir/postgis-2.3', 'LWGEOM_dwithin';
 T   DROP FUNCTION public._st_dwithin(geom1 geometry, geom2 geometry, double precision);
       public       postgres    false    6    1165    1165            �           1255    178480 <   _st_dwithin(geography, geography, double precision, boolean)    FUNCTION     �   CREATE FUNCTION _st_dwithin(geography, geography, double precision, boolean) RETURNS boolean
    LANGUAGE c IMMUTABLE STRICT COST 100
    AS '$libdir/postgis-2.3', 'geography_dwithin';
 S   DROP FUNCTION public._st_dwithin(geography, geography, double precision, boolean);
       public       postgres    false    6    1199    1199            �           1255    178494 ;   _st_dwithinuncached(geography, geography, double precision)    FUNCTION     �   CREATE FUNCTION _st_dwithinuncached(geography, geography, double precision) RETURNS boolean
    LANGUAGE sql IMMUTABLE
    AS $_$SELECT $1 OPERATOR(&&) _ST_Expand($2,$3) AND $2 OPERATOR(&&) _ST_Expand($1,$3) AND _ST_DWithinUnCached($1, $2, $3, true)$_$;
 R   DROP FUNCTION public._st_dwithinuncached(geography, geography, double precision);
       public       postgres    false    1199    6    1199            �           1255    178493 D   _st_dwithinuncached(geography, geography, double precision, boolean)    FUNCTION     �   CREATE FUNCTION _st_dwithinuncached(geography, geography, double precision, boolean) RETURNS boolean
    LANGUAGE c IMMUTABLE STRICT COST 100
    AS '$libdir/postgis-2.3', 'geography_dwithin_uncached';
 [   DROP FUNCTION public._st_dwithinuncached(geography, geography, double precision, boolean);
       public       postgres    false    1199    1199    6            3           1255    178267    _st_equals(geometry, geometry)    FUNCTION     �   CREATE FUNCTION _st_equals(geom1 geometry, geom2 geometry) RETURNS boolean
    LANGUAGE c IMMUTABLE STRICT COST 100
    AS '$libdir/postgis-2.3', 'ST_Equals';
 A   DROP FUNCTION public._st_equals(geom1 geometry, geom2 geometry);
       public       postgres    false    6    1165    1165            �           1255    178484 '   _st_expand(geography, double precision)    FUNCTION     �   CREATE FUNCTION _st_expand(geography, double precision) RETURNS geography
    LANGUAGE c IMMUTABLE STRICT COST 50
    AS '$libdir/postgis-2.3', 'geography_expand';
 >   DROP FUNCTION public._st_expand(geography, double precision);
       public       postgres    false    6    1199    1199            6           1255    178270    _st_geomfromgml(text, integer)    FUNCTION     �   CREATE FUNCTION _st_geomfromgml(text, integer) RETURNS geometry
    LANGUAGE c IMMUTABLE
    AS '$libdir/postgis-2.3', 'geom_from_gml';
 5   DROP FUNCTION public._st_geomfromgml(text, integer);
       public       postgres    false    6    1165                       1255    178242 "   _st_intersects(geometry, geometry)    FUNCTION     �   CREATE FUNCTION _st_intersects(geom1 geometry, geom2 geometry) RETURNS boolean
    LANGUAGE c IMMUTABLE STRICT COST 100
    AS '$libdir/postgis-2.3', 'intersects';
 E   DROP FUNCTION public._st_intersects(geom1 geometry, geom2 geometry);
       public       postgres    false    6    1165    1165            �           1255    178166 -   _st_linecrossingdirection(geometry, geometry)    FUNCTION     �   CREATE FUNCTION _st_linecrossingdirection(geom1 geometry, geom2 geometry) RETURNS integer
    LANGUAGE c IMMUTABLE STRICT COST 100
    AS '$libdir/postgis-2.3', 'ST_LineCrossingDirection';
 P   DROP FUNCTION public._st_linecrossingdirection(geom1 geometry, geom2 geometry);
       public       postgres    false    6    1165    1165            �           1255    178369 #   _st_longestline(geometry, geometry)    FUNCTION     �   CREATE FUNCTION _st_longestline(geom1 geometry, geom2 geometry) RETURNS geometry
    LANGUAGE c IMMUTABLE STRICT
    AS '$libdir/postgis-2.3', 'LWGEOM_longestline2d';
 F   DROP FUNCTION public._st_longestline(geom1 geometry, geom2 geometry);
       public       postgres    false    6    1165    1165    1165            �           1255    178365 #   _st_maxdistance(geometry, geometry)    FUNCTION     �   CREATE FUNCTION _st_maxdistance(geom1 geometry, geom2 geometry) RETURNS double precision
    LANGUAGE c IMMUTABLE STRICT
    AS '$libdir/postgis-2.3', 'LWGEOM_maxdistance2d_linestring';
 F   DROP FUNCTION public._st_maxdistance(geom1 geometry, geom2 geometry);
       public       postgres    false    6    1165    1165            )           1255    178560 &   _st_orderingequals(geometry, geometry)    FUNCTION     �   CREATE FUNCTION _st_orderingequals(geometrya geometry, geometryb geometry) RETURNS boolean
    LANGUAGE c IMMUTABLE STRICT COST 100
    AS '$libdir/postgis-2.3', 'LWGEOM_same';
 Q   DROP FUNCTION public._st_orderingequals(geometrya geometry, geometryb geometry);
       public       postgres    false    6    1165    1165            &           1255    178254     _st_overlaps(geometry, geometry)    FUNCTION     �   CREATE FUNCTION _st_overlaps(geom1 geometry, geom2 geometry) RETURNS boolean
    LANGUAGE c IMMUTABLE STRICT COST 100
    AS '$libdir/postgis-2.3', 'overlaps';
 C   DROP FUNCTION public._st_overlaps(geom1 geometry, geom2 geometry);
       public       postgres    false    6    1165    1165            �           1255    178502    _st_pointoutside(geography)    FUNCTION     �   CREATE FUNCTION _st_pointoutside(geography) RETURNS geography
    LANGUAGE c IMMUTABLE STRICT
    AS '$libdir/postgis-2.3', 'geography_point_outside';
 2   DROP FUNCTION public._st_pointoutside(geography);
       public       postgres    false    1199    1199    6                       1255    178238    _st_touches(geometry, geometry)    FUNCTION     �   CREATE FUNCTION _st_touches(geom1 geometry, geom2 geometry) RETURNS boolean
    LANGUAGE c IMMUTABLE STRICT COST 100
    AS '$libdir/postgis-2.3', 'touches';
 B   DROP FUNCTION public._st_touches(geom1 geometry, geom2 geometry);
       public       postgres    false    6    1165    1165            �           1255    178197 :   _st_voronoi(geometry, geometry, double precision, boolean)    FUNCTION     �   CREATE FUNCTION _st_voronoi(g1 geometry, clip geometry DEFAULT NULL::geometry, tolerance double precision DEFAULT 0.0, return_polygons boolean DEFAULT true) RETURNS geometry
    LANGUAGE c IMMUTABLE COST 25000
    AS '$libdir/postgis-2.3', 'ST_Voronoi';
 s   DROP FUNCTION public._st_voronoi(g1 geometry, clip geometry, tolerance double precision, return_polygons boolean);
       public       postgres    false    6    1165    1165    1165    1165            '           1255    178255    _st_within(geometry, geometry)    FUNCTION     �   CREATE FUNCTION _st_within(geom1 geometry, geom2 geometry) RETURNS boolean
    LANGUAGE sql IMMUTABLE
    AS $_$SELECT _ST_Contains($2,$1)$_$;
 A   DROP FUNCTION public._st_within(geom1 geometry, geom2 geometry);
       public       postgres    false    6    1165    1165            �           1255    178382    addauth(text)    FUNCTION     :  CREATE FUNCTION addauth(text) RETURNS boolean
    LANGUAGE plpgsql
    AS $_$ 
DECLARE
	lockid alias for $1;
	okay boolean;
	myrec record;
BEGIN
	-- check to see if table exists
	--  if not, CREATE TEMP TABLE mylock (transid xid, lockcode text)
	okay := 'f';
	FOR myrec IN SELECT * FROM pg_class WHERE relname = 'temp_lock_have_table' LOOP
		okay := 't';
	END LOOP; 
	IF (okay <> 't') THEN 
		CREATE TEMP TABLE temp_lock_have_table (transid xid, lockcode text);
			-- this will only work from pgsql7.4 up
			-- ON COMMIT DELETE ROWS;
	END IF;

	--  INSERT INTO mylock VALUES ( $1)
--	EXECUTE 'INSERT INTO temp_lock_have_table VALUES ( '||
--		quote_literal(getTransactionID()) || ',' ||
--		quote_literal(lockid) ||')';

	INSERT INTO temp_lock_have_table VALUES (getTransactionID(), lockid);

	RETURN true::boolean;
END;
$_$;
 $   DROP FUNCTION public.addauth(text);
       public       postgres    false    1    6            �           1255    178078 e   addgeometrycolumn(character varying, character varying, integer, character varying, integer, boolean)    FUNCTION     b  CREATE FUNCTION addgeometrycolumn(table_name character varying, column_name character varying, new_srid integer, new_type character varying, new_dim integer, use_typmod boolean DEFAULT true) RETURNS text
    LANGUAGE plpgsql STRICT
    AS $_$
DECLARE
	ret  text;
BEGIN
	SELECT AddGeometryColumn('','',$1,$2,$3,$4,$5, $6) into ret;
	RETURN ret;
END;
$_$;
 �   DROP FUNCTION public.addgeometrycolumn(table_name character varying, column_name character varying, new_srid integer, new_type character varying, new_dim integer, use_typmod boolean);
       public       postgres    false    6    1            �           1255    178077 x   addgeometrycolumn(character varying, character varying, character varying, integer, character varying, integer, boolean)    FUNCTION     �  CREATE FUNCTION addgeometrycolumn(schema_name character varying, table_name character varying, column_name character varying, new_srid integer, new_type character varying, new_dim integer, use_typmod boolean DEFAULT true) RETURNS text
    LANGUAGE plpgsql STABLE STRICT
    AS $_$
DECLARE
	ret  text;
BEGIN
	SELECT AddGeometryColumn('',$1,$2,$3,$4,$5,$6,$7) into ret;
	RETURN ret;
END;
$_$;
 �   DROP FUNCTION public.addgeometrycolumn(schema_name character varying, table_name character varying, column_name character varying, new_srid integer, new_type character varying, new_dim integer, use_typmod boolean);
       public       postgres    false    1    6            �           1255    178075 �   addgeometrycolumn(character varying, character varying, character varying, character varying, integer, character varying, integer, boolean)    FUNCTION     �  CREATE FUNCTION addgeometrycolumn(catalog_name character varying, schema_name character varying, table_name character varying, column_name character varying, new_srid_in integer, new_type character varying, new_dim integer, use_typmod boolean DEFAULT true) RETURNS text
    LANGUAGE plpgsql STRICT
    AS $$
DECLARE
	rec RECORD;
	sr varchar;
	real_schema name;
	sql text;
	new_srid integer;

BEGIN

	-- Verify geometry type
	IF (postgis_type_name(new_type,new_dim) IS NULL )
	THEN
		RAISE EXCEPTION 'Invalid type name "%(%)" - valid ones are:
	POINT, MULTIPOINT,
	LINESTRING, MULTILINESTRING,
	POLYGON, MULTIPOLYGON,
	CIRCULARSTRING, COMPOUNDCURVE, MULTICURVE,
	CURVEPOLYGON, MULTISURFACE,
	GEOMETRY, GEOMETRYCOLLECTION,
	POINTM, MULTIPOINTM,
	LINESTRINGM, MULTILINESTRINGM,
	POLYGONM, MULTIPOLYGONM,
	CIRCULARSTRINGM, COMPOUNDCURVEM, MULTICURVEM
	CURVEPOLYGONM, MULTISURFACEM, TRIANGLE, TRIANGLEM,
	POLYHEDRALSURFACE, POLYHEDRALSURFACEM, TIN, TINM
	or GEOMETRYCOLLECTIONM', new_type, new_dim;
		RETURN 'fail';
	END IF;


	-- Verify dimension
	IF ( (new_dim >4) OR (new_dim <2) ) THEN
		RAISE EXCEPTION 'invalid dimension';
		RETURN 'fail';
	END IF;

	IF ( (new_type LIKE '%M') AND (new_dim!=3) ) THEN
		RAISE EXCEPTION 'TypeM needs 3 dimensions';
		RETURN 'fail';
	END IF;


	-- Verify SRID
	IF ( new_srid_in > 0 ) THEN
		IF new_srid_in > 998999 THEN
			RAISE EXCEPTION 'AddGeometryColumn() - SRID must be <= %', 998999;
		END IF;
		new_srid := new_srid_in;
		SELECT SRID INTO sr FROM spatial_ref_sys WHERE SRID = new_srid;
		IF NOT FOUND THEN
			RAISE EXCEPTION 'AddGeometryColumn() - invalid SRID';
			RETURN 'fail';
		END IF;
	ELSE
		new_srid := ST_SRID('POINT EMPTY'::geometry);
		IF ( new_srid_in != new_srid ) THEN
			RAISE NOTICE 'SRID value % converted to the officially unknown SRID value %', new_srid_in, new_srid;
		END IF;
	END IF;


	-- Verify schema
	IF ( schema_name IS NOT NULL AND schema_name != '' ) THEN
		sql := 'SELECT nspname FROM pg_namespace ' ||
			'WHERE text(nspname) = ' || quote_literal(schema_name) ||
			'LIMIT 1';
		RAISE DEBUG '%', sql;
		EXECUTE sql INTO real_schema;

		IF ( real_schema IS NULL ) THEN
			RAISE EXCEPTION 'Schema % is not a valid schemaname', quote_literal(schema_name);
			RETURN 'fail';
		END IF;
	END IF;

	IF ( real_schema IS NULL ) THEN
		RAISE DEBUG 'Detecting schema';
		sql := 'SELECT n.nspname AS schemaname ' ||
			'FROM pg_catalog.pg_class c ' ||
			  'JOIN pg_catalog.pg_namespace n ON n.oid = c.relnamespace ' ||
			'WHERE c.relkind = ' || quote_literal('r') ||
			' AND n.nspname NOT IN (' || quote_literal('pg_catalog') || ', ' || quote_literal('pg_toast') || ')' ||
			' AND pg_catalog.pg_table_is_visible(c.oid)' ||
			' AND c.relname = ' || quote_literal(table_name);
		RAISE DEBUG '%', sql;
		EXECUTE sql INTO real_schema;

		IF ( real_schema IS NULL ) THEN
			RAISE EXCEPTION 'Table % does not occur in the search_path', quote_literal(table_name);
			RETURN 'fail';
		END IF;
	END IF;


	-- Add geometry column to table
	IF use_typmod THEN
	     sql := 'ALTER TABLE ' ||
            quote_ident(real_schema) || '.' || quote_ident(table_name)
            || ' ADD COLUMN ' || quote_ident(column_name) ||
            ' geometry(' || postgis_type_name(new_type, new_dim) || ', ' || new_srid::text || ')';
        RAISE DEBUG '%', sql;
	ELSE
        sql := 'ALTER TABLE ' ||
            quote_ident(real_schema) || '.' || quote_ident(table_name)
            || ' ADD COLUMN ' || quote_ident(column_name) ||
            ' geometry ';
        RAISE DEBUG '%', sql;
    END IF;
	EXECUTE sql;

	IF NOT use_typmod THEN
        -- Add table CHECKs
        sql := 'ALTER TABLE ' ||
            quote_ident(real_schema) || '.' || quote_ident(table_name)
            || ' ADD CONSTRAINT '
            || quote_ident('enforce_srid_' || column_name)
            || ' CHECK (st_srid(' || quote_ident(column_name) ||
            ') = ' || new_srid::text || ')' ;
        RAISE DEBUG '%', sql;
        EXECUTE sql;

        sql := 'ALTER TABLE ' ||
            quote_ident(real_schema) || '.' || quote_ident(table_name)
            || ' ADD CONSTRAINT '
            || quote_ident('enforce_dims_' || column_name)
            || ' CHECK (st_ndims(' || quote_ident(column_name) ||
            ') = ' || new_dim::text || ')' ;
        RAISE DEBUG '%', sql;
        EXECUTE sql;

        IF ( NOT (new_type = 'GEOMETRY')) THEN
            sql := 'ALTER TABLE ' ||
                quote_ident(real_schema) || '.' || quote_ident(table_name) || ' ADD CONSTRAINT ' ||
                quote_ident('enforce_geotype_' || column_name) ||
                ' CHECK (GeometryType(' ||
                quote_ident(column_name) || ')=' ||
                quote_literal(new_type) || ' OR (' ||
                quote_ident(column_name) || ') is null)';
            RAISE DEBUG '%', sql;
            EXECUTE sql;
        END IF;
    END IF;

	RETURN
		real_schema || '.' ||
		table_name || '.' || column_name ||
		' SRID:' || new_srid::text ||
		' TYPE:' || new_type ||
		' DIMS:' || new_dim::text || ' ';
END;
$$;
 �   DROP FUNCTION public.addgeometrycolumn(catalog_name character varying, schema_name character varying, table_name character varying, column_name character varying, new_srid_in integer, new_type character varying, new_dim integer, use_typmod boolean);
       public       postgres    false    6    1            �           1255    178114 
   box(box3d)    FUNCTION     u   CREATE FUNCTION box(box3d) RETURNS box
    LANGUAGE c IMMUTABLE STRICT
    AS '$libdir/postgis-2.3', 'BOX3D_to_BOX';
 !   DROP FUNCTION public.box(box3d);
       public       postgres    false    1169    6            �           1255    178111    box(geometry)    FUNCTION     �   CREATE FUNCTION box(geometry) RETURNS box
    LANGUAGE c IMMUTABLE STRICT COST 10
    AS '$libdir/postgis-2.3', 'LWGEOM_to_BOX';
 $   DROP FUNCTION public.box(geometry);
       public       postgres    false    6    1165            �           1255    178112    box2d(box3d)    FUNCTION     {   CREATE FUNCTION box2d(box3d) RETURNS box2d
    LANGUAGE c IMMUTABLE STRICT
    AS '$libdir/postgis-2.3', 'BOX3D_to_BOX2D';
 #   DROP FUNCTION public.box2d(box3d);
       public       postgres    false    1169    6    1173            �           1255    178109    box2d(geometry)    FUNCTION     �   CREATE FUNCTION box2d(geometry) RETURNS box2d
    LANGUAGE c IMMUTABLE STRICT COST 10
    AS '$libdir/postgis-2.3', 'LWGEOM_to_BOX2D';
 &   DROP FUNCTION public.box2d(geometry);
       public       postgres    false    1165    6    1173            �           1255    178113    box3d(box2d)    FUNCTION     {   CREATE FUNCTION box3d(box2d) RETURNS box3d
    LANGUAGE c IMMUTABLE STRICT
    AS '$libdir/postgis-2.3', 'BOX2D_to_BOX3D';
 #   DROP FUNCTION public.box3d(box2d);
       public       postgres    false    1173    6    1169            �           1255    178110    box3d(geometry)    FUNCTION     �   CREATE FUNCTION box3d(geometry) RETURNS box3d
    LANGUAGE c IMMUTABLE STRICT COST 10
    AS '$libdir/postgis-2.3', 'LWGEOM_to_BOX3D';
 &   DROP FUNCTION public.box3d(geometry);
       public       postgres    false    1165    1169    6            �           1255    178116    box3dtobox(box3d)    FUNCTION     |   CREATE FUNCTION box3dtobox(box3d) RETURNS box
    LANGUAGE c IMMUTABLE STRICT
    AS '$libdir/postgis-2.3', 'BOX3D_to_BOX';
 (   DROP FUNCTION public.box3dtobox(box3d);
       public       postgres    false    1169    6            �           1255    178402    bytea(geography)    FUNCTION     �   CREATE FUNCTION bytea(geography) RETURNS bytea
    LANGUAGE c IMMUTABLE STRICT
    AS '$libdir/postgis-2.3', 'LWGEOM_to_bytea';
 '   DROP FUNCTION public.bytea(geography);
       public       postgres    false    1199    6            �           1255    178121    bytea(geometry)    FUNCTION     �   CREATE FUNCTION bytea(geometry) RETURNS bytea
    LANGUAGE c IMMUTABLE STRICT COST 10
    AS '$libdir/postgis-2.3', 'LWGEOM_to_bytea';
 &   DROP FUNCTION public.bytea(geometry);
       public       postgres    false    6    1165            �           1255    178384    checkauth(text, text)    FUNCTION     t   CREATE FUNCTION checkauth(text, text) RETURNS integer
    LANGUAGE sql
    AS $_$ SELECT CheckAuth('', $1, $2) $_$;
 ,   DROP FUNCTION public.checkauth(text, text);
       public       postgres    false    6            �           1255    178383    checkauth(text, text, text)    FUNCTION     z  CREATE FUNCTION checkauth(text, text, text) RETURNS integer
    LANGUAGE plpgsql
    AS $_$ 
DECLARE
	schema text;
BEGIN
	IF NOT LongTransactionsEnabled() THEN
		RAISE EXCEPTION 'Long transaction support disabled, use EnableLongTransaction() to enable.';
	END IF;

	if ( $1 != '' ) THEN
		schema = $1;
	ELSE
		SELECT current_schema() into schema;
	END IF;

	-- TODO: check for an already existing trigger ?

	EXECUTE 'CREATE TRIGGER check_auth BEFORE UPDATE OR DELETE ON ' 
		|| quote_ident(schema) || '.' || quote_ident($2)
		||' FOR EACH ROW EXECUTE PROCEDURE CheckAuthTrigger('
		|| quote_literal($3) || ')';

	RETURN 0;
END;
$_$;
 2   DROP FUNCTION public.checkauth(text, text, text);
       public       postgres    false    1    6            �           1255    178385    checkauthtrigger()    FUNCTION     w   CREATE FUNCTION checkauthtrigger() RETURNS trigger
    LANGUAGE c
    AS '$libdir/postgis-2.3', 'check_authorization';
 )   DROP FUNCTION public.checkauthtrigger();
       public       postgres    false    6            �           1255    178389    disablelongtransactions()    FUNCTION     M  CREATE FUNCTION disablelongtransactions() RETURNS text
    LANGUAGE plpgsql
    AS $$ 
DECLARE
	rec RECORD;

BEGIN

	--
	-- Drop all triggers applied by CheckAuth()
	--
	FOR rec IN
		SELECT c.relname, t.tgname, t.tgargs FROM pg_trigger t, pg_class c, pg_proc p
		WHERE p.proname = 'checkauthtrigger' and t.tgfoid = p.oid and t.tgrelid = c.oid
	LOOP
		EXECUTE 'DROP TRIGGER ' || quote_ident(rec.tgname) ||
			' ON ' || quote_ident(rec.relname);
	END LOOP;

	--
	-- Drop the authorization_table table
	--
	FOR rec IN SELECT * FROM pg_class WHERE relname = 'authorization_table' LOOP
		DROP TABLE authorization_table;
	END LOOP;

	--
	-- Drop the authorized_tables view
	--
	FOR rec IN SELECT * FROM pg_class WHERE relname = 'authorized_tables' LOOP
		DROP VIEW authorized_tables;
	END LOOP;

	RETURN 'Long transactions support disabled';
END;
$$;
 0   DROP FUNCTION public.disablelongtransactions();
       public       postgres    false    1    6            �           1255    178081 8   dropgeometrycolumn(character varying, character varying)    FUNCTION     �   CREATE FUNCTION dropgeometrycolumn(table_name character varying, column_name character varying) RETURNS text
    LANGUAGE plpgsql STRICT
    AS $_$
DECLARE
	ret text;
BEGIN
	SELECT DropGeometryColumn('','',$1,$2) into ret;
	RETURN ret;
END;
$_$;
 f   DROP FUNCTION public.dropgeometrycolumn(table_name character varying, column_name character varying);
       public       postgres    false    1    6            �           1255    178080 K   dropgeometrycolumn(character varying, character varying, character varying)    FUNCTION       CREATE FUNCTION dropgeometrycolumn(schema_name character varying, table_name character varying, column_name character varying) RETURNS text
    LANGUAGE plpgsql STRICT
    AS $_$
DECLARE
	ret text;
BEGIN
	SELECT DropGeometryColumn('',$1,$2,$3) into ret;
	RETURN ret;
END;
$_$;
 �   DROP FUNCTION public.dropgeometrycolumn(schema_name character varying, table_name character varying, column_name character varying);
       public       postgres    false    6    1            �           1255    178079 ^   dropgeometrycolumn(character varying, character varying, character varying, character varying)    FUNCTION     L  CREATE FUNCTION dropgeometrycolumn(catalog_name character varying, schema_name character varying, table_name character varying, column_name character varying) RETURNS text
    LANGUAGE plpgsql STRICT
    AS $$
DECLARE
	myrec RECORD;
	okay boolean;
	real_schema name;

BEGIN


	-- Find, check or fix schema_name
	IF ( schema_name != '' ) THEN
		okay = false;

		FOR myrec IN SELECT nspname FROM pg_namespace WHERE text(nspname) = schema_name LOOP
			okay := true;
		END LOOP;

		IF ( okay <>  true ) THEN
			RAISE NOTICE 'Invalid schema name - using current_schema()';
			SELECT current_schema() into real_schema;
		ELSE
			real_schema = schema_name;
		END IF;
	ELSE
		SELECT current_schema() into real_schema;
	END IF;

	-- Find out if the column is in the geometry_columns table
	okay = false;
	FOR myrec IN SELECT * from geometry_columns where f_table_schema = text(real_schema) and f_table_name = table_name and f_geometry_column = column_name LOOP
		okay := true;
	END LOOP;
	IF (okay <> true) THEN
		RAISE EXCEPTION 'column not found in geometry_columns table';
		RETURN false;
	END IF;

	-- Remove table column
	EXECUTE 'ALTER TABLE ' || quote_ident(real_schema) || '.' ||
		quote_ident(table_name) || ' DROP COLUMN ' ||
		quote_ident(column_name);

	RETURN real_schema || '.' || table_name || '.' || column_name ||' effectively removed.';

END;
$$;
 �   DROP FUNCTION public.dropgeometrycolumn(catalog_name character varying, schema_name character varying, table_name character varying, column_name character varying);
       public       postgres    false    6    1            �           1255    178084 $   dropgeometrytable(character varying)    FUNCTION     �   CREATE FUNCTION dropgeometrytable(table_name character varying) RETURNS text
    LANGUAGE sql STRICT
    AS $_$ SELECT DropGeometryTable('','',$1) $_$;
 F   DROP FUNCTION public.dropgeometrytable(table_name character varying);
       public       postgres    false    6            �           1255    178083 7   dropgeometrytable(character varying, character varying)    FUNCTION     �   CREATE FUNCTION dropgeometrytable(schema_name character varying, table_name character varying) RETURNS text
    LANGUAGE sql STRICT
    AS $_$ SELECT DropGeometryTable('',$1,$2) $_$;
 e   DROP FUNCTION public.dropgeometrytable(schema_name character varying, table_name character varying);
       public       postgres    false    6            �           1255    178082 J   dropgeometrytable(character varying, character varying, character varying)    FUNCTION     l  CREATE FUNCTION dropgeometrytable(catalog_name character varying, schema_name character varying, table_name character varying) RETURNS text
    LANGUAGE plpgsql STRICT
    AS $$
DECLARE
	real_schema name;

BEGIN

	IF ( schema_name = '' ) THEN
		SELECT current_schema() into real_schema;
	ELSE
		real_schema = schema_name;
	END IF;

	-- TODO: Should we warn if table doesn't exist probably instead just saying dropped
	-- Remove table
	EXECUTE 'DROP TABLE IF EXISTS '
		|| quote_ident(real_schema) || '.' ||
		quote_ident(table_name) || ' RESTRICT';

	RETURN
		real_schema || '.' ||
		table_name ||' dropped.';

END;
$$;
 �   DROP FUNCTION public.dropgeometrytable(catalog_name character varying, schema_name character varying, table_name character varying);
       public       postgres    false    6    1            �           1255    178387    enablelongtransactions()    FUNCTION     X  CREATE FUNCTION enablelongtransactions() RETURNS text
    LANGUAGE plpgsql
    AS $$ 
DECLARE
	"query" text;
	exists bool;
	rec RECORD;

BEGIN

	exists = 'f';
	FOR rec IN SELECT * FROM pg_class WHERE relname = 'authorization_table'
	LOOP
		exists = 't';
	END LOOP;

	IF NOT exists
	THEN
		"query" = 'CREATE TABLE authorization_table (
			toid oid, -- table oid
			rid text, -- row id
			expires timestamp,
			authid text
		)';
		EXECUTE "query";
	END IF;

	exists = 'f';
	FOR rec IN SELECT * FROM pg_class WHERE relname = 'authorized_tables'
	LOOP
		exists = 't';
	END LOOP;

	IF NOT exists THEN
		"query" = 'CREATE VIEW authorized_tables AS ' ||
			'SELECT ' ||
			'n.nspname as schema, ' ||
			'c.relname as table, trim(' ||
			quote_literal(chr(92) || '000') ||
			' from t.tgargs) as id_column ' ||
			'FROM pg_trigger t, pg_class c, pg_proc p ' ||
			', pg_namespace n ' ||
			'WHERE p.proname = ' || quote_literal('checkauthtrigger') ||
			' AND c.relnamespace = n.oid' ||
			' AND t.tgfoid = p.oid and t.tgrelid = c.oid';
		EXECUTE "query";
	END IF;

	RETURN 'Long transactions support enabled';
END;
$$;
 /   DROP FUNCTION public.enablelongtransactions();
       public       postgres    false    1    6            5           1255    178269    equals(geometry, geometry)    FUNCTION     �   CREATE FUNCTION equals(geom1 geometry, geom2 geometry) RETURNS boolean
    LANGUAGE c IMMUTABLE STRICT
    AS '$libdir/postgis-2.3', 'ST_Equals';
 =   DROP FUNCTION public.equals(geom1 geometry, geom2 geometry);
       public       postgres    false    6    1165    1165            �           1255    178088 B   find_srid(character varying, character varying, character varying)    FUNCTION     e  CREATE FUNCTION find_srid(character varying, character varying, character varying) RETURNS integer
    LANGUAGE plpgsql IMMUTABLE STRICT
    AS $_$
DECLARE
	schem varchar =  $1;
	tabl varchar = $2;
	sr int4;
BEGIN
-- if the table contains a . and the schema is empty
-- split the table into a schema and a table
-- otherwise drop through to default behavior
	IF ( schem = '' and strpos(tabl,'.') > 0 ) THEN
	 schem = substr(tabl,1,strpos(tabl,'.')-1);
	 tabl = substr(tabl,length(schem)+2);
	END IF;

	select SRID into sr from geometry_columns where (f_table_schema = schem or schem = '') and f_table_name = tabl and f_geometry_column = $3;
	IF NOT FOUND THEN
	   RAISE EXCEPTION 'find_srid() - could not find the corresponding SRID - is the geometry registered in the GEOMETRY_COLUMNS table?  Is there an uppercase/lowercase mismatch?';
	END IF;
	return sr;
END;
$_$;
 Y   DROP FUNCTION public.find_srid(character varying, character varying, character varying);
       public       postgres    false    1    6            �           1255    178401    geography(bytea)    FUNCTION     �   CREATE FUNCTION geography(bytea) RETURNS geography
    LANGUAGE c IMMUTABLE STRICT
    AS '$libdir/postgis-2.3', 'geography_from_binary';
 '   DROP FUNCTION public.geography(bytea);
       public       postgres    false    1199    6            �           1255    178418    geography(geometry)    FUNCTION     �   CREATE FUNCTION geography(geometry) RETURNS geography
    LANGUAGE c IMMUTABLE STRICT
    AS '$libdir/postgis-2.3', 'geography_from_geometry';
 *   DROP FUNCTION public.geography(geometry);
       public       postgres    false    1165    1199    6            �           1255    178399 &   geography(geography, integer, boolean)    FUNCTION     �   CREATE FUNCTION geography(geography, integer, boolean) RETURNS geography
    LANGUAGE c IMMUTABLE STRICT
    AS '$libdir/postgis-2.3', 'geography_enforce_typmod';
 =   DROP FUNCTION public.geography(geography, integer, boolean);
       public       postgres    false    6    1199    1199            �           1255    178451 #   geography_cmp(geography, geography)    FUNCTION     �   CREATE FUNCTION geography_cmp(geography, geography) RETURNS integer
    LANGUAGE c IMMUTABLE STRICT
    AS '$libdir/postgis-2.3', 'geography_cmp';
 :   DROP FUNCTION public.geography_cmp(geography, geography);
       public       postgres    false    1199    6    1199            �           1255    178431 ,   geography_distance_knn(geography, geography)    FUNCTION     �   CREATE FUNCTION geography_distance_knn(geography, geography) RETURNS double precision
    LANGUAGE c IMMUTABLE STRICT COST 100
    AS '$libdir/postgis-2.3', 'geography_distance_knn';
 C   DROP FUNCTION public.geography_distance_knn(geography, geography);
       public       postgres    false    1199    1199    6            �           1255    178450 "   geography_eq(geography, geography)    FUNCTION     �   CREATE FUNCTION geography_eq(geography, geography) RETURNS boolean
    LANGUAGE c IMMUTABLE STRICT
    AS '$libdir/postgis-2.3', 'geography_eq';
 9   DROP FUNCTION public.geography_eq(geography, geography);
       public       postgres    false    6    1199    1199            �           1255    178449 "   geography_ge(geography, geography)    FUNCTION     �   CREATE FUNCTION geography_ge(geography, geography) RETURNS boolean
    LANGUAGE c IMMUTABLE STRICT
    AS '$libdir/postgis-2.3', 'geography_ge';
 9   DROP FUNCTION public.geography_ge(geography, geography);
       public       postgres    false    1199    1199    6            �           1255    178423 !   geography_gist_compress(internal)    FUNCTION     �   CREATE FUNCTION geography_gist_compress(internal) RETURNS internal
    LANGUAGE c
    AS '$libdir/postgis-2.3', 'gserialized_gist_compress';
 8   DROP FUNCTION public.geography_gist_compress(internal);
       public       postgres    false    6            �           1255    178422 7   geography_gist_consistent(internal, geography, integer)    FUNCTION     �   CREATE FUNCTION geography_gist_consistent(internal, geography, integer) RETURNS boolean
    LANGUAGE c
    AS '$libdir/postgis-2.3', 'gserialized_gist_consistent';
 N   DROP FUNCTION public.geography_gist_consistent(internal, geography, integer);
       public       postgres    false    6    1199            �           1255    178428 #   geography_gist_decompress(internal)    FUNCTION     �   CREATE FUNCTION geography_gist_decompress(internal) RETURNS internal
    LANGUAGE c
    AS '$libdir/postgis-2.3', 'gserialized_gist_decompress';
 :   DROP FUNCTION public.geography_gist_decompress(internal);
       public       postgres    false    6            �           1255    178433 5   geography_gist_distance(internal, geography, integer)    FUNCTION     �   CREATE FUNCTION geography_gist_distance(internal, geography, integer) RETURNS double precision
    LANGUAGE c
    AS '$libdir/postgis-2.3', 'gserialized_gist_geog_distance';
 L   DROP FUNCTION public.geography_gist_distance(internal, geography, integer);
       public       postgres    false    1199    6            �           1255    178424 4   geography_gist_penalty(internal, internal, internal)    FUNCTION     �   CREATE FUNCTION geography_gist_penalty(internal, internal, internal) RETURNS internal
    LANGUAGE c
    AS '$libdir/postgis-2.3', 'gserialized_gist_penalty';
 K   DROP FUNCTION public.geography_gist_penalty(internal, internal, internal);
       public       postgres    false    6            �           1255    178425 ,   geography_gist_picksplit(internal, internal)    FUNCTION     �   CREATE FUNCTION geography_gist_picksplit(internal, internal) RETURNS internal
    LANGUAGE c
    AS '$libdir/postgis-2.3', 'gserialized_gist_picksplit';
 C   DROP FUNCTION public.geography_gist_picksplit(internal, internal);
       public       postgres    false    6            �           1255    178427 +   geography_gist_same(box2d, box2d, internal)    FUNCTION     �   CREATE FUNCTION geography_gist_same(box2d, box2d, internal) RETURNS internal
    LANGUAGE c
    AS '$libdir/postgis-2.3', 'gserialized_gist_same';
 B   DROP FUNCTION public.geography_gist_same(box2d, box2d, internal);
       public       postgres    false    6    1173    1173            �           1255    178426 %   geography_gist_union(bytea, internal)    FUNCTION     �   CREATE FUNCTION geography_gist_union(bytea, internal) RETURNS internal
    LANGUAGE c
    AS '$libdir/postgis-2.3', 'gserialized_gist_union';
 <   DROP FUNCTION public.geography_gist_union(bytea, internal);
       public       postgres    false    6            �           1255    178448 "   geography_gt(geography, geography)    FUNCTION     �   CREATE FUNCTION geography_gt(geography, geography) RETURNS boolean
    LANGUAGE c IMMUTABLE STRICT
    AS '$libdir/postgis-2.3', 'geography_gt';
 9   DROP FUNCTION public.geography_gt(geography, geography);
       public       postgres    false    1199    6    1199            �           1255    178447 "   geography_le(geography, geography)    FUNCTION     �   CREATE FUNCTION geography_le(geography, geography) RETURNS boolean
    LANGUAGE c IMMUTABLE STRICT
    AS '$libdir/postgis-2.3', 'geography_le';
 9   DROP FUNCTION public.geography_le(geography, geography);
       public       postgres    false    1199    1199    6            �           1255    178446 "   geography_lt(geography, geography)    FUNCTION     �   CREATE FUNCTION geography_lt(geography, geography) RETURNS boolean
    LANGUAGE c IMMUTABLE STRICT
    AS '$libdir/postgis-2.3', 'geography_lt';
 9   DROP FUNCTION public.geography_lt(geography, geography);
       public       postgres    false    6    1199    1199            �           1255    178429 (   geography_overlaps(geography, geography)    FUNCTION     �   CREATE FUNCTION geography_overlaps(geography, geography) RETURNS boolean
    LANGUAGE c IMMUTABLE STRICT
    AS '$libdir/postgis-2.3', 'gserialized_overlaps';
 ?   DROP FUNCTION public.geography_overlaps(geography, geography);
       public       postgres    false    1199    1199    6            �           1255    178120    geometry(bytea)    FUNCTION     �   CREATE FUNCTION geometry(bytea) RETURNS geometry
    LANGUAGE c IMMUTABLE STRICT
    AS '$libdir/postgis-2.3', 'LWGEOM_from_bytea';
 &   DROP FUNCTION public.geometry(bytea);
       public       postgres    false    6    1165            �            1255    177786    geometry(path)    FUNCTION     �   CREATE FUNCTION geometry(path) RETURNS geometry
    LANGUAGE c IMMUTABLE STRICT
    AS '$libdir/postgis-2.3', 'path_to_geometry';
 %   DROP FUNCTION public.geometry(path);
       public       postgres    false    6    1165            �            1255    177784    geometry(point)    FUNCTION     �   CREATE FUNCTION geometry(point) RETURNS geometry
    LANGUAGE c IMMUTABLE STRICT
    AS '$libdir/postgis-2.3', 'point_to_geometry';
 &   DROP FUNCTION public.geometry(point);
       public       postgres    false    6    1165            �            1255    177788    geometry(polygon)    FUNCTION     �   CREATE FUNCTION geometry(polygon) RETURNS geometry
    LANGUAGE c IMMUTABLE STRICT
    AS '$libdir/postgis-2.3', 'polygon_to_geometry';
 (   DROP FUNCTION public.geometry(polygon);
       public       postgres    false    6    1165            �           1255    178119    geometry(text)    FUNCTION     �   CREATE FUNCTION geometry(text) RETURNS geometry
    LANGUAGE c IMMUTABLE STRICT
    AS '$libdir/postgis-2.3', 'parse_WKT_lwgeom';
 %   DROP FUNCTION public.geometry(text);
       public       postgres    false    1165    6            �           1255    178117    geometry(box2d)    FUNCTION     �   CREATE FUNCTION geometry(box2d) RETURNS geometry
    LANGUAGE c IMMUTABLE STRICT
    AS '$libdir/postgis-2.3', 'BOX2D_to_LWGEOM';
 &   DROP FUNCTION public.geometry(box2d);
       public       postgres    false    1165    1173    6            �           1255    178118    geometry(box3d)    FUNCTION     �   CREATE FUNCTION geometry(box3d) RETURNS geometry
    LANGUAGE c IMMUTABLE STRICT
    AS '$libdir/postgis-2.3', 'BOX3D_to_LWGEOM';
 &   DROP FUNCTION public.geometry(box3d);
       public       postgres    false    1165    1169    6            �           1255    178420    geometry(geography)    FUNCTION     �   CREATE FUNCTION geometry(geography) RETURNS geometry
    LANGUAGE c IMMUTABLE STRICT
    AS '$libdir/postgis-2.3', 'geometry_from_geography';
 *   DROP FUNCTION public.geometry(geography);
       public       postgres    false    1199    1165    6            �            1255    177782 $   geometry(geometry, integer, boolean)    FUNCTION     �   CREATE FUNCTION geometry(geometry, integer, boolean) RETURNS geometry
    LANGUAGE c IMMUTABLE STRICT
    AS '$libdir/postgis-2.3', 'geometry_enforce_typmod';
 ;   DROP FUNCTION public.geometry(geometry, integer, boolean);
       public       postgres    false    1165    1165    6            �            1255    177877 "   geometry_above(geometry, geometry)    FUNCTION     �   CREATE FUNCTION geometry_above(geom1 geometry, geom2 geometry) RETURNS boolean
    LANGUAGE c IMMUTABLE STRICT
    AS '$libdir/postgis-2.3', 'gserialized_above_2d';
 E   DROP FUNCTION public.geometry_above(geom1 geometry, geom2 geometry);
       public       postgres    false    1165    1165    6            �            1255    177868 "   geometry_below(geometry, geometry)    FUNCTION     �   CREATE FUNCTION geometry_below(geom1 geometry, geom2 geometry) RETURNS boolean
    LANGUAGE c IMMUTABLE STRICT
    AS '$libdir/postgis-2.3', 'gserialized_below_2d';
 E   DROP FUNCTION public.geometry_below(geom1 geometry, geom2 geometry);
       public       postgres    false    1165    6    1165            �            1255    177821     geometry_cmp(geometry, geometry)    FUNCTION     �   CREATE FUNCTION geometry_cmp(geom1 geometry, geom2 geometry) RETURNS integer
    LANGUAGE c IMMUTABLE STRICT
    AS '$libdir/postgis-2.3', 'lwgeom_cmp';
 C   DROP FUNCTION public.geometry_cmp(geom1 geometry, geom2 geometry);
       public       postgres    false    1165    1165    6            �            1255    177858 %   geometry_contains(geometry, geometry)    FUNCTION     �   CREATE FUNCTION geometry_contains(geom1 geometry, geom2 geometry) RETURNS boolean
    LANGUAGE c IMMUTABLE STRICT
    AS '$libdir/postgis-2.3', 'gserialized_contains_2d';
 H   DROP FUNCTION public.geometry_contains(geom1 geometry, geom2 geometry);
       public       postgres    false    6    1165    1165            �            1255    177855 )   geometry_distance_box(geometry, geometry)    FUNCTION     �   CREATE FUNCTION geometry_distance_box(geom1 geometry, geom2 geometry) RETURNS double precision
    LANGUAGE c IMMUTABLE STRICT
    AS '$libdir/postgis-2.3', 'gserialized_distance_box_2d';
 L   DROP FUNCTION public.geometry_distance_box(geom1 geometry, geom2 geometry);
       public       postgres    false    1165    6    1165            �            1255    177854 .   geometry_distance_centroid(geometry, geometry)    FUNCTION     �   CREATE FUNCTION geometry_distance_centroid(geom1 geometry, geom2 geometry) RETURNS double precision
    LANGUAGE c IMMUTABLE STRICT
    AS '$libdir/postgis-2.3', 'gserialized_distance_centroid_2d';
 Q   DROP FUNCTION public.geometry_distance_centroid(geom1 geometry, geom2 geometry);
       public       postgres    false    1165    1165    6                       1255    177911 1   geometry_distance_centroid_nd(geometry, geometry)    FUNCTION     �   CREATE FUNCTION geometry_distance_centroid_nd(geometry, geometry) RETURNS double precision
    LANGUAGE c IMMUTABLE STRICT
    AS '$libdir/postgis-2.3', 'gserialized_distance_nd';
 H   DROP FUNCTION public.geometry_distance_centroid_nd(geometry, geometry);
       public       postgres    false    6    1165    1165                       1255    177913 )   geometry_distance_cpa(geometry, geometry)    FUNCTION     �   CREATE FUNCTION geometry_distance_cpa(geometry, geometry) RETURNS double precision
    LANGUAGE c IMMUTABLE STRICT
    AS '$libdir/postgis-2.3', 'ST_DistanceCPA';
 @   DROP FUNCTION public.geometry_distance_cpa(geometry, geometry);
       public       postgres    false    6    1165    1165            �            1255    177820    geometry_eq(geometry, geometry)    FUNCTION     �   CREATE FUNCTION geometry_eq(geom1 geometry, geom2 geometry) RETURNS boolean
    LANGUAGE c IMMUTABLE STRICT
    AS '$libdir/postgis-2.3', 'lwgeom_eq';
 B   DROP FUNCTION public.geometry_eq(geom1 geometry, geom2 geometry);
       public       postgres    false    6    1165    1165            �            1255    177819    geometry_ge(geometry, geometry)    FUNCTION     �   CREATE FUNCTION geometry_ge(geom1 geometry, geom2 geometry) RETURNS boolean
    LANGUAGE c IMMUTABLE STRICT
    AS '$libdir/postgis-2.3', 'lwgeom_ge';
 B   DROP FUNCTION public.geometry_ge(geom1 geometry, geom2 geometry);
       public       postgres    false    1165    1165    6            �            1255    177837 #   geometry_gist_compress_2d(internal)    FUNCTION     �   CREATE FUNCTION geometry_gist_compress_2d(internal) RETURNS internal
    LANGUAGE c
    AS '$libdir/postgis-2.3', 'gserialized_gist_compress_2d';
 :   DROP FUNCTION public.geometry_gist_compress_2d(internal);
       public       postgres    false    6                        1255    177903 #   geometry_gist_compress_nd(internal)    FUNCTION     �   CREATE FUNCTION geometry_gist_compress_nd(internal) RETURNS internal
    LANGUAGE c
    AS '$libdir/postgis-2.3', 'gserialized_gist_compress';
 :   DROP FUNCTION public.geometry_gist_compress_nd(internal);
       public       postgres    false    6            �            1255    177836 8   geometry_gist_consistent_2d(internal, geometry, integer)    FUNCTION     �   CREATE FUNCTION geometry_gist_consistent_2d(internal, geometry, integer) RETURNS boolean
    LANGUAGE c
    AS '$libdir/postgis-2.3', 'gserialized_gist_consistent_2d';
 O   DROP FUNCTION public.geometry_gist_consistent_2d(internal, geometry, integer);
       public       postgres    false    6    1165            �            1255    177902 8   geometry_gist_consistent_nd(internal, geometry, integer)    FUNCTION     �   CREATE FUNCTION geometry_gist_consistent_nd(internal, geometry, integer) RETURNS boolean
    LANGUAGE c
    AS '$libdir/postgis-2.3', 'gserialized_gist_consistent';
 O   DROP FUNCTION public.geometry_gist_consistent_nd(internal, geometry, integer);
       public       postgres    false    1165    6            �            1255    177842 %   geometry_gist_decompress_2d(internal)    FUNCTION     �   CREATE FUNCTION geometry_gist_decompress_2d(internal) RETURNS internal
    LANGUAGE c
    AS '$libdir/postgis-2.3', 'gserialized_gist_decompress_2d';
 <   DROP FUNCTION public.geometry_gist_decompress_2d(internal);
       public       postgres    false    6                       1255    177908 %   geometry_gist_decompress_nd(internal)    FUNCTION     �   CREATE FUNCTION geometry_gist_decompress_nd(internal) RETURNS internal
    LANGUAGE c
    AS '$libdir/postgis-2.3', 'gserialized_gist_decompress';
 <   DROP FUNCTION public.geometry_gist_decompress_nd(internal);
       public       postgres    false    6            �            1255    177835 6   geometry_gist_distance_2d(internal, geometry, integer)    FUNCTION     �   CREATE FUNCTION geometry_gist_distance_2d(internal, geometry, integer) RETURNS double precision
    LANGUAGE c
    AS '$libdir/postgis-2.3', 'gserialized_gist_distance_2d';
 M   DROP FUNCTION public.geometry_gist_distance_2d(internal, geometry, integer);
       public       postgres    false    1165    6            	           1255    177915 6   geometry_gist_distance_nd(internal, geometry, integer)    FUNCTION     �   CREATE FUNCTION geometry_gist_distance_nd(internal, geometry, integer) RETURNS double precision
    LANGUAGE c
    AS '$libdir/postgis-2.3', 'gserialized_gist_distance';
 M   DROP FUNCTION public.geometry_gist_distance_nd(internal, geometry, integer);
       public       postgres    false    6    1165            �            1255    177838 6   geometry_gist_penalty_2d(internal, internal, internal)    FUNCTION     �   CREATE FUNCTION geometry_gist_penalty_2d(internal, internal, internal) RETURNS internal
    LANGUAGE c
    AS '$libdir/postgis-2.3', 'gserialized_gist_penalty_2d';
 M   DROP FUNCTION public.geometry_gist_penalty_2d(internal, internal, internal);
       public       postgres    false    6                       1255    177904 6   geometry_gist_penalty_nd(internal, internal, internal)    FUNCTION     �   CREATE FUNCTION geometry_gist_penalty_nd(internal, internal, internal) RETURNS internal
    LANGUAGE c
    AS '$libdir/postgis-2.3', 'gserialized_gist_penalty';
 M   DROP FUNCTION public.geometry_gist_penalty_nd(internal, internal, internal);
       public       postgres    false    6            �            1255    177839 .   geometry_gist_picksplit_2d(internal, internal)    FUNCTION     �   CREATE FUNCTION geometry_gist_picksplit_2d(internal, internal) RETURNS internal
    LANGUAGE c
    AS '$libdir/postgis-2.3', 'gserialized_gist_picksplit_2d';
 E   DROP FUNCTION public.geometry_gist_picksplit_2d(internal, internal);
       public       postgres    false    6                       1255    177905 .   geometry_gist_picksplit_nd(internal, internal)    FUNCTION     �   CREATE FUNCTION geometry_gist_picksplit_nd(internal, internal) RETURNS internal
    LANGUAGE c
    AS '$libdir/postgis-2.3', 'gserialized_gist_picksplit';
 E   DROP FUNCTION public.geometry_gist_picksplit_nd(internal, internal);
       public       postgres    false    6            �            1255    177841 3   geometry_gist_same_2d(geometry, geometry, internal)    FUNCTION     �   CREATE FUNCTION geometry_gist_same_2d(geom1 geometry, geom2 geometry, internal) RETURNS internal
    LANGUAGE c
    AS '$libdir/postgis-2.3', 'gserialized_gist_same_2d';
 V   DROP FUNCTION public.geometry_gist_same_2d(geom1 geometry, geom2 geometry, internal);
       public       postgres    false    1165    1165    6                       1255    177907 3   geometry_gist_same_nd(geometry, geometry, internal)    FUNCTION     �   CREATE FUNCTION geometry_gist_same_nd(geometry, geometry, internal) RETURNS internal
    LANGUAGE c
    AS '$libdir/postgis-2.3', 'gserialized_gist_same';
 J   DROP FUNCTION public.geometry_gist_same_nd(geometry, geometry, internal);
       public       postgres    false    1165    6    1165            �            1255    177840 '   geometry_gist_union_2d(bytea, internal)    FUNCTION     �   CREATE FUNCTION geometry_gist_union_2d(bytea, internal) RETURNS internal
    LANGUAGE c
    AS '$libdir/postgis-2.3', 'gserialized_gist_union_2d';
 >   DROP FUNCTION public.geometry_gist_union_2d(bytea, internal);
       public       postgres    false    6                       1255    177906 '   geometry_gist_union_nd(bytea, internal)    FUNCTION     �   CREATE FUNCTION geometry_gist_union_nd(bytea, internal) RETURNS internal
    LANGUAGE c
    AS '$libdir/postgis-2.3', 'gserialized_gist_union';
 >   DROP FUNCTION public.geometry_gist_union_nd(bytea, internal);
       public       postgres    false    6            �            1255    177818    geometry_gt(geometry, geometry)    FUNCTION     �   CREATE FUNCTION geometry_gt(geom1 geometry, geom2 geometry) RETURNS boolean
    LANGUAGE c IMMUTABLE STRICT
    AS '$libdir/postgis-2.3', 'lwgeom_gt';
 B   DROP FUNCTION public.geometry_gt(geom1 geometry, geom2 geometry);
       public       postgres    false    6    1165    1165            �            1255    177817    geometry_le(geometry, geometry)    FUNCTION     �   CREATE FUNCTION geometry_le(geom1 geometry, geom2 geometry) RETURNS boolean
    LANGUAGE c IMMUTABLE STRICT
    AS '$libdir/postgis-2.3', 'lwgeom_le';
 B   DROP FUNCTION public.geometry_le(geom1 geometry, geom2 geometry);
       public       postgres    false    1165    1165    6            �            1255    177862 !   geometry_left(geometry, geometry)    FUNCTION     �   CREATE FUNCTION geometry_left(geom1 geometry, geom2 geometry) RETURNS boolean
    LANGUAGE c IMMUTABLE STRICT
    AS '$libdir/postgis-2.3', 'gserialized_left_2d';
 D   DROP FUNCTION public.geometry_left(geom1 geometry, geom2 geometry);
       public       postgres    false    1165    1165    6            �            1255    177816    geometry_lt(geometry, geometry)    FUNCTION     �   CREATE FUNCTION geometry_lt(geom1 geometry, geom2 geometry) RETURNS boolean
    LANGUAGE c IMMUTABLE STRICT
    AS '$libdir/postgis-2.3', 'lwgeom_lt';
 B   DROP FUNCTION public.geometry_lt(geom1 geometry, geom2 geometry);
       public       postgres    false    1165    6    1165            �            1255    177876 &   geometry_overabove(geometry, geometry)    FUNCTION     �   CREATE FUNCTION geometry_overabove(geom1 geometry, geom2 geometry) RETURNS boolean
    LANGUAGE c IMMUTABLE STRICT
    AS '$libdir/postgis-2.3', 'gserialized_overabove_2d';
 I   DROP FUNCTION public.geometry_overabove(geom1 geometry, geom2 geometry);
       public       postgres    false    1165    1165    6            �            1255    177871 &   geometry_overbelow(geometry, geometry)    FUNCTION     �   CREATE FUNCTION geometry_overbelow(geom1 geometry, geom2 geometry) RETURNS boolean
    LANGUAGE c IMMUTABLE STRICT
    AS '$libdir/postgis-2.3', 'gserialized_overbelow_2d';
 I   DROP FUNCTION public.geometry_overbelow(geom1 geometry, geom2 geometry);
       public       postgres    false    6    1165    1165            �            1255    177850 %   geometry_overlaps(geometry, geometry)    FUNCTION     �   CREATE FUNCTION geometry_overlaps(geom1 geometry, geom2 geometry) RETURNS boolean
    LANGUAGE c IMMUTABLE STRICT
    AS '$libdir/postgis-2.3', 'gserialized_overlaps_2d';
 H   DROP FUNCTION public.geometry_overlaps(geom1 geometry, geom2 geometry);
       public       postgres    false    1165    1165    6                       1255    177909 (   geometry_overlaps_nd(geometry, geometry)    FUNCTION     �   CREATE FUNCTION geometry_overlaps_nd(geometry, geometry) RETURNS boolean
    LANGUAGE c IMMUTABLE STRICT
    AS '$libdir/postgis-2.3', 'gserialized_overlaps';
 ?   DROP FUNCTION public.geometry_overlaps_nd(geometry, geometry);
       public       postgres    false    1165    1165    6            �            1255    177865 %   geometry_overleft(geometry, geometry)    FUNCTION     �   CREATE FUNCTION geometry_overleft(geom1 geometry, geom2 geometry) RETURNS boolean
    LANGUAGE c IMMUTABLE STRICT
    AS '$libdir/postgis-2.3', 'gserialized_overleft_2d';
 H   DROP FUNCTION public.geometry_overleft(geom1 geometry, geom2 geometry);
       public       postgres    false    1165    6    1165            �            1255    177874 &   geometry_overright(geometry, geometry)    FUNCTION     �   CREATE FUNCTION geometry_overright(geom1 geometry, geom2 geometry) RETURNS boolean
    LANGUAGE c IMMUTABLE STRICT
    AS '$libdir/postgis-2.3', 'gserialized_overright_2d';
 I   DROP FUNCTION public.geometry_overright(geom1 geometry, geom2 geometry);
       public       postgres    false    6    1165    1165            �            1255    177875 "   geometry_right(geometry, geometry)    FUNCTION     �   CREATE FUNCTION geometry_right(geom1 geometry, geom2 geometry) RETURNS boolean
    LANGUAGE c IMMUTABLE STRICT
    AS '$libdir/postgis-2.3', 'gserialized_right_2d';
 E   DROP FUNCTION public.geometry_right(geom1 geometry, geom2 geometry);
       public       postgres    false    6    1165    1165            �            1255    177852 !   geometry_same(geometry, geometry)    FUNCTION     �   CREATE FUNCTION geometry_same(geom1 geometry, geom2 geometry) RETURNS boolean
    LANGUAGE c IMMUTABLE STRICT
    AS '$libdir/postgis-2.3', 'gserialized_same_2d';
 D   DROP FUNCTION public.geometry_same(geom1 geometry, geom2 geometry);
       public       postgres    false    1165    1165    6            �            1255    177859 #   geometry_within(geometry, geometry)    FUNCTION     �   CREATE FUNCTION geometry_within(geom1 geometry, geom2 geometry) RETURNS boolean
    LANGUAGE c IMMUTABLE STRICT
    AS '$libdir/postgis-2.3', 'gserialized_within_2d';
 F   DROP FUNCTION public.geometry_within(geom1 geometry, geom2 geometry);
       public       postgres    false    1165    6    1165                       1255    178525    geometrytype(geography)    FUNCTION     �   CREATE FUNCTION geometrytype(geography) RETURNS text
    LANGUAGE c IMMUTABLE STRICT
    AS '$libdir/postgis-2.3', 'LWGEOM_getTYPE';
 .   DROP FUNCTION public.geometrytype(geography);
       public       postgres    false    6    1199            W           1255    178302    geometrytype(geometry)    FUNCTION     �   CREATE FUNCTION geometrytype(geometry) RETURNS text
    LANGUAGE c IMMUTABLE STRICT COST 10
    AS '$libdir/postgis-2.3', 'LWGEOM_getTYPE';
 -   DROP FUNCTION public.geometrytype(geometry);
       public       postgres    false    6    1165            d           1255    178015    geomfromewkb(bytea)    FUNCTION     �   CREATE FUNCTION geomfromewkb(bytea) RETURNS geometry
    LANGUAGE c IMMUTABLE STRICT
    AS '$libdir/postgis-2.3', 'LWGEOMFromEWKB';
 *   DROP FUNCTION public.geomfromewkb(bytea);
       public       postgres    false    1165    6            g           1255    178018    geomfromewkt(text)    FUNCTION     �   CREATE FUNCTION geomfromewkt(text) RETURNS geometry
    LANGUAGE c IMMUTABLE STRICT
    AS '$libdir/postgis-2.3', 'parse_WKT_lwgeom';
 )   DROP FUNCTION public.geomfromewkt(text);
       public       postgres    false    1165    6            �           1255    178089    get_proj4_from_srid(integer)    FUNCTION     �   CREATE FUNCTION get_proj4_from_srid(integer) RETURNS text
    LANGUAGE plpgsql IMMUTABLE STRICT
    AS $_$
BEGIN
	RETURN proj4text::text FROM spatial_ref_sys WHERE srid= $1;
END;
$_$;
 3   DROP FUNCTION public.get_proj4_from_srid(integer);
       public       postgres    false    1    6            �           1255    178386    gettransactionid()    FUNCTION     p   CREATE FUNCTION gettransactionid() RETURNS xid
    LANGUAGE c
    AS '$libdir/postgis-2.3', 'getTransactionID';
 )   DROP FUNCTION public.gettransactionid();
       public       postgres    false    6            �            1255    177848 >   gserialized_gist_joinsel_2d(internal, oid, internal, smallint)    FUNCTION     �   CREATE FUNCTION gserialized_gist_joinsel_2d(internal, oid, internal, smallint) RETURNS double precision
    LANGUAGE c
    AS '$libdir/postgis-2.3', 'gserialized_gist_joinsel_2d';
 U   DROP FUNCTION public.gserialized_gist_joinsel_2d(internal, oid, internal, smallint);
       public       postgres    false    6            �            1255    177849 >   gserialized_gist_joinsel_nd(internal, oid, internal, smallint)    FUNCTION     �   CREATE FUNCTION gserialized_gist_joinsel_nd(internal, oid, internal, smallint) RETURNS double precision
    LANGUAGE c
    AS '$libdir/postgis-2.3', 'gserialized_gist_joinsel_nd';
 U   DROP FUNCTION public.gserialized_gist_joinsel_nd(internal, oid, internal, smallint);
       public       postgres    false    6            �            1255    177846 9   gserialized_gist_sel_2d(internal, oid, internal, integer)    FUNCTION     �   CREATE FUNCTION gserialized_gist_sel_2d(internal, oid, internal, integer) RETURNS double precision
    LANGUAGE c
    AS '$libdir/postgis-2.3', 'gserialized_gist_sel_2d';
 P   DROP FUNCTION public.gserialized_gist_sel_2d(internal, oid, internal, integer);
       public       postgres    false    6            �            1255    177847 9   gserialized_gist_sel_nd(internal, oid, internal, integer)    FUNCTION     �   CREATE FUNCTION gserialized_gist_sel_nd(internal, oid, internal, integer) RETURNS double precision
    LANGUAGE c
    AS '$libdir/postgis-2.3', 'gserialized_gist_sel_nd';
 P   DROP FUNCTION public.gserialized_gist_sel_nd(internal, oid, internal, integer);
       public       postgres    false    6            �           1255    178380    lockrow(text, text, text)    FUNCTION     �   CREATE FUNCTION lockrow(text, text, text) RETURNS integer
    LANGUAGE sql STRICT
    AS $_$ SELECT LockRow(current_schema(), $1, $2, $3, now()::timestamp+'1:00'); $_$;
 0   DROP FUNCTION public.lockrow(text, text, text);
       public       postgres    false    6            �           1255    178379    lockrow(text, text, text, text)    FUNCTION     �   CREATE FUNCTION lockrow(text, text, text, text) RETURNS integer
    LANGUAGE sql STRICT
    AS $_$ SELECT LockRow($1, $2, $3, $4, now()::timestamp+'1:00'); $_$;
 6   DROP FUNCTION public.lockrow(text, text, text, text);
       public       postgres    false    6            �           1255    178381 6   lockrow(text, text, text, timestamp without time zone)    FUNCTION     �   CREATE FUNCTION lockrow(text, text, text, timestamp without time zone) RETURNS integer
    LANGUAGE sql STRICT
    AS $_$ SELECT LockRow(current_schema(), $1, $2, $3, $4); $_$;
 M   DROP FUNCTION public.lockrow(text, text, text, timestamp without time zone);
       public       postgres    false    6            �           1255    178378 <   lockrow(text, text, text, text, timestamp without time zone)    FUNCTION     c  CREATE FUNCTION lockrow(text, text, text, text, timestamp without time zone) RETURNS integer
    LANGUAGE plpgsql STRICT
    AS $_$ 
DECLARE
	myschema alias for $1;
	mytable alias for $2;
	myrid   alias for $3;
	authid alias for $4;
	expires alias for $5;
	ret int;
	mytoid oid;
	myrec RECORD;
	
BEGIN

	IF NOT LongTransactionsEnabled() THEN
		RAISE EXCEPTION 'Long transaction support disabled, use EnableLongTransaction() to enable.';
	END IF;

	EXECUTE 'DELETE FROM authorization_table WHERE expires < now()'; 

	SELECT c.oid INTO mytoid FROM pg_class c, pg_namespace n
		WHERE c.relname = mytable
		AND c.relnamespace = n.oid
		AND n.nspname = myschema;

	-- RAISE NOTICE 'toid: %', mytoid;

	FOR myrec IN SELECT * FROM authorization_table WHERE 
		toid = mytoid AND rid = myrid
	LOOP
		IF myrec.authid != authid THEN
			RETURN 0;
		ELSE
			RETURN 1;
		END IF;
	END LOOP;

	EXECUTE 'INSERT INTO authorization_table VALUES ('||
		quote_literal(mytoid::text)||','||quote_literal(myrid)||
		','||quote_literal(expires::text)||
		','||quote_literal(authid) ||')';

	GET DIAGNOSTICS ret = ROW_COUNT;

	RETURN ret;
END;
$_$;
 S   DROP FUNCTION public.lockrow(text, text, text, text, timestamp without time zone);
       public       postgres    false    1    6            �           1255    178388    longtransactionsenabled()    FUNCTION     �   CREATE FUNCTION longtransactionsenabled() RETURNS boolean
    LANGUAGE plpgsql
    AS $$ 
DECLARE
	rec RECORD;
BEGIN
	FOR rec IN SELECT oid FROM pg_class WHERE relname = 'authorized_tables'
	LOOP
		return 't';
	END LOOP;
	return 'f';
END;
$$;
 0   DROP FUNCTION public.longtransactionsenabled();
       public       postgres    false    1    6            �            1255    177787    path(geometry)    FUNCTION     ~   CREATE FUNCTION path(geometry) RETURNS path
    LANGUAGE c IMMUTABLE STRICT
    AS '$libdir/postgis-2.3', 'geometry_to_path';
 %   DROP FUNCTION public.path(geometry);
       public       postgres    false    6    1165                       1255    178218 %   pgis_geometry_accum_finalfn(pgis_abs)    FUNCTION     �   CREATE FUNCTION pgis_geometry_accum_finalfn(pgis_abs) RETURNS geometry[]
    LANGUAGE c
    AS '$libdir/postgis-2.3', 'pgis_geometry_accum_finalfn';
 <   DROP FUNCTION public.pgis_geometry_accum_finalfn(pgis_abs);
       public       postgres    false    6    201    1165    200    1195                       1255    178215 /   pgis_geometry_accum_transfn(pgis_abs, geometry)    FUNCTION     �   CREATE FUNCTION pgis_geometry_accum_transfn(pgis_abs, geometry) RETURNS pgis_abs
    LANGUAGE c
    AS '$libdir/postgis-2.3', 'pgis_geometry_accum_transfn';
 F   DROP FUNCTION public.pgis_geometry_accum_transfn(pgis_abs, geometry);
       public       postgres    false    6    1195    1195    1165            	           1255    178216 A   pgis_geometry_accum_transfn(pgis_abs, geometry, double precision)    FUNCTION     �   CREATE FUNCTION pgis_geometry_accum_transfn(pgis_abs, geometry, double precision) RETURNS pgis_abs
    LANGUAGE c
    AS '$libdir/postgis-2.3', 'pgis_geometry_accum_transfn';
 X   DROP FUNCTION public.pgis_geometry_accum_transfn(pgis_abs, geometry, double precision);
       public       postgres    false    6    1195    1195    1165            
           1255    178217 J   pgis_geometry_accum_transfn(pgis_abs, geometry, double precision, integer)    FUNCTION     �   CREATE FUNCTION pgis_geometry_accum_transfn(pgis_abs, geometry, double precision, integer) RETURNS pgis_abs
    LANGUAGE c
    AS '$libdir/postgis-2.3', 'pgis_geometry_accum_transfn';
 a   DROP FUNCTION public.pgis_geometry_accum_transfn(pgis_abs, geometry, double precision, integer);
       public       postgres    false    6    1195    1195    1165                       1255    178222 3   pgis_geometry_clusterintersecting_finalfn(pgis_abs)    FUNCTION     �   CREATE FUNCTION pgis_geometry_clusterintersecting_finalfn(pgis_abs) RETURNS geometry[]
    LANGUAGE c
    AS '$libdir/postgis-2.3', 'pgis_geometry_clusterintersecting_finalfn';
 J   DROP FUNCTION public.pgis_geometry_clusterintersecting_finalfn(pgis_abs);
       public       postgres    false    6    201    1165    200    1195                       1255    178223 -   pgis_geometry_clusterwithin_finalfn(pgis_abs)    FUNCTION     �   CREATE FUNCTION pgis_geometry_clusterwithin_finalfn(pgis_abs) RETURNS geometry[]
    LANGUAGE c
    AS '$libdir/postgis-2.3', 'pgis_geometry_clusterwithin_finalfn';
 D   DROP FUNCTION public.pgis_geometry_clusterwithin_finalfn(pgis_abs);
       public       postgres    false    6    201    1165    200    1195                       1255    178220 '   pgis_geometry_collect_finalfn(pgis_abs)    FUNCTION     �   CREATE FUNCTION pgis_geometry_collect_finalfn(pgis_abs) RETURNS geometry
    LANGUAGE c
    AS '$libdir/postgis-2.3', 'pgis_geometry_collect_finalfn';
 >   DROP FUNCTION public.pgis_geometry_collect_finalfn(pgis_abs);
       public       postgres    false    6    1165    1195            �           1255    178224 (   pgis_geometry_makeline_finalfn(pgis_abs)    FUNCTION     �   CREATE FUNCTION pgis_geometry_makeline_finalfn(pgis_abs) RETURNS geometry
    LANGUAGE c
    AS '$libdir/postgis-2.3', 'pgis_geometry_makeline_finalfn';
 ?   DROP FUNCTION public.pgis_geometry_makeline_finalfn(pgis_abs);
       public       postgres    false    6    1165    1195                       1255    178221 *   pgis_geometry_polygonize_finalfn(pgis_abs)    FUNCTION     �   CREATE FUNCTION pgis_geometry_polygonize_finalfn(pgis_abs) RETURNS geometry
    LANGUAGE c
    AS '$libdir/postgis-2.3', 'pgis_geometry_polygonize_finalfn';
 A   DROP FUNCTION public.pgis_geometry_polygonize_finalfn(pgis_abs);
       public       postgres    false    6    1165    1195                       1255    178219 %   pgis_geometry_union_finalfn(pgis_abs)    FUNCTION     �   CREATE FUNCTION pgis_geometry_union_finalfn(pgis_abs) RETURNS geometry
    LANGUAGE c
    AS '$libdir/postgis-2.3', 'pgis_geometry_union_finalfn';
 <   DROP FUNCTION public.pgis_geometry_union_finalfn(pgis_abs);
       public       postgres    false    6    1165    1195            �            1255    177785    point(geometry)    FUNCTION     �   CREATE FUNCTION point(geometry) RETURNS point
    LANGUAGE c IMMUTABLE STRICT
    AS '$libdir/postgis-2.3', 'geometry_to_point';
 &   DROP FUNCTION public.point(geometry);
       public       postgres    false    6    1165            �            1255    177789    polygon(geometry)    FUNCTION     �   CREATE FUNCTION polygon(geometry) RETURNS polygon
    LANGUAGE c IMMUTABLE STRICT
    AS '$libdir/postgis-2.3', 'geometry_to_polygon';
 (   DROP FUNCTION public.polygon(geometry);
       public       postgres    false    6    1165            �           1255    178072 "   populate_geometry_columns(boolean)    FUNCTION     ,  CREATE FUNCTION populate_geometry_columns(use_typmod boolean DEFAULT true) RETURNS text
    LANGUAGE plpgsql
    AS $$
DECLARE
	inserted    integer;
	oldcount    integer;
	probed      integer;
	stale       integer;
	gcs         RECORD;
	gc          RECORD;
	gsrid       integer;
	gndims      integer;
	gtype       text;
	query       text;
	gc_is_valid boolean;

BEGIN
	SELECT count(*) INTO oldcount FROM geometry_columns;
	inserted := 0;

	-- Count the number of geometry columns in all tables and views
	SELECT count(DISTINCT c.oid) INTO probed
	FROM pg_class c,
		 pg_attribute a,
		 pg_type t,
		 pg_namespace n
	WHERE c.relkind IN('r','v','f')
		AND t.typname = 'geometry'
		AND a.attisdropped = false
		AND a.atttypid = t.oid
		AND a.attrelid = c.oid
		AND c.relnamespace = n.oid
		AND n.nspname NOT ILIKE 'pg_temp%' AND c.relname != 'raster_columns' ;

	-- Iterate through all non-dropped geometry columns
	RAISE DEBUG 'Processing Tables.....';

	FOR gcs IN
	SELECT DISTINCT ON (c.oid) c.oid, n.nspname, c.relname
		FROM pg_class c,
			 pg_attribute a,
			 pg_type t,
			 pg_namespace n
		WHERE c.relkind IN( 'r', 'f')
		AND t.typname = 'geometry'
		AND a.attisdropped = false
		AND a.atttypid = t.oid
		AND a.attrelid = c.oid
		AND c.relnamespace = n.oid
		AND n.nspname NOT ILIKE 'pg_temp%' AND c.relname != 'raster_columns'
	LOOP

		inserted := inserted + populate_geometry_columns(gcs.oid, use_typmod);
	END LOOP;

	IF oldcount > inserted THEN
	    stale = oldcount-inserted;
	ELSE
	    stale = 0;
	END IF;

	RETURN 'probed:' ||probed|| ' inserted:'||inserted;
END

$$;
 D   DROP FUNCTION public.populate_geometry_columns(use_typmod boolean);
       public       postgres    false    1    6            �           1255    178073 '   populate_geometry_columns(oid, boolean)    FUNCTION     �  CREATE FUNCTION populate_geometry_columns(tbl_oid oid, use_typmod boolean DEFAULT true) RETURNS integer
    LANGUAGE plpgsql
    AS $$
DECLARE
	gcs         RECORD;
	gc          RECORD;
	gc_old      RECORD;
	gsrid       integer;
	gndims      integer;
	gtype       text;
	query       text;
	gc_is_valid boolean;
	inserted    integer;
	constraint_successful boolean := false;

BEGIN
	inserted := 0;

	-- Iterate through all geometry columns in this table
	FOR gcs IN
	SELECT n.nspname, c.relname, a.attname
		FROM pg_class c,
			 pg_attribute a,
			 pg_type t,
			 pg_namespace n
		WHERE c.relkind IN('r', 'f')
		AND t.typname = 'geometry'
		AND a.attisdropped = false
		AND a.atttypid = t.oid
		AND a.attrelid = c.oid
		AND c.relnamespace = n.oid
		AND n.nspname NOT ILIKE 'pg_temp%'
		AND c.oid = tbl_oid
	LOOP

        RAISE DEBUG 'Processing column %.%.%', gcs.nspname, gcs.relname, gcs.attname;

        gc_is_valid := true;
        -- Find the srid, coord_dimension, and type of current geometry
        -- in geometry_columns -- which is now a view

        SELECT type, srid, coord_dimension INTO gc_old
            FROM geometry_columns
            WHERE f_table_schema = gcs.nspname AND f_table_name = gcs.relname AND f_geometry_column = gcs.attname;

        IF upper(gc_old.type) = 'GEOMETRY' THEN
        -- This is an unconstrained geometry we need to do something
        -- We need to figure out what to set the type by inspecting the data
            EXECUTE 'SELECT ST_srid(' || quote_ident(gcs.attname) || ') As srid, GeometryType(' || quote_ident(gcs.attname) || ') As type, ST_NDims(' || quote_ident(gcs.attname) || ') As dims ' ||
                     ' FROM ONLY ' || quote_ident(gcs.nspname) || '.' || quote_ident(gcs.relname) ||
                     ' WHERE ' || quote_ident(gcs.attname) || ' IS NOT NULL LIMIT 1;'
                INTO gc;
            IF gc IS NULL THEN -- there is no data so we can not determine geometry type
            	RAISE WARNING 'No data in table %.%, so no information to determine geometry type and srid', gcs.nspname, gcs.relname;
            	RETURN 0;
            END IF;
            gsrid := gc.srid; gtype := gc.type; gndims := gc.dims;

            IF use_typmod THEN
                BEGIN
                    EXECUTE 'ALTER TABLE ' || quote_ident(gcs.nspname) || '.' || quote_ident(gcs.relname) || ' ALTER COLUMN ' || quote_ident(gcs.attname) ||
                        ' TYPE geometry(' || postgis_type_name(gtype, gndims, true) || ', ' || gsrid::text  || ') ';
                    inserted := inserted + 1;
                EXCEPTION
                        WHEN invalid_parameter_value OR feature_not_supported THEN
                        RAISE WARNING 'Could not convert ''%'' in ''%.%'' to use typmod with srid %, type %: %', quote_ident(gcs.attname), quote_ident(gcs.nspname), quote_ident(gcs.relname), gsrid, postgis_type_name(gtype, gndims, true), SQLERRM;
                            gc_is_valid := false;
                END;

            ELSE
                -- Try to apply srid check to column
            	constraint_successful = false;
                IF (gsrid > 0 AND postgis_constraint_srid(gcs.nspname, gcs.relname,gcs.attname) IS NULL ) THEN
                    BEGIN
                        EXECUTE 'ALTER TABLE ONLY ' || quote_ident(gcs.nspname) || '.' || quote_ident(gcs.relname) ||
                                 ' ADD CONSTRAINT ' || quote_ident('enforce_srid_' || gcs.attname) ||
                                 ' CHECK (ST_srid(' || quote_ident(gcs.attname) || ') = ' || gsrid || ')';
                        constraint_successful := true;
                    EXCEPTION
                        WHEN check_violation THEN
                            RAISE WARNING 'Not inserting ''%'' in ''%.%'' into geometry_columns: could not apply constraint CHECK (st_srid(%) = %)', quote_ident(gcs.attname), quote_ident(gcs.nspname), quote_ident(gcs.relname), quote_ident(gcs.attname), gsrid;
                            gc_is_valid := false;
                    END;
                END IF;

                -- Try to apply ndims check to column
                IF (gndims IS NOT NULL AND postgis_constraint_dims(gcs.nspname, gcs.relname,gcs.attname) IS NULL ) THEN
                    BEGIN
                        EXECUTE 'ALTER TABLE ONLY ' || quote_ident(gcs.nspname) || '.' || quote_ident(gcs.relname) || '
                                 ADD CONSTRAINT ' || quote_ident('enforce_dims_' || gcs.attname) || '
                                 CHECK (st_ndims(' || quote_ident(gcs.attname) || ') = '||gndims||')';
                        constraint_successful := true;
                    EXCEPTION
                        WHEN check_violation THEN
                            RAISE WARNING 'Not inserting ''%'' in ''%.%'' into geometry_columns: could not apply constraint CHECK (st_ndims(%) = %)', quote_ident(gcs.attname), quote_ident(gcs.nspname), quote_ident(gcs.relname), quote_ident(gcs.attname), gndims;
                            gc_is_valid := false;
                    END;
                END IF;

                -- Try to apply geometrytype check to column
                IF (gtype IS NOT NULL AND postgis_constraint_type(gcs.nspname, gcs.relname,gcs.attname) IS NULL ) THEN
                    BEGIN
                        EXECUTE 'ALTER TABLE ONLY ' || quote_ident(gcs.nspname) || '.' || quote_ident(gcs.relname) || '
                        ADD CONSTRAINT ' || quote_ident('enforce_geotype_' || gcs.attname) || '
                        CHECK (geometrytype(' || quote_ident(gcs.attname) || ') = ' || quote_literal(gtype) || ')';
                        constraint_successful := true;
                    EXCEPTION
                        WHEN check_violation THEN
                            -- No geometry check can be applied. This column contains a number of geometry types.
                            RAISE WARNING 'Could not add geometry type check (%) to table column: %.%.%', gtype, quote_ident(gcs.nspname),quote_ident(gcs.relname),quote_ident(gcs.attname);
                    END;
                END IF;
                 --only count if we were successful in applying at least one constraint
                IF constraint_successful THEN
                	inserted := inserted + 1;
                END IF;
            END IF;
	    END IF;

	END LOOP;

	RETURN inserted;
END

$$;
 Q   DROP FUNCTION public.populate_geometry_columns(tbl_oid oid, use_typmod boolean);
       public       postgres    false    1    6                        1255    177950    postgis_addbbox(geometry)    FUNCTION     �   CREATE FUNCTION postgis_addbbox(geometry) RETURNS geometry
    LANGUAGE c IMMUTABLE STRICT
    AS '$libdir/postgis-2.3', 'LWGEOM_addBBOX';
 0   DROP FUNCTION public.postgis_addbbox(geometry);
       public       postgres    false    1165    6    1165            i           1255    178020    postgis_cache_bbox()    FUNCTION     p   CREATE FUNCTION postgis_cache_bbox() RETURNS trigger
    LANGUAGE c
    AS '$libdir/postgis-2.3', 'cache_bbox';
 +   DROP FUNCTION public.postgis_cache_bbox();
       public       postgres    false    6                       1255    178534 )   postgis_constraint_dims(text, text, text)    FUNCTION     �  CREATE FUNCTION postgis_constraint_dims(geomschema text, geomtable text, geomcolumn text) RETURNS integer
    LANGUAGE sql STABLE STRICT
    AS $_$
SELECT  replace(split_part(s.consrc, ' = ', 2), ')', '')::integer
		 FROM pg_class c, pg_namespace n, pg_attribute a, pg_constraint s
		 WHERE n.nspname = $1
		 AND c.relname = $2
		 AND a.attname = $3
		 AND a.attrelid = c.oid
		 AND s.connamespace = n.oid
		 AND s.conrelid = c.oid
		 AND a.attnum = ANY (s.conkey)
		 AND s.consrc LIKE '%ndims(% = %';
$_$;
 `   DROP FUNCTION public.postgis_constraint_dims(geomschema text, geomtable text, geomcolumn text);
       public       postgres    false    6                       1255    178533 )   postgis_constraint_srid(text, text, text)    FUNCTION       CREATE FUNCTION postgis_constraint_srid(geomschema text, geomtable text, geomcolumn text) RETURNS integer
    LANGUAGE sql STABLE STRICT
    AS $_$
SELECT replace(replace(split_part(s.consrc, ' = ', 2), ')', ''), '(', '')::integer
		 FROM pg_class c, pg_namespace n, pg_attribute a, pg_constraint s
		 WHERE n.nspname = $1
		 AND c.relname = $2
		 AND a.attname = $3
		 AND a.attrelid = c.oid
		 AND s.connamespace = n.oid
		 AND s.conrelid = c.oid
		 AND a.attnum = ANY (s.conkey)
		 AND s.consrc LIKE '%srid(% = %';
$_$;
 `   DROP FUNCTION public.postgis_constraint_srid(geomschema text, geomtable text, geomcolumn text);
       public       postgres    false    6                       1255    178535 )   postgis_constraint_type(text, text, text)    FUNCTION       CREATE FUNCTION postgis_constraint_type(geomschema text, geomtable text, geomcolumn text) RETURNS character varying
    LANGUAGE sql STABLE STRICT
    AS $_$
SELECT  replace(split_part(s.consrc, '''', 2), ')', '')::varchar
		 FROM pg_class c, pg_namespace n, pg_attribute a, pg_constraint s
		 WHERE n.nspname = $1
		 AND c.relname = $2
		 AND a.attname = $3
		 AND a.attrelid = c.oid
		 AND s.connamespace = n.oid
		 AND s.conrelid = c.oid
		 AND a.attnum = ANY (s.conkey)
		 AND s.consrc LIKE '%geometrytype(% = %';
$_$;
 `   DROP FUNCTION public.postgis_constraint_type(geomschema text, geomtable text, geomcolumn text);
       public       postgres    false    6            !           1255    177951    postgis_dropbbox(geometry)    FUNCTION     �   CREATE FUNCTION postgis_dropbbox(geometry) RETURNS geometry
    LANGUAGE c IMMUTABLE STRICT
    AS '$libdir/postgis-2.3', 'LWGEOM_dropBBOX';
 1   DROP FUNCTION public.postgis_dropbbox(geometry);
       public       postgres    false    1165    6    1165            �           1255    178108    postgis_full_version()    FUNCTION     �  CREATE FUNCTION postgis_full_version() RETURNS text
    LANGUAGE plpgsql IMMUTABLE
    AS $$
DECLARE
	libver text;
	svnver text;
	projver text;
	geosver text;
	sfcgalver text;
	cgalver text;
	gdalver text;
	libxmlver text;
	liblwgeomver text;
	dbproc text;
	relproc text;
	fullver text;
	rast_lib_ver text;
	rast_scr_ver text;
	topo_scr_ver text;
	json_lib_ver text;
	sfcgal_lib_ver text;
	sfcgal_scr_ver text;
BEGIN
	SELECT postgis_lib_version() INTO libver;
	SELECT postgis_proj_version() INTO projver;
	SELECT postgis_geos_version() INTO geosver;
	SELECT postgis_libjson_version() INTO json_lib_ver;
	BEGIN
		SELECT postgis_gdal_version() INTO gdalver;
	EXCEPTION
		WHEN undefined_function THEN
			gdalver := NULL;
			RAISE NOTICE 'Function postgis_gdal_version() not found.  Is raster support enabled and rtpostgis.sql installed?';
	END;
	BEGIN
		SELECT postgis_sfcgal_version() INTO sfcgalver;
    BEGIN
      SELECT postgis_sfcgal_scripts_installed() INTO sfcgal_scr_ver;
    EXCEPTION
      WHEN undefined_function THEN
        sfcgal_scr_ver := 'missing';
    END;
	EXCEPTION
		WHEN undefined_function THEN
			sfcgalver := NULL;
	END;
	SELECT postgis_liblwgeom_version() INTO liblwgeomver;
	SELECT postgis_libxml_version() INTO libxmlver;
	SELECT postgis_scripts_installed() INTO dbproc;
	SELECT postgis_scripts_released() INTO relproc;
	select postgis_svn_version() INTO svnver;
	BEGIN
		SELECT topology.postgis_topology_scripts_installed() INTO topo_scr_ver;
	EXCEPTION
		WHEN undefined_function OR invalid_schema_name THEN
			topo_scr_ver := NULL;
			RAISE DEBUG 'Function postgis_topology_scripts_installed() not found. Is topology support enabled and topology.sql installed?';
		WHEN insufficient_privilege THEN
			RAISE NOTICE 'Topology support cannot be inspected. Is current user granted USAGE on schema "topology" ?';
		WHEN OTHERS THEN
			RAISE NOTICE 'Function postgis_topology_scripts_installed() could not be called: % (%)', SQLERRM, SQLSTATE;
	END;

	BEGIN
		SELECT postgis_raster_scripts_installed() INTO rast_scr_ver;
	EXCEPTION
		WHEN undefined_function THEN
			rast_scr_ver := NULL;
			RAISE NOTICE 'Function postgis_raster_scripts_installed() not found. Is raster support enabled and rtpostgis.sql installed?';
	END;

	BEGIN
		SELECT postgis_raster_lib_version() INTO rast_lib_ver;
	EXCEPTION
		WHEN undefined_function THEN
			rast_lib_ver := NULL;
			RAISE NOTICE 'Function postgis_raster_lib_version() not found. Is raster support enabled and rtpostgis.sql installed?';
	END;

	fullver = 'POSTGIS="' || libver;

	IF  svnver IS NOT NULL THEN
		fullver = fullver || ' r' || svnver;
	END IF;

	fullver = fullver || '"';

	IF liblwgeomver != relproc THEN
		fullver = fullver || ' (liblwgeom version mismatch: "' || liblwgeomver || '")';
	END IF;


	IF  geosver IS NOT NULL THEN
		fullver = fullver || ' GEOS="' || geosver || '"';
	END IF;

	IF  sfcgalver IS NOT NULL THEN
		fullver = fullver || ' SFCGAL="' || sfcgalver || '"';
	END IF;

	IF  projver IS NOT NULL THEN
		fullver = fullver || ' PROJ="' || projver || '"';
	END IF;

	IF  gdalver IS NOT NULL THEN
		fullver = fullver || ' GDAL="' || gdalver || '"';
	END IF;

	IF  libxmlver IS NOT NULL THEN
		fullver = fullver || ' LIBXML="' || libxmlver || '"';
	END IF;

	IF json_lib_ver IS NOT NULL THEN
		fullver = fullver || ' LIBJSON="' || json_lib_ver || '"';
	END IF;

	-- fullver = fullver || ' DBPROC="' || dbproc || '"';
	-- fullver = fullver || ' RELPROC="' || relproc || '"';

	IF dbproc != relproc THEN
		fullver = fullver || ' (core procs from "' || dbproc || '" need upgrade)';
	END IF;

	IF topo_scr_ver IS NOT NULL THEN
		fullver = fullver || ' TOPOLOGY';
		IF topo_scr_ver != relproc THEN
			fullver = fullver || ' (topology procs from "' || topo_scr_ver || '" need upgrade)';
		END IF;
	END IF;

	IF rast_lib_ver IS NOT NULL THEN
		fullver = fullver || ' RASTER';
		IF rast_lib_ver != relproc THEN
			fullver = fullver || ' (raster lib from "' || rast_lib_ver || '" need upgrade)';
		END IF;
	END IF;

	IF rast_scr_ver IS NOT NULL AND rast_scr_ver != relproc THEN
		fullver = fullver || ' (raster procs from "' || rast_scr_ver || '" need upgrade)';
	END IF;

	IF sfcgal_scr_ver IS NOT NULL AND sfcgal_scr_ver != relproc THEN
    fullver = fullver || ' (sfcgal procs from "' || sfcgal_scr_ver || '" need upgrade)';
	END IF;

	RETURN fullver;
END
$$;
 -   DROP FUNCTION public.postgis_full_version();
       public       postgres    false    6    1            �           1255    178103    postgis_geos_version()    FUNCTION     �   CREATE FUNCTION postgis_geos_version() RETURNS text
    LANGUAGE c IMMUTABLE
    AS '$libdir/postgis-2.3', 'postgis_geos_version';
 -   DROP FUNCTION public.postgis_geos_version();
       public       postgres    false    6                       1255    177939    postgis_getbbox(geometry)    FUNCTION     �   CREATE FUNCTION postgis_getbbox(geometry) RETURNS box2d
    LANGUAGE c IMMUTABLE STRICT
    AS '$libdir/postgis-2.3', 'LWGEOM_to_BOX2DF';
 0   DROP FUNCTION public.postgis_getbbox(geometry);
       public       postgres    false    6    1173    1165            "           1255    177952    postgis_hasbbox(geometry)    FUNCTION     �   CREATE FUNCTION postgis_hasbbox(geometry) RETURNS boolean
    LANGUAGE c IMMUTABLE STRICT
    AS '$libdir/postgis-2.3', 'LWGEOM_hasBBOX';
 0   DROP FUNCTION public.postgis_hasbbox(geometry);
       public       postgres    false    6    1165            �           1255    178107    postgis_lib_build_date()    FUNCTION     �   CREATE FUNCTION postgis_lib_build_date() RETURNS text
    LANGUAGE c IMMUTABLE
    AS '$libdir/postgis-2.3', 'postgis_lib_build_date';
 /   DROP FUNCTION public.postgis_lib_build_date();
       public       postgres    false    6            �           1255    178101    postgis_lib_version()    FUNCTION     �   CREATE FUNCTION postgis_lib_version() RETURNS text
    LANGUAGE c IMMUTABLE
    AS '$libdir/postgis-2.3', 'postgis_lib_version';
 ,   DROP FUNCTION public.postgis_lib_version();
       public       postgres    false    6            =           1255    178277    postgis_libjson_version()    FUNCTION     �   CREATE FUNCTION postgis_libjson_version() RETURNS text
    LANGUAGE c IMMUTABLE STRICT
    AS '$libdir/postgis-2.3', 'postgis_libjson_version';
 0   DROP FUNCTION public.postgis_libjson_version();
       public       postgres    false    6            �           1255    178098    postgis_liblwgeom_version()    FUNCTION     �   CREATE FUNCTION postgis_liblwgeom_version() RETURNS text
    LANGUAGE c IMMUTABLE
    AS '$libdir/postgis-2.3', 'postgis_liblwgeom_version';
 2   DROP FUNCTION public.postgis_liblwgeom_version();
       public       postgres    false    6            �           1255    178105    postgis_libxml_version()    FUNCTION     �   CREATE FUNCTION postgis_libxml_version() RETURNS text
    LANGUAGE c IMMUTABLE
    AS '$libdir/postgis-2.3', 'postgis_libxml_version';
 /   DROP FUNCTION public.postgis_libxml_version();
       public       postgres    false    6            U           1255    178003    postgis_noop(geometry)    FUNCTION     �   CREATE FUNCTION postgis_noop(geometry) RETURNS geometry
    LANGUAGE c STRICT COST 10
    AS '$libdir/postgis-2.3', 'LWGEOM_noop';
 -   DROP FUNCTION public.postgis_noop(geometry);
       public       postgres    false    1165    6    1165            �           1255    178099    postgis_proj_version()    FUNCTION     �   CREATE FUNCTION postgis_proj_version() RETURNS text
    LANGUAGE c IMMUTABLE
    AS '$libdir/postgis-2.3', 'postgis_proj_version';
 -   DROP FUNCTION public.postgis_proj_version();
       public       postgres    false    6            �           1255    178106    postgis_scripts_build_date()    FUNCTION     �   CREATE FUNCTION postgis_scripts_build_date() RETURNS text
    LANGUAGE sql IMMUTABLE
    AS $$SELECT '2016-10-08 17:20:23'::text AS version$$;
 3   DROP FUNCTION public.postgis_scripts_build_date();
       public       postgres    false    6            �           1255    178100    postgis_scripts_installed()    FUNCTION     �   CREATE FUNCTION postgis_scripts_installed() RETURNS text
    LANGUAGE sql IMMUTABLE
    AS $$ SELECT '2.3.0'::text || ' r' || 15146::text AS version $$;
 2   DROP FUNCTION public.postgis_scripts_installed();
       public       postgres    false    6            �           1255    178102    postgis_scripts_released()    FUNCTION     �   CREATE FUNCTION postgis_scripts_released() RETURNS text
    LANGUAGE c IMMUTABLE
    AS '$libdir/postgis-2.3', 'postgis_scripts_released';
 1   DROP FUNCTION public.postgis_scripts_released();
       public       postgres    false    6            �           1255    178104    postgis_svn_version()    FUNCTION     �   CREATE FUNCTION postgis_svn_version() RETURNS text
    LANGUAGE c IMMUTABLE
    AS '$libdir/postgis-2.3', 'postgis_svn_version';
 ,   DROP FUNCTION public.postgis_svn_version();
       public       postgres    false    6            �           1255    178092 9   postgis_transform_geometry(geometry, text, text, integer)    FUNCTION     �   CREATE FUNCTION postgis_transform_geometry(geometry, text, text, integer) RETURNS geometry
    LANGUAGE c IMMUTABLE STRICT
    AS '$libdir/postgis-2.3', 'transform_geom';
 P   DROP FUNCTION public.postgis_transform_geometry(geometry, text, text, integer);
       public       postgres    false    1165    6    1165                       1255    178532 6   postgis_type_name(character varying, integer, boolean)    FUNCTION     l  CREATE FUNCTION postgis_type_name(geomname character varying, coord_dimension integer, use_new_name boolean DEFAULT true) RETURNS character varying
    LANGUAGE sql IMMUTABLE STRICT COST 200
    AS $_$
 SELECT CASE WHEN $3 THEN new_name ELSE old_name END As geomname
	FROM
 	( VALUES
 		 ('GEOMETRY', 'Geometry', 2) ,
 		 	('GEOMETRY', 'GeometryZ', 3) ,
 		 	('GEOMETRY', 'GeometryZM', 4) ,
			('GEOMETRYCOLLECTION', 'GeometryCollection', 2) ,
			('GEOMETRYCOLLECTION', 'GeometryCollectionZ', 3) ,
			('GEOMETRYCOLLECTIONM', 'GeometryCollectionM', 3) ,
			('GEOMETRYCOLLECTION', 'GeometryCollectionZM', 4) ,

			('POINT', 'Point',2) ,
			('POINTM','PointM',3) ,
			('POINT', 'PointZ',3) ,
			('POINT', 'PointZM',4) ,

			('MULTIPOINT','MultiPoint',2) ,
			('MULTIPOINT','MultiPointZ',3) ,
			('MULTIPOINTM','MultiPointM',3) ,
			('MULTIPOINT','MultiPointZM',4) ,

			('POLYGON', 'Polygon',2) ,
			('POLYGON', 'PolygonZ',3) ,
			('POLYGONM', 'PolygonM',3) ,
			('POLYGON', 'PolygonZM',4) ,

			('MULTIPOLYGON', 'MultiPolygon',2) ,
			('MULTIPOLYGON', 'MultiPolygonZ',3) ,
			('MULTIPOLYGONM', 'MultiPolygonM',3) ,
			('MULTIPOLYGON', 'MultiPolygonZM',4) ,

			('MULTILINESTRING', 'MultiLineString',2) ,
			('MULTILINESTRING', 'MultiLineStringZ',3) ,
			('MULTILINESTRINGM', 'MultiLineStringM',3) ,
			('MULTILINESTRING', 'MultiLineStringZM',4) ,

			('LINESTRING', 'LineString',2) ,
			('LINESTRING', 'LineStringZ',3) ,
			('LINESTRINGM', 'LineStringM',3) ,
			('LINESTRING', 'LineStringZM',4) ,

			('CIRCULARSTRING', 'CircularString',2) ,
			('CIRCULARSTRING', 'CircularStringZ',3) ,
			('CIRCULARSTRINGM', 'CircularStringM',3) ,
			('CIRCULARSTRING', 'CircularStringZM',4) ,

			('COMPOUNDCURVE', 'CompoundCurve',2) ,
			('COMPOUNDCURVE', 'CompoundCurveZ',3) ,
			('COMPOUNDCURVEM', 'CompoundCurveM',3) ,
			('COMPOUNDCURVE', 'CompoundCurveZM',4) ,

			('CURVEPOLYGON', 'CurvePolygon',2) ,
			('CURVEPOLYGON', 'CurvePolygonZ',3) ,
			('CURVEPOLYGONM', 'CurvePolygonM',3) ,
			('CURVEPOLYGON', 'CurvePolygonZM',4) ,

			('MULTICURVE', 'MultiCurve',2 ) ,
			('MULTICURVE', 'MultiCurveZ',3 ) ,
			('MULTICURVEM', 'MultiCurveM',3 ) ,
			('MULTICURVE', 'MultiCurveZM',4 ) ,

			('MULTISURFACE', 'MultiSurface', 2) ,
			('MULTISURFACE', 'MultiSurfaceZ', 3) ,
			('MULTISURFACEM', 'MultiSurfaceM', 3) ,
			('MULTISURFACE', 'MultiSurfaceZM', 4) ,

			('POLYHEDRALSURFACE', 'PolyhedralSurface',2) ,
			('POLYHEDRALSURFACE', 'PolyhedralSurfaceZ',3) ,
			('POLYHEDRALSURFACEM', 'PolyhedralSurfaceM',3) ,
			('POLYHEDRALSURFACE', 'PolyhedralSurfaceZM',4) ,

			('TRIANGLE', 'Triangle',2) ,
			('TRIANGLE', 'TriangleZ',3) ,
			('TRIANGLEM', 'TriangleM',3) ,
			('TRIANGLE', 'TriangleZM',4) ,

			('TIN', 'Tin', 2),
			('TIN', 'TinZ', 3),
			('TIN', 'TinM', 3),
			('TIN', 'TinZM', 4) )
			 As g(old_name, new_name, coord_dimension)
		WHERE (upper(old_name) = upper($1) OR upper(new_name) = upper($1))
			AND coord_dimension = $2;
$_$;
 s   DROP FUNCTION public.postgis_type_name(geomname character varying, coord_dimension integer, use_new_name boolean);
       public       postgres    false    6            �           1255    178410    postgis_typmod_dims(integer)    FUNCTION     �   CREATE FUNCTION postgis_typmod_dims(integer) RETURNS integer
    LANGUAGE c IMMUTABLE STRICT
    AS '$libdir/postgis-2.3', 'postgis_typmod_dims';
 3   DROP FUNCTION public.postgis_typmod_dims(integer);
       public       postgres    false    6            �           1255    178411    postgis_typmod_srid(integer)    FUNCTION     �   CREATE FUNCTION postgis_typmod_srid(integer) RETURNS integer
    LANGUAGE c IMMUTABLE STRICT
    AS '$libdir/postgis-2.3', 'postgis_typmod_srid';
 3   DROP FUNCTION public.postgis_typmod_srid(integer);
       public       postgres    false    6            �           1255    178412    postgis_typmod_type(integer)    FUNCTION     �   CREATE FUNCTION postgis_typmod_type(integer) RETURNS text
    LANGUAGE c IMMUTABLE STRICT
    AS '$libdir/postgis-2.3', 'postgis_typmod_type';
 3   DROP FUNCTION public.postgis_typmod_type(integer);
       public       postgres    false    6            �           1255    178097    postgis_version()    FUNCTION     y   CREATE FUNCTION postgis_version() RETURNS text
    LANGUAGE c IMMUTABLE
    AS '$libdir/postgis-2.3', 'postgis_version';
 (   DROP FUNCTION public.postgis_version();
       public       postgres    false    6                       1255    178546 %   st_3dclosestpoint(geometry, geometry)    FUNCTION     �   CREATE FUNCTION st_3dclosestpoint(geom1 geometry, geom2 geometry) RETURNS geometry
    LANGUAGE c IMMUTABLE STRICT COST 100
    AS '$libdir/postgis-2.3', 'LWGEOM_closestpoint3d';
 H   DROP FUNCTION public.st_3dclosestpoint(geom1 geometry, geom2 geometry);
       public       postgres    false    1165    1165    1165    6            !           1255    178552 7   st_3ddfullywithin(geometry, geometry, double precision)    FUNCTION     �   CREATE FUNCTION st_3ddfullywithin(geom1 geometry, geom2 geometry, double precision) RETURNS boolean
    LANGUAGE sql IMMUTABLE
    AS $_$SELECT $1 OPERATOR(&&) ST_Expand($2,$3) AND $2 OPERATOR(&&) ST_Expand($1,$3) AND _ST_3DDFullyWithin($1, $2, $3)$_$;
 Z   DROP FUNCTION public.st_3ddfullywithin(geom1 geometry, geom2 geometry, double precision);
       public       postgres    false    1165    1165    6                       1255    178544 !   st_3ddistance(geometry, geometry)    FUNCTION     �   CREATE FUNCTION st_3ddistance(geom1 geometry, geom2 geometry) RETURNS double precision
    LANGUAGE c IMMUTABLE STRICT COST 100
    AS '$libdir/postgis-2.3', 'distance3d';
 D   DROP FUNCTION public.st_3ddistance(geom1 geometry, geom2 geometry);
       public       postgres    false    1165    1165    6                       1255    178550 2   st_3ddwithin(geometry, geometry, double precision)    FUNCTION     �   CREATE FUNCTION st_3ddwithin(geom1 geometry, geom2 geometry, double precision) RETURNS boolean
    LANGUAGE sql IMMUTABLE
    AS $_$SELECT $1 OPERATOR(&&) ST_Expand($2,$3) AND $2 OPERATOR(&&) ST_Expand($1,$3) AND _ST_3DDWithin($1, $2, $3)$_$;
 U   DROP FUNCTION public.st_3ddwithin(geom1 geometry, geom2 geometry, double precision);
       public       postgres    false    1165    6    1165            #           1255    178554 #   st_3dintersects(geometry, geometry)    FUNCTION     �   CREATE FUNCTION st_3dintersects(geom1 geometry, geom2 geometry) RETURNS boolean
    LANGUAGE sql IMMUTABLE
    AS $_$SELECT $1 OPERATOR(&&) $2 AND _ST_3DIntersects($1, $2)$_$;
 F   DROP FUNCTION public.st_3dintersects(geom1 geometry, geom2 geometry);
       public       postgres    false    1165    6    1165            (           1255    177958    st_3dlength(geometry)    FUNCTION     �   CREATE FUNCTION st_3dlength(geometry) RETURNS double precision
    LANGUAGE c IMMUTABLE STRICT COST 20
    AS '$libdir/postgis-2.3', 'LWGEOM_length_linestring';
 ,   DROP FUNCTION public.st_3dlength(geometry);
       public       postgres    false    6    1165            ,           1255    177962 (   st_3dlength_spheroid(geometry, spheroid)    FUNCTION     �   CREATE FUNCTION st_3dlength_spheroid(geometry, spheroid) RETURNS double precision
    LANGUAGE sql IMMUTABLE STRICT
    AS $_$ SELECT _postgis_deprecate('ST_3DLength_Spheroid', 'ST_LengthSpheroid', '2.2.0');
    SELECT ST_LengthSpheroid($1,$2);
  $_$;
 ?   DROP FUNCTION public.st_3dlength_spheroid(geometry, spheroid);
       public       postgres    false    1165    6    1161                       1255    178548 $   st_3dlongestline(geometry, geometry)    FUNCTION     �   CREATE FUNCTION st_3dlongestline(geom1 geometry, geom2 geometry) RETURNS geometry
    LANGUAGE c IMMUTABLE STRICT COST 100
    AS '$libdir/postgis-2.3', 'LWGEOM_longestline3d';
 G   DROP FUNCTION public.st_3dlongestline(geom1 geometry, geom2 geometry);
       public       postgres    false    6    1165    1165    1165            n           1255    178025     st_3dmakebox(geometry, geometry)    FUNCTION     �   CREATE FUNCTION st_3dmakebox(geom1 geometry, geom2 geometry) RETURNS box3d
    LANGUAGE c IMMUTABLE STRICT
    AS '$libdir/postgis-2.3', 'BOX3D_construct';
 C   DROP FUNCTION public.st_3dmakebox(geom1 geometry, geom2 geometry);
       public       postgres    false    1169    1165    1165    6                       1255    178545 $   st_3dmaxdistance(geometry, geometry)    FUNCTION     �   CREATE FUNCTION st_3dmaxdistance(geom1 geometry, geom2 geometry) RETURNS double precision
    LANGUAGE c IMMUTABLE STRICT COST 100
    AS '$libdir/postgis-2.3', 'LWGEOM_maxdistance3d';
 G   DROP FUNCTION public.st_3dmaxdistance(geom1 geometry, geom2 geometry);
       public       postgres    false    6    1165    1165            0           1255    177966    st_3dperimeter(geometry)    FUNCTION     �   CREATE FUNCTION st_3dperimeter(geometry) RETURNS double precision
    LANGUAGE c IMMUTABLE STRICT COST 10
    AS '$libdir/postgis-2.3', 'LWGEOM_perimeter_poly';
 /   DROP FUNCTION public.st_3dperimeter(geometry);
       public       postgres    false    6    1165                       1255    178547 %   st_3dshortestline(geometry, geometry)    FUNCTION     �   CREATE FUNCTION st_3dshortestline(geom1 geometry, geom2 geometry) RETURNS geometry
    LANGUAGE c IMMUTABLE STRICT COST 100
    AS '$libdir/postgis-2.3', 'LWGEOM_shortestline3d';
 H   DROP FUNCTION public.st_3dshortestline(geom1 geometry, geom2 geometry);
       public       postgres    false    1165    1165    1165    6            �           1255    178151 ;   st_addmeasure(geometry, double precision, double precision)    FUNCTION     �   CREATE FUNCTION st_addmeasure(geometry, double precision, double precision) RETURNS geometry
    LANGUAGE c IMMUTABLE STRICT
    AS '$libdir/postgis-2.3', 'ST_AddMeasure';
 R   DROP FUNCTION public.st_addmeasure(geometry, double precision, double precision);
       public       postgres    false    6    1165    1165            r           1255    178029    st_addpoint(geometry, geometry)    FUNCTION     �   CREATE FUNCTION st_addpoint(geom1 geometry, geom2 geometry) RETURNS geometry
    LANGUAGE c IMMUTABLE STRICT
    AS '$libdir/postgis-2.3', 'LWGEOM_addpoint';
 B   DROP FUNCTION public.st_addpoint(geom1 geometry, geom2 geometry);
       public       postgres    false    1165    6    1165    1165            s           1255    178030 (   st_addpoint(geometry, geometry, integer)    FUNCTION     �   CREATE FUNCTION st_addpoint(geom1 geometry, geom2 geometry, integer) RETURNS geometry
    LANGUAGE c IMMUTABLE STRICT
    AS '$libdir/postgis-2.3', 'LWGEOM_addpoint';
 K   DROP FUNCTION public.st_addpoint(geom1 geometry, geom2 geometry, integer);
       public       postgres    false    1165    6    1165    1165            }           1255    178043    st_affine(geometry, double precision, double precision, double precision, double precision, double precision, double precision)    FUNCTION       CREATE FUNCTION st_affine(geometry, double precision, double precision, double precision, double precision, double precision, double precision) RETURNS geometry
    LANGUAGE sql IMMUTABLE STRICT
    AS $_$SELECT ST_Affine($1,  $2, $3, 0,  $4, $5, 0,  0, 0, 1,  $6, $7, 0)$_$;
 �   DROP FUNCTION public.st_affine(geometry, double precision, double precision, double precision, double precision, double precision, double precision);
       public       postgres    false    1165    6    1165            ]           1255    178042 �   st_affine(geometry, double precision, double precision, double precision, double precision, double precision, double precision, double precision, double precision, double precision, double precision, double precision, double precision)    FUNCTION     d  CREATE FUNCTION st_affine(geometry, double precision, double precision, double precision, double precision, double precision, double precision, double precision, double precision, double precision, double precision, double precision, double precision) RETURNS geometry
    LANGUAGE c IMMUTABLE STRICT COST 25
    AS '$libdir/postgis-2.3', 'LWGEOM_affine';
   DROP FUNCTION public.st_affine(geometry, double precision, double precision, double precision, double precision, double precision, double precision, double precision, double precision, double precision, double precision, double precision, double precision);
       public       postgres    false    1165    1165    6            �           1255    178496    st_area(text)    FUNCTION     �   CREATE FUNCTION st_area(text) RETURNS double precision
    LANGUAGE sql IMMUTABLE STRICT
    AS $_$ SELECT ST_Area($1::geometry);  $_$;
 $   DROP FUNCTION public.st_area(text);
       public       postgres    false    6            4           1255    177970    st_area(geometry)    FUNCTION     �   CREATE FUNCTION st_area(geometry) RETURNS double precision
    LANGUAGE c IMMUTABLE STRICT COST 10
    AS '$libdir/postgis-2.3', 'area';
 (   DROP FUNCTION public.st_area(geometry);
       public       postgres    false    6    1165            �           1255    178495    st_area(geography, boolean)    FUNCTION     �   CREATE FUNCTION st_area(geog geography, use_spheroid boolean DEFAULT true) RETURNS double precision
    LANGUAGE c IMMUTABLE STRICT COST 100
    AS '$libdir/postgis-2.3', 'geography_area';
 D   DROP FUNCTION public.st_area(geog geography, use_spheroid boolean);
       public       postgres    false    1199    6            3           1255    177969    st_area2d(geometry)    FUNCTION     �   CREATE FUNCTION st_area2d(geometry) RETURNS double precision
    LANGUAGE c IMMUTABLE STRICT COST 10
    AS '$libdir/postgis-2.3', 'LWGEOM_area_polygon';
 *   DROP FUNCTION public.st_area2d(geometry);
       public       postgres    false    1165    6            
           1255    178521    st_asbinary(geography)    FUNCTION     �   CREATE FUNCTION st_asbinary(geography) RETURNS bytea
    LANGUAGE c IMMUTABLE STRICT
    AS '$libdir/postgis-2.3', 'LWGEOM_asBinary';
 -   DROP FUNCTION public.st_asbinary(geography);
       public       postgres    false    6    1199            E           1255    178312    st_asbinary(geometry)    FUNCTION     �   CREATE FUNCTION st_asbinary(geometry) RETURNS bytea
    LANGUAGE c IMMUTABLE STRICT COST 10
    AS '$libdir/postgis-2.3', 'LWGEOM_asBinary';
 ,   DROP FUNCTION public.st_asbinary(geometry);
       public       postgres    false    6    1165                       1255    178522    st_asbinary(geography, text)    FUNCTION     �   CREATE FUNCTION st_asbinary(geography, text) RETURNS bytea
    LANGUAGE sql IMMUTABLE STRICT
    AS $_$ SELECT ST_AsBinary($1::geometry, $2);  $_$;
 3   DROP FUNCTION public.st_asbinary(geography, text);
       public       postgres    false    6    1199            `           1255    178311    st_asbinary(geometry, text)    FUNCTION     �   CREATE FUNCTION st_asbinary(geometry, text) RETURNS bytea
    LANGUAGE c IMMUTABLE STRICT COST 10
    AS '$libdir/postgis-2.3', 'LWGEOM_asBinary';
 2   DROP FUNCTION public.st_asbinary(geometry, text);
       public       postgres    false    6    1165            ?           1255    178279 '   st_asencodedpolyline(geometry, integer)    FUNCTION     �   CREATE FUNCTION st_asencodedpolyline(geom geometry, integer DEFAULT 5) RETURNS text
    LANGUAGE c IMMUTABLE STRICT
    AS '$libdir/postgis-2.3', 'LWGEOM_asEncodedPolyline';
 C   DROP FUNCTION public.st_asencodedpolyline(geom geometry, integer);
       public       postgres    false    6    1165            _           1255    178010    st_asewkb(geometry)    FUNCTION     �   CREATE FUNCTION st_asewkb(geometry) RETURNS bytea
    LANGUAGE c IMMUTABLE STRICT COST 10
    AS '$libdir/postgis-2.3', 'WKBFromLWGEOM';
 *   DROP FUNCTION public.st_asewkb(geometry);
       public       postgres    false    6    1165            b           1255    178013    st_asewkb(geometry, text)    FUNCTION     �   CREATE FUNCTION st_asewkb(geometry, text) RETURNS bytea
    LANGUAGE c IMMUTABLE STRICT COST 10
    AS '$libdir/postgis-2.3', 'WKBFromLWGEOM';
 0   DROP FUNCTION public.st_asewkb(geometry, text);
       public       postgres    false    6    1165                       1255    178524    st_asewkt(text)    FUNCTION     �   CREATE FUNCTION st_asewkt(text) RETURNS text
    LANGUAGE sql IMMUTABLE STRICT
    AS $_$ SELECT ST_AsEWKT($1::geometry);  $_$;
 &   DROP FUNCTION public.st_asewkt(text);
       public       postgres    false    6                       1255    178523    st_asewkt(geography)    FUNCTION     �   CREATE FUNCTION st_asewkt(geography) RETURNS text
    LANGUAGE c IMMUTABLE STRICT
    AS '$libdir/postgis-2.3', 'LWGEOM_asEWKT';
 +   DROP FUNCTION public.st_asewkt(geography);
       public       postgres    false    1199    6            Y           1255    178007    st_asewkt(geometry)    FUNCTION     �   CREATE FUNCTION st_asewkt(geometry) RETURNS text
    LANGUAGE c IMMUTABLE STRICT COST 750
    AS '$libdir/postgis-2.3', 'LWGEOM_asEWKT';
 *   DROP FUNCTION public.st_asewkt(geometry);
       public       postgres    false    1165    6            �           1255    178476    st_asgeojson(text)    FUNCTION     �   CREATE FUNCTION st_asgeojson(text) RETURNS text
    LANGUAGE sql IMMUTABLE STRICT
    AS $_$ SELECT _ST_AsGeoJson(1, $1::geometry,15,0);  $_$;
 )   DROP FUNCTION public.st_asgeojson(text);
       public       postgres    false    6            �           1255    178477 )   st_asgeojson(geography, integer, integer)    FUNCTION     �   CREATE FUNCTION st_asgeojson(geog geography, maxdecimaldigits integer DEFAULT 15, options integer DEFAULT 0) RETURNS text
    LANGUAGE sql IMMUTABLE STRICT
    AS $_$ SELECT _ST_AsGeoJson(1, $1, $2, $3); $_$;
 ^   DROP FUNCTION public.st_asgeojson(geog geography, maxdecimaldigits integer, options integer);
       public       postgres    false    1199    6            H           1255    178287 (   st_asgeojson(geometry, integer, integer)    FUNCTION     �   CREATE FUNCTION st_asgeojson(geom geometry, maxdecimaldigits integer DEFAULT 15, options integer DEFAULT 0) RETURNS text
    LANGUAGE c IMMUTABLE STRICT COST 1000
    AS '$libdir/postgis-2.3', 'LWGEOM_asGeoJson';
 ]   DROP FUNCTION public.st_asgeojson(geom geometry, maxdecimaldigits integer, options integer);
       public       postgres    false    6    1165            �           1255    178478 2   st_asgeojson(integer, geography, integer, integer)    FUNCTION     �   CREATE FUNCTION st_asgeojson(gj_version integer, geog geography, maxdecimaldigits integer DEFAULT 15, options integer DEFAULT 0) RETURNS text
    LANGUAGE sql IMMUTABLE STRICT
    AS $_$ SELECT _ST_AsGeoJson($1, $2, $3, $4); $_$;
 r   DROP FUNCTION public.st_asgeojson(gj_version integer, geog geography, maxdecimaldigits integer, options integer);
       public       postgres    false    1199    6            J           1255    178289 1   st_asgeojson(integer, geometry, integer, integer)    FUNCTION     �   CREATE FUNCTION st_asgeojson(gj_version integer, geom geometry, maxdecimaldigits integer DEFAULT 15, options integer DEFAULT 0) RETURNS text
    LANGUAGE sql IMMUTABLE STRICT
    AS $_$ SELECT ST_AsGeoJson($2::geometry, $3::int4, $4::int4); $_$;
 q   DROP FUNCTION public.st_asgeojson(gj_version integer, geom geometry, maxdecimaldigits integer, options integer);
       public       postgres    false    6    1165            �           1255    178468    st_asgml(text)    FUNCTION     �   CREATE FUNCTION st_asgml(text) RETURNS text
    LANGUAGE sql IMMUTABLE STRICT
    AS $_$ SELECT _ST_AsGML(2,$1::geometry,15,0, NULL, NULL);  $_$;
 %   DROP FUNCTION public.st_asgml(text);
       public       postgres    false    6            �           1255    178469 %   st_asgml(geography, integer, integer)    FUNCTION     �   CREATE FUNCTION st_asgml(geog geography, maxdecimaldigits integer DEFAULT 15, options integer DEFAULT 0) RETURNS text
    LANGUAGE sql IMMUTABLE STRICT
    AS $_$SELECT _ST_AsGML(2, $1, $2, $3, null, null)$_$;
 Z   DROP FUNCTION public.st_asgml(geog geography, maxdecimaldigits integer, options integer);
       public       postgres    false    1199    6            B           1255    178282 $   st_asgml(geometry, integer, integer)    FUNCTION     �   CREATE FUNCTION st_asgml(geom geometry, maxdecimaldigits integer DEFAULT 15, options integer DEFAULT 0) RETURNS text
    LANGUAGE sql IMMUTABLE STRICT
    AS $_$ SELECT _ST_AsGML(2, $1, $2, $3, null, null); $_$;
 Y   DROP FUNCTION public.st_asgml(geom geometry, maxdecimaldigits integer, options integer);
       public       postgres    false    6    1165            �           1255    178470 :   st_asgml(integer, geography, integer, integer, text, text)    FUNCTION       CREATE FUNCTION st_asgml(version integer, geog geography, maxdecimaldigits integer DEFAULT 15, options integer DEFAULT 0, nprefix text DEFAULT NULL::text, id text DEFAULT NULL::text) RETURNS text
    LANGUAGE sql IMMUTABLE
    AS $_$ SELECT _ST_AsGML($1, $2, $3, $4, $5, $6);$_$;
 �   DROP FUNCTION public.st_asgml(version integer, geog geography, maxdecimaldigits integer, options integer, nprefix text, id text);
       public       postgres    false    6    1199            C           1255    178283 9   st_asgml(integer, geometry, integer, integer, text, text)    FUNCTION       CREATE FUNCTION st_asgml(version integer, geom geometry, maxdecimaldigits integer DEFAULT 15, options integer DEFAULT 0, nprefix text DEFAULT NULL::text, id text DEFAULT NULL::text) RETURNS text
    LANGUAGE sql IMMUTABLE
    AS $_$ SELECT _ST_AsGML($1, $2, $3, $4, $5, $6); $_$;
 �   DROP FUNCTION public.st_asgml(version integer, geom geometry, maxdecimaldigits integer, options integer, nprefix text, id text);
       public       postgres    false    6    1165            `           1255    178011    st_ashexewkb(geometry)    FUNCTION     �   CREATE FUNCTION st_ashexewkb(geometry) RETURNS text
    LANGUAGE c IMMUTABLE STRICT COST 25
    AS '$libdir/postgis-2.3', 'LWGEOM_asHEXEWKB';
 -   DROP FUNCTION public.st_ashexewkb(geometry);
       public       postgres    false    1165    6            a           1255    178012    st_ashexewkb(geometry, text)    FUNCTION     �   CREATE FUNCTION st_ashexewkb(geometry, text) RETURNS text
    LANGUAGE c IMMUTABLE STRICT COST 25
    AS '$libdir/postgis-2.3', 'LWGEOM_asHEXEWKB';
 3   DROP FUNCTION public.st_ashexewkb(geometry, text);
       public       postgres    false    6    1165            �           1255    178473    st_askml(text)    FUNCTION     �   CREATE FUNCTION st_askml(text) RETURNS text
    LANGUAGE sql IMMUTABLE STRICT
    AS $_$ SELECT _ST_AsKML(2, $1::geometry, 15, null);  $_$;
 %   DROP FUNCTION public.st_askml(text);
       public       postgres    false    6            �           1255    178472    st_askml(geography, integer)    FUNCTION     �   CREATE FUNCTION st_askml(geog geography, maxdecimaldigits integer DEFAULT 15) RETURNS text
    LANGUAGE sql IMMUTABLE STRICT
    AS $_$SELECT _ST_AsKML(2, $1, $2, null)$_$;
 I   DROP FUNCTION public.st_askml(geog geography, maxdecimaldigits integer);
       public       postgres    false    1199    6            F           1255    178285    st_askml(geometry, integer)    FUNCTION     �   CREATE FUNCTION st_askml(geom geometry, maxdecimaldigits integer DEFAULT 15) RETURNS text
    LANGUAGE sql IMMUTABLE STRICT
    AS $_$ SELECT _ST_AsKML(2, ST_Transform($1,4326), $2, null); $_$;
 H   DROP FUNCTION public.st_askml(geom geometry, maxdecimaldigits integer);
       public       postgres    false    6    1165            �           1255    178474 +   st_askml(integer, geography, integer, text)    FUNCTION     �   CREATE FUNCTION st_askml(version integer, geog geography, maxdecimaldigits integer DEFAULT 15, nprefix text DEFAULT NULL::text) RETURNS text
    LANGUAGE sql IMMUTABLE
    AS $_$SELECT _ST_AsKML($1, $2, $3, $4)$_$;
 h   DROP FUNCTION public.st_askml(version integer, geog geography, maxdecimaldigits integer, nprefix text);
       public       postgres    false    1199    6            G           1255    178286 *   st_askml(integer, geometry, integer, text)    FUNCTION     �   CREATE FUNCTION st_askml(version integer, geom geometry, maxdecimaldigits integer DEFAULT 15, nprefix text DEFAULT NULL::text) RETURNS text
    LANGUAGE sql IMMUTABLE
    AS $_$ SELECT _ST_AsKML($1, ST_Transform($2,4326), $3, $4); $_$;
 g   DROP FUNCTION public.st_askml(version integer, geom geometry, maxdecimaldigits integer, nprefix text);
       public       postgres    false    6    1165            c           1255    178014    st_aslatlontext(geometry, text)    FUNCTION     �   CREATE FUNCTION st_aslatlontext(geom geometry, tmpl text DEFAULT ''::text) RETURNS text
    LANGUAGE c IMMUTABLE STRICT
    AS '$libdir/postgis-2.3', 'LWGEOM_to_latlon';
 @   DROP FUNCTION public.st_aslatlontext(geom geometry, tmpl text);
       public       postgres    false    1165    6            �           1255    178466    st_assvg(text)    FUNCTION     �   CREATE FUNCTION st_assvg(text) RETURNS text
    LANGUAGE sql IMMUTABLE STRICT
    AS $_$ SELECT ST_AsSVG($1::geometry,0,15);  $_$;
 %   DROP FUNCTION public.st_assvg(text);
       public       postgres    false    6            �           1255    178465 %   st_assvg(geography, integer, integer)    FUNCTION     �   CREATE FUNCTION st_assvg(geog geography, rel integer DEFAULT 0, maxdecimaldigits integer DEFAULT 15) RETURNS text
    LANGUAGE c IMMUTABLE STRICT
    AS '$libdir/postgis-2.3', 'geography_as_svg';
 V   DROP FUNCTION public.st_assvg(geog geography, rel integer, maxdecimaldigits integer);
       public       postgres    false    1199    6            @           1255    178280 $   st_assvg(geometry, integer, integer)    FUNCTION     �   CREATE FUNCTION st_assvg(geom geometry, rel integer DEFAULT 0, maxdecimaldigits integer DEFAULT 15) RETURNS text
    LANGUAGE c IMMUTABLE STRICT COST 1000
    AS '$libdir/postgis-2.3', 'LWGEOM_asSVG';
 U   DROP FUNCTION public.st_assvg(geom geometry, rel integer, maxdecimaldigits integer);
       public       postgres    false    6    1165            �           1255    178406    st_astext(text)    FUNCTION     �   CREATE FUNCTION st_astext(text) RETURNS text
    LANGUAGE sql IMMUTABLE STRICT
    AS $_$ SELECT ST_AsText($1::geometry);  $_$;
 &   DROP FUNCTION public.st_astext(text);
       public       postgres    false    6            �           1255    178405    st_astext(geography)    FUNCTION     �   CREATE FUNCTION st_astext(geography) RETURNS text
    LANGUAGE c IMMUTABLE STRICT
    AS '$libdir/postgis-2.3', 'LWGEOM_asText';
 +   DROP FUNCTION public.st_astext(geography);
       public       postgres    false    1199    6            a           1255    178313    st_astext(geometry)    FUNCTION     �   CREATE FUNCTION st_astext(geometry) RETURNS text
    LANGUAGE c IMMUTABLE STRICT COST 750
    AS '$libdir/postgis-2.3', 'LWGEOM_asText';
 *   DROP FUNCTION public.st_astext(geometry);
       public       postgres    false    6    1165            Z           1255    178008 @   st_astwkb(geometry, integer, integer, integer, boolean, boolean)    FUNCTION     D  CREATE FUNCTION st_astwkb(geom geometry, prec integer DEFAULT NULL::integer, prec_z integer DEFAULT NULL::integer, prec_m integer DEFAULT NULL::integer, with_sizes boolean DEFAULT NULL::boolean, with_boxes boolean DEFAULT NULL::boolean) RETURNS bytea
    LANGUAGE c IMMUTABLE
    AS '$libdir/postgis-2.3', 'TWKBFromLWGEOM';
 �   DROP FUNCTION public.st_astwkb(geom geometry, prec integer, prec_z integer, prec_m integer, with_sizes boolean, with_boxes boolean);
       public       postgres    false    6    1165            ^           1255    178009 L   st_astwkb(geometry[], bigint[], integer, integer, integer, boolean, boolean)    FUNCTION     Y  CREATE FUNCTION st_astwkb(geom geometry[], ids bigint[], prec integer DEFAULT NULL::integer, prec_z integer DEFAULT NULL::integer, prec_m integer DEFAULT NULL::integer, with_sizes boolean DEFAULT NULL::boolean, with_boxes boolean DEFAULT NULL::boolean) RETURNS bytea
    LANGUAGE c IMMUTABLE
    AS '$libdir/postgis-2.3', 'TWKBFromLWGEOMArray';
 �   DROP FUNCTION public.st_astwkb(geom geometry[], ids bigint[], prec integer, prec_z integer, prec_m integer, with_sizes boolean, with_boxes boolean);
       public       postgres    false    6    201    1165    200            5           1255    178573 $   st_asx3d(geometry, integer, integer)    FUNCTION     �   CREATE FUNCTION st_asx3d(geom geometry, maxdecimaldigits integer DEFAULT 15, options integer DEFAULT 0) RETURNS text
    LANGUAGE sql IMMUTABLE
    AS $_$SELECT _ST_AsX3D(3,$1,$2,$3,'');$_$;
 Y   DROP FUNCTION public.st_asx3d(geom geometry, maxdecimaldigits integer, options integer);
       public       postgres    false    1165    6            �           1255    178500     st_azimuth(geography, geography)    FUNCTION     �   CREATE FUNCTION st_azimuth(geog1 geography, geog2 geography) RETURNS double precision
    LANGUAGE c IMMUTABLE STRICT COST 100
    AS '$libdir/postgis-2.3', 'geography_azimuth';
 C   DROP FUNCTION public.st_azimuth(geog1 geography, geog2 geography);
       public       postgres    false    6    1199    1199            :           1255    177976    st_azimuth(geometry, geometry)    FUNCTION     �   CREATE FUNCTION st_azimuth(geom1 geometry, geom2 geometry) RETURNS double precision
    LANGUAGE c IMMUTABLE STRICT
    AS '$libdir/postgis-2.3', 'LWGEOM_azimuth';
 A   DROP FUNCTION public.st_azimuth(geom1 geometry, geom2 geometry);
       public       postgres    false    1165    6    1165            �           1255    178376 !   st_bdmpolyfromtext(text, integer)    FUNCTION     �  CREATE FUNCTION st_bdmpolyfromtext(text, integer) RETURNS geometry
    LANGUAGE plpgsql IMMUTABLE STRICT
    AS $_$
DECLARE
	geomtext alias for $1;
	srid alias for $2;
	mline geometry;
	geom geometry;
BEGIN
	mline := ST_MultiLineStringFromText(geomtext, srid);

	IF mline IS NULL
	THEN
		RAISE EXCEPTION 'Input is not a MultiLinestring';
	END IF;

	geom := ST_Multi(ST_BuildArea(mline));

	RETURN geom;
END;
$_$;
 8   DROP FUNCTION public.st_bdmpolyfromtext(text, integer);
       public       postgres    false    6    1    1165            �           1255    178375     st_bdpolyfromtext(text, integer)    FUNCTION     '  CREATE FUNCTION st_bdpolyfromtext(text, integer) RETURNS geometry
    LANGUAGE plpgsql IMMUTABLE STRICT
    AS $_$
DECLARE
	geomtext alias for $1;
	srid alias for $2;
	mline geometry;
	geom geometry;
BEGIN
	mline := ST_MultiLineStringFromText(geomtext, srid);

	IF mline IS NULL
	THEN
		RAISE EXCEPTION 'Input is not a MultiLinestring';
	END IF;

	geom := ST_BuildArea(mline);

	IF GeometryType(geom) != 'POLYGON'
	THEN
		RAISE EXCEPTION 'Input returns more then a single polygon, try using BdMPolyFromText instead';
	END IF;

	RETURN geom;
END;
$_$;
 7   DROP FUNCTION public.st_bdpolyfromtext(text, integer);
       public       postgres    false    6    1    1165            �           1255    178180    st_boundary(geometry)    FUNCTION     �   CREATE FUNCTION st_boundary(geometry) RETURNS geometry
    LANGUAGE c IMMUTABLE STRICT
    AS '$libdir/postgis-2.3', 'boundary';
 ,   DROP FUNCTION public.st_boundary(geometry);
       public       postgres    false    6    1165    1165            R           1255    178000 &   st_boundingdiagonal(geometry, boolean)    FUNCTION     �   CREATE FUNCTION st_boundingdiagonal(geom geometry, fits boolean DEFAULT false) RETURNS geometry
    LANGUAGE c IMMUTABLE STRICT
    AS '$libdir/postgis-2.3', 'ST_BoundingDiagonal';
 G   DROP FUNCTION public.st_boundingdiagonal(geom geometry, fits boolean);
       public       postgres    false    1165    6    1165            L           1255    178291 "   st_box2dfromgeohash(text, integer)    FUNCTION     �   CREATE FUNCTION st_box2dfromgeohash(text, integer DEFAULT NULL::integer) RETURNS box2d
    LANGUAGE c IMMUTABLE
    AS '$libdir/postgis-2.3', 'box2d_from_geohash';
 9   DROP FUNCTION public.st_box2dfromgeohash(text, integer);
       public       postgres    false    6    1173                       1255    178516 !   st_buffer(text, double precision)    FUNCTION     �   CREATE FUNCTION st_buffer(text, double precision) RETURNS geometry
    LANGUAGE sql IMMUTABLE STRICT
    AS $_$ SELECT ST_Buffer($1::geometry, $2);  $_$;
 8   DROP FUNCTION public.st_buffer(text, double precision);
       public       postgres    false    1165    6                       1255    178513 &   st_buffer(geography, double precision)    FUNCTION     �   CREATE FUNCTION st_buffer(geography, double precision) RETURNS geography
    LANGUAGE sql IMMUTABLE STRICT
    AS $_$SELECT geography(ST_Transform(ST_Buffer(ST_Transform(geometry($1), _ST_BestSRID($1)), $2), 4326))$_$;
 =   DROP FUNCTION public.st_buffer(geography, double precision);
       public       postgres    false    6    1199    1199            �           1255    178157 %   st_buffer(geometry, double precision)    FUNCTION     �   CREATE FUNCTION st_buffer(geometry, double precision) RETURNS geometry
    LANGUAGE c IMMUTABLE STRICT COST 5000
    AS '$libdir/postgis-2.3', 'buffer';
 <   DROP FUNCTION public.st_buffer(geometry, double precision);
       public       postgres    false    6    1165    1165            �           1255    178517 *   st_buffer(text, double precision, integer)    FUNCTION     �   CREATE FUNCTION st_buffer(text, double precision, integer) RETURNS geometry
    LANGUAGE sql IMMUTABLE STRICT
    AS $_$ SELECT ST_Buffer($1::geometry, $2, $3);  $_$;
 A   DROP FUNCTION public.st_buffer(text, double precision, integer);
       public       postgres    false    6    1165                       1255    178518 '   st_buffer(text, double precision, text)    FUNCTION     �   CREATE FUNCTION st_buffer(text, double precision, text) RETURNS geometry
    LANGUAGE sql IMMUTABLE STRICT
    AS $_$ SELECT ST_Buffer($1::geometry, $2, $3);  $_$;
 >   DROP FUNCTION public.st_buffer(text, double precision, text);
       public       postgres    false    1165    6                       1255    178514 /   st_buffer(geography, double precision, integer)    FUNCTION     �   CREATE FUNCTION st_buffer(geography, double precision, integer) RETURNS geography
    LANGUAGE sql IMMUTABLE STRICT
    AS $_$SELECT geography(ST_Transform(ST_Buffer(ST_Transform(geometry($1), _ST_BestSRID($1)), $2, $3), 4326))$_$;
 F   DROP FUNCTION public.st_buffer(geography, double precision, integer);
       public       postgres    false    1199    1199    6                       1255    178515 ,   st_buffer(geography, double precision, text)    FUNCTION     �   CREATE FUNCTION st_buffer(geography, double precision, text) RETURNS geography
    LANGUAGE sql IMMUTABLE STRICT
    AS $_$SELECT geography(ST_Transform(ST_Buffer(ST_Transform(geometry($1), _ST_BestSRID($1)), $2, $3), 4326))$_$;
 C   DROP FUNCTION public.st_buffer(geography, double precision, text);
       public       postgres    false    1199    6    1199            �           1255    178159 .   st_buffer(geometry, double precision, integer)    FUNCTION     �   CREATE FUNCTION st_buffer(geometry, double precision, integer) RETURNS geometry
    LANGUAGE sql IMMUTABLE STRICT
    AS $_$ SELECT _ST_Buffer($1, $2,
		CAST('quad_segs='||CAST($3 AS text) as cstring))
	   $_$;
 E   DROP FUNCTION public.st_buffer(geometry, double precision, integer);
       public       postgres    false    6    1165    1165            �           1255    178160 +   st_buffer(geometry, double precision, text)    FUNCTION     �   CREATE FUNCTION st_buffer(geometry, double precision, text) RETURNS geometry
    LANGUAGE sql IMMUTABLE STRICT
    AS $_$ SELECT _ST_Buffer($1, $2,
		CAST( regexp_replace($3, '^[0123456789]+$',
			'quad_segs='||$3) AS cstring)
		)
	   $_$;
 B   DROP FUNCTION public.st_buffer(geometry, double precision, text);
       public       postgres    false    6    1165    1165            y           1255    178036    st_buildarea(geometry)    FUNCTION     �   CREATE FUNCTION st_buildarea(geometry) RETURNS geometry
    LANGUAGE c IMMUTABLE STRICT COST 100
    AS '$libdir/postgis-2.3', 'ST_BuildArea';
 -   DROP FUNCTION public.st_buildarea(geometry);
       public       postgres    false    6    1165    1165            -           1255    178261    st_centroid(geometry)    FUNCTION     �   CREATE FUNCTION st_centroid(geometry) RETURNS geometry
    LANGUAGE c IMMUTABLE STRICT COST 100
    AS '$libdir/postgis-2.3', 'centroid';
 ,   DROP FUNCTION public.st_centroid(geometry);
       public       postgres    false    6    1165    1165            �           1255    178190    st_cleangeometry(geometry)    FUNCTION     �   CREATE FUNCTION st_cleangeometry(geometry) RETURNS geometry
    LANGUAGE c IMMUTABLE STRICT COST 1000
    AS '$libdir/postgis-2.3', 'ST_CleanGeometry';
 1   DROP FUNCTION public.st_cleangeometry(geometry);
       public       postgres    false    6    1165    1165            �           1255    178187    st_clipbybox2d(geometry, box2d)    FUNCTION     �   CREATE FUNCTION st_clipbybox2d(geom geometry, box box2d) RETURNS geometry
    LANGUAGE c IMMUTABLE STRICT COST 50
    AS '$libdir/postgis-2.3', 'ST_ClipByBox2d';
 ?   DROP FUNCTION public.st_clipbybox2d(geom geometry, box box2d);
       public       postgres    false    6    1165    1165    1173            �           1255    178367 #   st_closestpoint(geometry, geometry)    FUNCTION     �   CREATE FUNCTION st_closestpoint(geom1 geometry, geom2 geometry) RETURNS geometry
    LANGUAGE c IMMUTABLE STRICT
    AS '$libdir/postgis-2.3', 'LWGEOM_closestpoint';
 F   DROP FUNCTION public.st_closestpoint(geom1 geometry, geom2 geometry);
       public       postgres    false    6    1165    1165    1165            �           1255    178152 -   st_closestpointofapproach(geometry, geometry)    FUNCTION     �   CREATE FUNCTION st_closestpointofapproach(geometry, geometry) RETURNS double precision
    LANGUAGE c IMMUTABLE STRICT
    AS '$libdir/postgis-2.3', 'ST_ClosestPointOfApproach';
 D   DROP FUNCTION public.st_closestpointofapproach(geometry, geometry);
       public       postgres    false    6    1165    1165            [           1255    178040 5   st_clusterdbscan(geometry, double precision, integer)    FUNCTION     �   CREATE FUNCTION st_clusterdbscan(geometry, eps double precision, minpoints integer) RETURNS integer
    LANGUAGE c WINDOW IMMUTABLE STRICT
    AS '$libdir/postgis-2.3', 'ST_ClusterDBSCAN';
 Z   DROP FUNCTION public.st_clusterdbscan(geometry, eps double precision, minpoints integer);
       public       postgres    false    1165    6            {           1255    178038 "   st_clusterintersecting(geometry[])    FUNCTION     �   CREATE FUNCTION st_clusterintersecting(geometry[]) RETURNS geometry[]
    LANGUAGE c IMMUTABLE STRICT
    AS '$libdir/postgis-2.3', 'clusterintersecting_garray';
 9   DROP FUNCTION public.st_clusterintersecting(geometry[]);
       public       postgres    false    6    201    1165    200    201    1165    200                       1255    178233 #   st_clusterkmeans(geometry, integer)    FUNCTION     �   CREATE FUNCTION st_clusterkmeans(geom geometry, k integer) RETURNS integer
    LANGUAGE c WINDOW STRICT
    AS '$libdir/postgis-2.3', 'ST_ClusterKMeans';
 A   DROP FUNCTION public.st_clusterkmeans(geom geometry, k integer);
       public       postgres    false    6    1165            |           1255    178039 .   st_clusterwithin(geometry[], double precision)    FUNCTION     �   CREATE FUNCTION st_clusterwithin(geometry[], double precision) RETURNS geometry[]
    LANGUAGE c IMMUTABLE STRICT
    AS '$libdir/postgis-2.3', 'cluster_within_distance_garray';
 E   DROP FUNCTION public.st_clusterwithin(geometry[], double precision);
       public       postgres    false    6    201    1165    200    201    1165    200                       1255    178209    st_collect(geometry[])    FUNCTION     �   CREATE FUNCTION st_collect(geometry[]) RETURNS geometry
    LANGUAGE c IMMUTABLE STRICT
    AS '$libdir/postgis-2.3', 'LWGEOM_collect_garray';
 -   DROP FUNCTION public.st_collect(geometry[]);
       public       postgres    false    6    1165    201    1165    200                       1255    178207    st_collect(geometry, geometry)    FUNCTION     �   CREATE FUNCTION st_collect(geom1 geometry, geom2 geometry) RETURNS geometry
    LANGUAGE c IMMUTABLE
    AS '$libdir/postgis-2.3', 'LWGEOM_collect';
 A   DROP FUNCTION public.st_collect(geom1 geometry, geom2 geometry);
       public       postgres    false    6    1165    1165    1165            G           1255    177989 '   st_collectionextract(geometry, integer)    FUNCTION     �   CREATE FUNCTION st_collectionextract(geometry, integer) RETURNS geometry
    LANGUAGE c IMMUTABLE STRICT
    AS '$libdir/postgis-2.3', 'ST_CollectionExtract';
 >   DROP FUNCTION public.st_collectionextract(geometry, integer);
       public       postgres    false    1165    6    1165            H           1255    177990 !   st_collectionhomogenize(geometry)    FUNCTION     �   CREATE FUNCTION st_collectionhomogenize(geometry) RETURNS geometry
    LANGUAGE c IMMUTABLE STRICT
    AS '$libdir/postgis-2.3', 'ST_CollectionHomogenize';
 8   DROP FUNCTION public.st_collectionhomogenize(geometry);
       public       postgres    false    6    1165    1165                       1255    178204     st_combine_bbox(box2d, geometry)    FUNCTION     �   CREATE FUNCTION st_combine_bbox(box2d, geometry) RETURNS box2d
    LANGUAGE sql IMMUTABLE
    AS $_$ SELECT _postgis_deprecate('ST_Combine_BBox', 'ST_CombineBbox', '2.2.0');
    SELECT ST_CombineBbox($1,$2);
  $_$;
 7   DROP FUNCTION public.st_combine_bbox(box2d, geometry);
       public       postgres    false    6    1173    1173    1165                       1255    178202     st_combine_bbox(box3d, geometry)    FUNCTION     �   CREATE FUNCTION st_combine_bbox(box3d, geometry) RETURNS box3d
    LANGUAGE sql IMMUTABLE
    AS $_$ SELECT _postgis_deprecate('ST_Combine_BBox', 'ST_CombineBbox', '2.2.0');
    SELECT ST_CombineBbox($1,$2);
  $_$;
 7   DROP FUNCTION public.st_combine_bbox(box3d, geometry);
       public       postgres    false    6    1169    1169    1165                       1255    178203    st_combinebbox(box2d, geometry)    FUNCTION     �   CREATE FUNCTION st_combinebbox(box2d, geometry) RETURNS box2d
    LANGUAGE c IMMUTABLE
    AS '$libdir/postgis-2.3', 'BOX2D_combine';
 6   DROP FUNCTION public.st_combinebbox(box2d, geometry);
       public       postgres    false    6    1173    1173    1165                        1255    178201    st_combinebbox(box3d, box3d)    FUNCTION     �   CREATE FUNCTION st_combinebbox(box3d, box3d) RETURNS box3d
    LANGUAGE c IMMUTABLE
    AS '$libdir/postgis-2.3', 'BOX3D_combine_BOX3D';
 3   DROP FUNCTION public.st_combinebbox(box3d, box3d);
       public       postgres    false    6    1169    1169    1169            �           1255    178200    st_combinebbox(box3d, geometry)    FUNCTION     �   CREATE FUNCTION st_combinebbox(box3d, geometry) RETURNS box3d
    LANGUAGE c IMMUTABLE
    AS '$libdir/postgis-2.3', 'BOX3D_combine';
 6   DROP FUNCTION public.st_combinebbox(box3d, geometry);
       public       postgres    false    6    1169    1169    1165            3           1255    178570 3   st_concavehull(geometry, double precision, boolean)    FUNCTION     i   CREATE FUNCTION st_concavehull(param_geom geometry, param_pctconvex double precision, param_allow_holes boolean DEFAULT false) RETURNS geometry
    LANGUAGE plpgsql IMMUTABLE STRICT
    AS $$
	DECLARE
		var_convhull geometry := ST_ConvexHull(param_geom);
		var_param_geom geometry := param_geom;
		var_initarea float := ST_Area(var_convhull);
		var_newarea float := var_initarea;
		var_div integer := 6; 
		var_tempgeom geometry;
		var_tempgeom2 geometry;
		var_cent geometry;
		var_geoms geometry[4]; 
		var_enline geometry;
		var_resultgeom geometry;
		var_atempgeoms geometry[];
		var_buf float := 1; 
	BEGIN
		-- We start with convex hull as our base
		var_resultgeom := var_convhull;

		IF param_pctconvex = 1 THEN
			return var_resultgeom;
		ELSIF ST_GeometryType(var_param_geom) = 'ST_Polygon' THEN -- it is as concave as it is going to get
			IF param_allow_holes THEN -- leave the holes
				RETURN var_param_geom;
			ELSE -- remove the holes
				var_resultgeom := ST_MakePolygon(ST_ExteriorRing(var_param_geom));
				RETURN var_resultgeom;
			END IF;
		END IF;
		IF ST_Dimension(var_resultgeom) > 1 AND param_pctconvex BETWEEN 0 and 0.98 THEN
		-- get linestring that forms envelope of geometry
			var_enline := ST_Boundary(ST_Envelope(var_param_geom));
			var_buf := ST_Length(var_enline)/1000.0;
			IF ST_GeometryType(var_param_geom) = 'ST_MultiPoint' AND ST_NumGeometries(var_param_geom) BETWEEN 4 and 200 THEN
			-- we make polygons out of points since they are easier to cave in.
			-- Note we limit to between 4 and 200 points because this process is slow and gets quadratically slow
				var_buf := sqrt(ST_Area(var_convhull)*0.8/(ST_NumGeometries(var_param_geom)*ST_NumGeometries(var_param_geom)));
				var_atempgeoms := ARRAY(SELECT geom FROM ST_DumpPoints(var_param_geom));
				-- 5 and 10 and just fudge factors
				var_tempgeom := ST_Union(ARRAY(SELECT geom
						FROM (
						-- fuse near neighbors together
						SELECT DISTINCT ON (i) i,  ST_Distance(var_atempgeoms[i],var_atempgeoms[j]), ST_Buffer(ST_MakeLine(var_atempgeoms[i], var_atempgeoms[j]) , var_buf*5, 'quad_segs=3') As geom
								FROM generate_series(1,array_upper(var_atempgeoms, 1)) As i
									INNER JOIN generate_series(1,array_upper(var_atempgeoms, 1)) As j
										ON (
								 NOT ST_Intersects(var_atempgeoms[i],var_atempgeoms[j])
									AND ST_DWithin(var_atempgeoms[i],var_atempgeoms[j], var_buf*10)
									)
								UNION ALL
						-- catch the ones with no near neighbors
								SELECT i, 0, ST_Buffer(var_atempgeoms[i] , var_buf*10, 'quad_segs=3') As geom
								FROM generate_series(1,array_upper(var_atempgeoms, 1)) As i
									LEFT JOIN generate_series(ceiling(array_upper(var_atempgeoms,1)/2)::integer,array_upper(var_atempgeoms, 1)) As j
										ON (
								 NOT ST_Intersects(var_atempgeoms[i],var_atempgeoms[j])
									AND ST_DWithin(var_atempgeoms[i],var_atempgeoms[j], var_buf*10)
									)
									WHERE j IS NULL
								ORDER BY 1, 2
							) As foo	) );
				IF ST_IsValid(var_tempgeom) AND ST_GeometryType(var_tempgeom) = 'ST_Polygon' THEN
					var_tempgeom := ST_ForceSFS(ST_Intersection(var_tempgeom, var_convhull));
					IF param_allow_holes THEN
						var_param_geom := var_tempgeom;
					ELSE
						var_param_geom := ST_MakePolygon(ST_ExteriorRing(var_tempgeom));
					END IF;
					return var_param_geom;
				ELSIF ST_IsValid(var_tempgeom) THEN
					var_param_geom := ST_ForceSFS(ST_Intersection(var_tempgeom, var_convhull));
				END IF;
			END IF;

			IF ST_GeometryType(var_param_geom) = 'ST_Polygon' THEN
				IF NOT param_allow_holes THEN
					var_param_geom := ST_MakePolygon(ST_ExteriorRing(var_param_geom));
				END IF;
				return var_param_geom;
			END IF;
            var_cent := ST_Centroid(var_param_geom);
            IF (ST_XMax(var_enline) - ST_XMin(var_enline) ) > var_buf AND (ST_YMax(var_enline) - ST_YMin(var_enline) ) > var_buf THEN
                    IF ST_Dwithin(ST_Centroid(var_convhull) , ST_Centroid(ST_Envelope(var_param_geom)), var_buf/2) THEN
                -- If the geometric dimension is > 1 and the object is symettric (cutting at centroid will not work -- offset a bit)
                        var_cent := ST_Translate(var_cent, (ST_XMax(var_enline) - ST_XMin(var_enline))/1000,  (ST_YMAX(var_enline) - ST_YMin(var_enline))/1000);
                    ELSE
                        -- uses closest point on geometry to centroid. I can't explain why we are doing this
                        var_cent := ST_ClosestPoint(var_param_geom,var_cent);
                    END IF;
                    IF ST_DWithin(var_cent, var_enline,var_buf) THEN
                        var_cent := ST_centroid(ST_Envelope(var_param_geom));
                    END IF;
                    -- break envelope into 4 triangles about the centroid of the geometry and returned the clipped geometry in each quadrant
                    FOR i in 1 .. 4 LOOP
                       var_geoms[i] := ST_MakePolygon(ST_MakeLine(ARRAY[ST_PointN(var_enline,i), ST_PointN(var_enline,i+1), var_cent, ST_PointN(var_enline,i)]));
                       var_geoms[i] := ST_ForceSFS(ST_Intersection(var_param_geom, ST_Buffer(var_geoms[i],var_buf)));
                       IF ST_IsValid(var_geoms[i]) THEN

                       ELSE
                            var_geoms[i] := ST_BuildArea(ST_MakeLine(ARRAY[ST_PointN(var_enline,i), ST_PointN(var_enline,i+1), var_cent, ST_PointN(var_enline,i)]));
                       END IF;
                    END LOOP;
                    var_tempgeom := ST_Union(ARRAY[ST_ConvexHull(var_geoms[1]), ST_ConvexHull(var_geoms[2]) , ST_ConvexHull(var_geoms[3]), ST_ConvexHull(var_geoms[4])]);
                    --RAISE NOTICE 'Curr vex % ', ST_AsText(var_tempgeom);
                    IF ST_Area(var_tempgeom) <= var_newarea AND ST_IsValid(var_tempgeom)  THEN --AND ST_GeometryType(var_tempgeom) ILIKE '%Polygon'

                        var_tempgeom := ST_Buffer(ST_ConcaveHull(var_geoms[1],least(param_pctconvex + param_pctconvex/var_div),true),var_buf, 'quad_segs=2');
                        FOR i IN 1 .. 4 LOOP
                            var_geoms[i] := ST_Buffer(ST_ConcaveHull(var_geoms[i],least(param_pctconvex + param_pctconvex/var_div),true), var_buf, 'quad_segs=2');
                            IF ST_IsValid(var_geoms[i]) Then
                                var_tempgeom := ST_Union(var_tempgeom, var_geoms[i]);
                            ELSE
                                RAISE NOTICE 'Not valid % %', i, ST_AsText(var_tempgeom);
                                var_tempgeom := ST_Union(var_tempgeom, ST_ConvexHull(var_geoms[i]));
                            END IF;
                        END LOOP;

                        --RAISE NOTICE 'Curr concave % ', ST_AsText(var_tempgeom);
                        IF ST_IsValid(var_tempgeom) THEN
                            var_resultgeom := var_tempgeom;
                        END IF;
                        var_newarea := ST_Area(var_resultgeom);
                    ELSIF ST_IsValid(var_tempgeom) THEN
                        var_resultgeom := var_tempgeom;
                    END IF;

                    IF ST_NumGeometries(var_resultgeom) > 1  THEN
                        var_tempgeom := _ST_ConcaveHull(var_resultgeom);
                        IF ST_IsValid(var_tempgeom) AND ST_GeometryType(var_tempgeom) ILIKE 'ST_Polygon' THEN
                            var_resultgeom := var_tempgeom;
                        ELSE
                            var_resultgeom := ST_Buffer(var_tempgeom,var_buf, 'quad_segs=2');
                        END IF;
                    END IF;
                    IF param_allow_holes = false THEN
                    -- only keep exterior ring since we do not want holes
                        var_resultgeom := ST_MakePolygon(ST_ExteriorRing(var_resultgeom));
                    END IF;
                ELSE
                    var_resultgeom := ST_Buffer(var_resultgeom,var_buf);
                END IF;
                var_resultgeom := ST_ForceSFS(ST_Intersection(var_resultgeom, ST_ConvexHull(var_param_geom)));
            ELSE
                -- dimensions are too small to cut
                var_resultgeom := _ST_ConcaveHull(var_param_geom);
            END IF;
            RETURN var_resultgeom;
	END;
$$;
 w   DROP FUNCTION public.st_concavehull(param_geom geometry, param_pctconvex double precision, param_allow_holes boolean);
       public       postgres    false    1165    1    6    1165                       1255    178247    st_contains(geometry, geometry)    FUNCTION     �   CREATE FUNCTION st_contains(geom1 geometry, geom2 geometry) RETURNS boolean
    LANGUAGE sql IMMUTABLE
    AS $_$SELECT $1 OPERATOR(~) $2 AND _ST_Contains($1,$2)$_$;
 B   DROP FUNCTION public.st_contains(geom1 geometry, geom2 geometry);
       public       postgres    false    6    1165    1165            %           1255    178253 '   st_containsproperly(geometry, geometry)    FUNCTION     �   CREATE FUNCTION st_containsproperly(geom1 geometry, geom2 geometry) RETURNS boolean
    LANGUAGE sql IMMUTABLE
    AS $_$SELECT $1 OPERATOR(~) $2 AND _ST_ContainsProperly($1,$2)$_$;
 J   DROP FUNCTION public.st_containsproperly(geom1 geometry, geom2 geometry);
       public       postgres    false    6    1165    1165            �           1255    178165    st_convexhull(geometry)    FUNCTION     �   CREATE FUNCTION st_convexhull(geometry) RETURNS geometry
    LANGUAGE c IMMUTABLE STRICT COST 250
    AS '$libdir/postgis-2.3', 'convexhull';
 .   DROP FUNCTION public.st_convexhull(geometry);
       public       postgres    false    6    1165    1165            $           1255    178555    st_coorddim(geometry)    FUNCTION     �   CREATE FUNCTION st_coorddim(geometry geometry) RETURNS smallint
    LANGUAGE c IMMUTABLE STRICT COST 5
    AS '$libdir/postgis-2.3', 'LWGEOM_ndims';
 5   DROP FUNCTION public.st_coorddim(geometry geometry);
       public       postgres    false    1165    6            �           1255    178507    st_coveredby(text, text)    FUNCTION     �   CREATE FUNCTION st_coveredby(text, text) RETURNS boolean
    LANGUAGE sql IMMUTABLE
    AS $_$ SELECT ST_CoveredBy($1::geometry, $2::geometry);  $_$;
 /   DROP FUNCTION public.st_coveredby(text, text);
       public       postgres    false    6            �           1255    178506 "   st_coveredby(geography, geography)    FUNCTION     �   CREATE FUNCTION st_coveredby(geography, geography) RETURNS boolean
    LANGUAGE sql IMMUTABLE
    AS $_$SELECT $1 OPERATOR(&&) $2 AND _ST_Covers($2, $1)$_$;
 9   DROP FUNCTION public.st_coveredby(geography, geography);
       public       postgres    false    1199    6    1199            !           1255    178249     st_coveredby(geometry, geometry)    FUNCTION     �   CREATE FUNCTION st_coveredby(geom1 geometry, geom2 geometry) RETURNS boolean
    LANGUAGE sql IMMUTABLE
    AS $_$SELECT $1 @ $2 AND _ST_CoveredBy($1,$2)$_$;
 C   DROP FUNCTION public.st_coveredby(geom1 geometry, geom2 geometry);
       public       postgres    false    6    1165    1165            �           1255    178505    st_covers(text, text)    FUNCTION     �   CREATE FUNCTION st_covers(text, text) RETURNS boolean
    LANGUAGE sql IMMUTABLE
    AS $_$ SELECT ST_Covers($1::geometry, $2::geometry);  $_$;
 ,   DROP FUNCTION public.st_covers(text, text);
       public       postgres    false    6            �           1255    178504    st_covers(geography, geography)    FUNCTION     �   CREATE FUNCTION st_covers(geography, geography) RETURNS boolean
    LANGUAGE sql IMMUTABLE
    AS $_$SELECT $1 OPERATOR(&&) $2 AND _ST_Covers($1, $2)$_$;
 6   DROP FUNCTION public.st_covers(geography, geography);
       public       postgres    false    1199    1199    6            #           1255    178251    st_covers(geometry, geometry)    FUNCTION     �   CREATE FUNCTION st_covers(geom1 geometry, geom2 geometry) RETURNS boolean
    LANGUAGE sql IMMUTABLE
    AS $_$SELECT $1 OPERATOR(~) $2 AND _ST_Covers($1,$2)$_$;
 @   DROP FUNCTION public.st_covers(geom1 geometry, geom2 geometry);
       public       postgres    false    6    1165    1165            �           1255    178154 2   st_cpawithin(geometry, geometry, double precision)    FUNCTION     �   CREATE FUNCTION st_cpawithin(geometry, geometry, double precision) RETURNS boolean
    LANGUAGE c IMMUTABLE STRICT
    AS '$libdir/postgis-2.3', 'ST_CPAWithin';
 I   DROP FUNCTION public.st_cpawithin(geometry, geometry, double precision);
       public       postgres    false    6    1165    1165                       1255    178245    st_crosses(geometry, geometry)    FUNCTION     �   CREATE FUNCTION st_crosses(geom1 geometry, geom2 geometry) RETURNS boolean
    LANGUAGE sql IMMUTABLE
    AS $_$SELECT $1 OPERATOR(&&) $2 AND _ST_Crosses($1,$2)$_$;
 A   DROP FUNCTION public.st_crosses(geom1 geometry, geom2 geometry);
       public       postgres    false    6    1165    1165            &           1255    178557    st_curvetoline(geometry)    FUNCTION     �   CREATE FUNCTION st_curvetoline(geometry) RETURNS geometry
    LANGUAGE sql IMMUTABLE STRICT
    AS $_$SELECT ST_CurveToLine($1, 32)$_$;
 /   DROP FUNCTION public.st_curvetoline(geometry);
       public       postgres    false    1165    6    1165            %           1255    178556 !   st_curvetoline(geometry, integer)    FUNCTION     �   CREATE FUNCTION st_curvetoline(geometry, integer) RETURNS geometry
    LANGUAGE c IMMUTABLE STRICT
    AS '$libdir/postgis-2.3', 'LWGEOM_curve_segmentize';
 8   DROP FUNCTION public.st_curvetoline(geometry, integer);
       public       postgres    false    6    1165    1165            �           1255    178196 9   st_delaunaytriangles(geometry, double precision, integer)    FUNCTION     �   CREATE FUNCTION st_delaunaytriangles(g1 geometry, tolerance double precision DEFAULT 0.0, flags integer DEFAULT 0) RETURNS geometry
    LANGUAGE c IMMUTABLE STRICT COST 25000
    AS '$libdir/postgis-2.3', 'ST_DelaunayTriangles';
 c   DROP FUNCTION public.st_delaunaytriangles(g1 geometry, tolerance double precision, flags integer);
       public       postgres    false    6    1165    1165            �           1255    178372 5   st_dfullywithin(geometry, geometry, double precision)    FUNCTION       CREATE FUNCTION st_dfullywithin(geom1 geometry, geom2 geometry, double precision) RETURNS boolean
    LANGUAGE sql IMMUTABLE
    AS $_$SELECT $1 OPERATOR(&&) ST_Expand($2,$3) AND $2 OPERATOR(&&) ST_Expand($1,$3) AND _ST_DFullyWithin(ST_ConvexHull($1), ST_ConvexHull($2), $3)$_$;
 X   DROP FUNCTION public.st_dfullywithin(geom1 geometry, geom2 geometry, double precision);
       public       postgres    false    6    1165    1165            �           1255    178179 !   st_difference(geometry, geometry)    FUNCTION     �   CREATE FUNCTION st_difference(geom1 geometry, geom2 geometry) RETURNS geometry
    LANGUAGE c IMMUTABLE STRICT COST 100
    AS '$libdir/postgis-2.3', 'difference';
 D   DROP FUNCTION public.st_difference(geom1 geometry, geom2 geometry);
       public       postgres    false    6    1165    1165    1165            R           1255    178297    st_dimension(geometry)    FUNCTION     �   CREATE FUNCTION st_dimension(geometry) RETURNS integer
    LANGUAGE c IMMUTABLE STRICT COST 10
    AS '$libdir/postgis-2.3', 'LWGEOM_dimension';
 -   DROP FUNCTION public.st_dimension(geometry);
       public       postgres    false    6    1165                       1255    178237    st_disjoint(geometry, geometry)    FUNCTION     �   CREATE FUNCTION st_disjoint(geom1 geometry, geom2 geometry) RETURNS boolean
    LANGUAGE c IMMUTABLE STRICT
    AS '$libdir/postgis-2.3', 'disjoint';
 B   DROP FUNCTION public.st_disjoint(geom1 geometry, geom2 geometry);
       public       postgres    false    6    1165    1165            �           1255    178483    st_distance(text, text)    FUNCTION     �   CREATE FUNCTION st_distance(text, text) RETURNS double precision
    LANGUAGE sql IMMUTABLE STRICT
    AS $_$ SELECT ST_Distance($1::geometry, $2::geometry);  $_$;
 .   DROP FUNCTION public.st_distance(text, text);
       public       postgres    false    6            �           1255    178482 !   st_distance(geography, geography)    FUNCTION     �   CREATE FUNCTION st_distance(geography, geography) RETURNS double precision
    LANGUAGE sql IMMUTABLE STRICT
    AS $_$SELECT _ST_Distance($1, $2, 0.0, true)$_$;
 8   DROP FUNCTION public.st_distance(geography, geography);
       public       postgres    false    1199    1199    6            7           1255    177973    st_distance(geometry, geometry)    FUNCTION     �   CREATE FUNCTION st_distance(geom1 geometry, geom2 geometry) RETURNS double precision
    LANGUAGE c IMMUTABLE STRICT COST 25
    AS '$libdir/postgis-2.3', 'distance';
 B   DROP FUNCTION public.st_distance(geom1 geometry, geom2 geometry);
       public       postgres    false    1165    6    1165            �           1255    178481 *   st_distance(geography, geography, boolean)    FUNCTION     �   CREATE FUNCTION st_distance(geography, geography, boolean) RETURNS double precision
    LANGUAGE sql IMMUTABLE STRICT
    AS $_$SELECT _ST_Distance($1, $2, 0.0, $3)$_$;
 A   DROP FUNCTION public.st_distance(geography, geography, boolean);
       public       postgres    false    1199    1199    6                       1255    178531 &   st_distance_sphere(geometry, geometry)    FUNCTION       CREATE FUNCTION st_distance_sphere(geom1 geometry, geom2 geometry) RETURNS double precision
    LANGUAGE sql IMMUTABLE STRICT COST 300
    AS $_$ SELECT _postgis_deprecate('ST_Distance_Sphere', 'ST_DistanceSphere', '2.2.0');
    SELECT ST_DistanceSphere($1,$2);
  $_$;
 I   DROP FUNCTION public.st_distance_sphere(geom1 geometry, geom2 geometry);
       public       postgres    false    6    1165    1165            6           1255    177972 2   st_distance_spheroid(geometry, geometry, spheroid)    FUNCTION       CREATE FUNCTION st_distance_spheroid(geom1 geometry, geom2 geometry, spheroid) RETURNS double precision
    LANGUAGE sql IMMUTABLE STRICT
    AS $_$ SELECT _postgis_deprecate('ST_Distance_Spheroid', 'ST_DistanceSpheroid', '2.2.0');
    SELECT ST_DistanceSpheroid($1,$2,$3);
  $_$;
 U   DROP FUNCTION public.st_distance_spheroid(geom1 geometry, geom2 geometry, spheroid);
       public       postgres    false    1165    6    1165    1161            �           1255    178153 "   st_distancecpa(geometry, geometry)    FUNCTION     �   CREATE FUNCTION st_distancecpa(geometry, geometry) RETURNS double precision
    LANGUAGE c IMMUTABLE STRICT
    AS '$libdir/postgis-2.3', 'ST_DistanceCPA';
 9   DROP FUNCTION public.st_distancecpa(geometry, geometry);
       public       postgres    false    6    1165    1165                       1255    178530 %   st_distancesphere(geometry, geometry)    FUNCTION     �   CREATE FUNCTION st_distancesphere(geom1 geometry, geom2 geometry) RETURNS double precision
    LANGUAGE sql IMMUTABLE STRICT COST 300
    AS $_$
	select ST_distance( geography($1), geography($2),false)
	$_$;
 H   DROP FUNCTION public.st_distancesphere(geom1 geometry, geom2 geometry);
       public       postgres    false    6    1165    1165            5           1255    177971 1   st_distancespheroid(geometry, geometry, spheroid)    FUNCTION     �   CREATE FUNCTION st_distancespheroid(geom1 geometry, geom2 geometry, spheroid) RETURNS double precision
    LANGUAGE c IMMUTABLE STRICT COST 200
    AS '$libdir/postgis-2.3', 'LWGEOM_distance_ellipsoid';
 T   DROP FUNCTION public.st_distancespheroid(geom1 geometry, geom2 geometry, spheroid);
       public       postgres    false    1165    6    1165    1161            �           1255    178059    st_dump(geometry)    FUNCTION     �   CREATE FUNCTION st_dump(geometry) RETURNS SETOF geometry_dump
    LANGUAGE c IMMUTABLE STRICT COST 100
    AS '$libdir/postgis-2.3', 'LWGEOM_dump';
 (   DROP FUNCTION public.st_dump(geometry);
       public       postgres    false    1165    6    1185            �           1255    178062    st_dumppoints(geometry)    FUNCTION     �   CREATE FUNCTION st_dumppoints(geometry) RETURNS SETOF geometry_dump
    LANGUAGE c IMMUTABLE STRICT COST 100
    AS '$libdir/postgis-2.3', 'LWGEOM_dumppoints';
 .   DROP FUNCTION public.st_dumppoints(geometry);
       public       postgres    false    1185    1165    6            �           1255    178060    st_dumprings(geometry)    FUNCTION     �   CREATE FUNCTION st_dumprings(geometry) RETURNS SETOF geometry_dump
    LANGUAGE c IMMUTABLE STRICT
    AS '$libdir/postgis-2.3', 'LWGEOM_dump_rings';
 -   DROP FUNCTION public.st_dumprings(geometry);
       public       postgres    false    1185    1165    6            �           1255    178487 (   st_dwithin(text, text, double precision)    FUNCTION     �   CREATE FUNCTION st_dwithin(text, text, double precision) RETURNS boolean
    LANGUAGE sql IMMUTABLE
    AS $_$ SELECT ST_DWithin($1::geometry, $2::geometry, $3);  $_$;
 ?   DROP FUNCTION public.st_dwithin(text, text, double precision);
       public       postgres    false    6            �           1255    178486 2   st_dwithin(geography, geography, double precision)    FUNCTION     �   CREATE FUNCTION st_dwithin(geography, geography, double precision) RETURNS boolean
    LANGUAGE sql IMMUTABLE
    AS $_$SELECT $1 OPERATOR(&&) _ST_Expand($2,$3) AND $2 OPERATOR(&&) _ST_Expand($1,$3) AND _ST_DWithin($1, $2, $3, true)$_$;
 I   DROP FUNCTION public.st_dwithin(geography, geography, double precision);
       public       postgres    false    1199    6    1199                       1255    178241 0   st_dwithin(geometry, geometry, double precision)    FUNCTION     �   CREATE FUNCTION st_dwithin(geom1 geometry, geom2 geometry, double precision) RETURNS boolean
    LANGUAGE sql IMMUTABLE
    AS $_$SELECT $1 OPERATOR(&&) ST_Expand($2,$3) AND $2 OPERATOR(&&) ST_Expand($1,$3) AND _ST_DWithin($1, $2, $3)$_$;
 S   DROP FUNCTION public.st_dwithin(geom1 geometry, geom2 geometry, double precision);
       public       postgres    false    6    1165    1165            �           1255    178485 ;   st_dwithin(geography, geography, double precision, boolean)    FUNCTION     �   CREATE FUNCTION st_dwithin(geography, geography, double precision, boolean) RETURNS boolean
    LANGUAGE sql IMMUTABLE
    AS $_$SELECT $1 OPERATOR(&&) _ST_Expand($2,$3) AND $2 OPERATOR(&&) _ST_Expand($1,$3) AND _ST_DWithin($1, $2, $3, $4)$_$;
 R   DROP FUNCTION public.st_dwithin(geography, geography, double precision, boolean);
       public       postgres    false    1199    1199    6            ]           1255    178308    st_endpoint(geometry)    FUNCTION     �   CREATE FUNCTION st_endpoint(geometry) RETURNS geometry
    LANGUAGE c IMMUTABLE STRICT
    AS '$libdir/postgis-2.3', 'LWGEOM_endpoint_linestring';
 ,   DROP FUNCTION public.st_endpoint(geometry);
       public       postgres    false    6    1165    1165            Q           1255    177999    st_envelope(geometry)    FUNCTION     �   CREATE FUNCTION st_envelope(geometry) RETURNS geometry
    LANGUAGE c IMMUTABLE STRICT COST 25
    AS '$libdir/postgis-2.3', 'LWGEOM_envelope';
 ,   DROP FUNCTION public.st_envelope(geometry);
       public       postgres    false    6    1165    1165            4           1255    178268    st_equals(geometry, geometry)    FUNCTION     �   CREATE FUNCTION st_equals(geom1 geometry, geom2 geometry) RETURNS boolean
    LANGUAGE sql IMMUTABLE
    AS $_$SELECT $1 OPERATOR(~=) $2 AND _ST_Equals($1,$2)$_$;
 @   DROP FUNCTION public.st_equals(geom1 geometry, geom2 geometry);
       public       postgres    false    6    1165    1165                       1255    177945    st_estimated_extent(text, text)    FUNCTION     �  CREATE FUNCTION st_estimated_extent(text, text) RETURNS box2d
    LANGUAGE sql IMMUTABLE STRICT
    AS $_$ SELECT _postgis_deprecate('ST_Estimated_Extent', 'ST_EstimatedExtent', '2.1.0');
    -- We use security invoker instead of security definer
    -- to prevent malicious injection of a same named different function
    -- that would be run under elevated permissions
    SELECT ST_EstimatedExtent($1, $2);
  $_$;
 6   DROP FUNCTION public.st_estimated_extent(text, text);
       public       postgres    false    6    1173                       1255    177943 %   st_estimated_extent(text, text, text)    FUNCTION     x  CREATE FUNCTION st_estimated_extent(text, text, text) RETURNS box2d
    LANGUAGE sql IMMUTABLE STRICT
    AS $_$ SELECT _postgis_deprecate('ST_Estimated_Extent', 'ST_EstimatedExtent', '2.1.0');
    -- We use security invoker instead of security definer
    -- to prevent malicious injection of a different same named function
    SELECT ST_EstimatedExtent($1, $2, $3);
  $_$;
 <   DROP FUNCTION public.st_estimated_extent(text, text, text);
       public       postgres    false    6    1173                       1255    177944    st_estimatedextent(text, text)    FUNCTION     �   CREATE FUNCTION st_estimatedextent(text, text) RETURNS box2d
    LANGUAGE c IMMUTABLE STRICT SECURITY DEFINER
    AS '$libdir/postgis-2.3', 'gserialized_estimated_extent';
 5   DROP FUNCTION public.st_estimatedextent(text, text);
       public       postgres    false    6    1173                       1255    177942 $   st_estimatedextent(text, text, text)    FUNCTION     �   CREATE FUNCTION st_estimatedextent(text, text, text) RETURNS box2d
    LANGUAGE c IMMUTABLE STRICT SECURITY DEFINER
    AS '$libdir/postgis-2.3', 'gserialized_estimated_extent';
 ;   DROP FUNCTION public.st_estimatedextent(text, text, text);
       public       postgres    false    1173    6                       1255    177941 -   st_estimatedextent(text, text, text, boolean)    FUNCTION     �   CREATE FUNCTION st_estimatedextent(text, text, text, boolean) RETURNS box2d
    LANGUAGE c IMMUTABLE STRICT SECURITY DEFINER
    AS '$libdir/postgis-2.3', 'gserialized_estimated_extent';
 D   DROP FUNCTION public.st_estimatedextent(text, text, text, boolean);
       public       postgres    false    6    1173                       1255    177937 "   st_expand(box2d, double precision)    FUNCTION     �   CREATE FUNCTION st_expand(box2d, double precision) RETURNS box2d
    LANGUAGE c IMMUTABLE STRICT
    AS '$libdir/postgis-2.3', 'BOX2D_expand';
 9   DROP FUNCTION public.st_expand(box2d, double precision);
       public       postgres    false    1173    1173    6            M           1255    177995 "   st_expand(box3d, double precision)    FUNCTION     �   CREATE FUNCTION st_expand(box3d, double precision) RETURNS box3d
    LANGUAGE c IMMUTABLE STRICT COST 25
    AS '$libdir/postgis-2.3', 'BOX3D_expand';
 9   DROP FUNCTION public.st_expand(box3d, double precision);
       public       postgres    false    6    1169    1169            O           1255    177997 %   st_expand(geometry, double precision)    FUNCTION     �   CREATE FUNCTION st_expand(geometry, double precision) RETURNS geometry
    LANGUAGE c IMMUTABLE STRICT COST 25
    AS '$libdir/postgis-2.3', 'LWGEOM_expand';
 <   DROP FUNCTION public.st_expand(geometry, double precision);
       public       postgres    false    6    1165    1165                       1255    177938 4   st_expand(box2d, double precision, double precision)    FUNCTION     �   CREATE FUNCTION st_expand(box box2d, dx double precision, dy double precision) RETURNS box2d
    LANGUAGE c IMMUTABLE STRICT
    AS '$libdir/postgis-2.3', 'BOX2D_expand';
 U   DROP FUNCTION public.st_expand(box box2d, dx double precision, dy double precision);
       public       postgres    false    1173    6    1173            N           1255    177996 F   st_expand(box3d, double precision, double precision, double precision)    FUNCTION     �   CREATE FUNCTION st_expand(box box3d, dx double precision, dy double precision, dz double precision DEFAULT 0) RETURNS box3d
    LANGUAGE c IMMUTABLE STRICT COST 25
    AS '$libdir/postgis-2.3', 'BOX3D_expand';
 j   DROP FUNCTION public.st_expand(box box3d, dx double precision, dy double precision, dz double precision);
       public       postgres    false    6    1169    1169            P           1255    177998 [   st_expand(geometry, double precision, double precision, double precision, double precision)    FUNCTION     �   CREATE FUNCTION st_expand(geom geometry, dx double precision, dy double precision, dz double precision DEFAULT 0, dm double precision DEFAULT 0) RETURNS geometry
    LANGUAGE c IMMUTABLE STRICT COST 25
    AS '$libdir/postgis-2.3', 'LWGEOM_expand';
 �   DROP FUNCTION public.st_expand(geom geometry, dx double precision, dy double precision, dz double precision, dm double precision);
       public       postgres    false    6    1165    1165            S           1255    178298    st_exteriorring(geometry)    FUNCTION     �   CREATE FUNCTION st_exteriorring(geometry) RETURNS geometry
    LANGUAGE c IMMUTABLE STRICT
    AS '$libdir/postgis-2.3', 'LWGEOM_exteriorring_polygon';
 0   DROP FUNCTION public.st_exteriorring(geometry);
       public       postgres    false    6    1165    1165                       1255    177949    st_find_extent(text, text)    FUNCTION     �   CREATE FUNCTION st_find_extent(text, text) RETURNS box2d
    LANGUAGE sql IMMUTABLE STRICT
    AS $_$ SELECT _postgis_deprecate('ST_Find_Extent', 'ST_FindExtent', '2.2.0');
    SELECT ST_FindExtent($1,$2);
  $_$;
 1   DROP FUNCTION public.st_find_extent(text, text);
       public       postgres    false    6    1173                       1255    177947     st_find_extent(text, text, text)    FUNCTION     �   CREATE FUNCTION st_find_extent(text, text, text) RETURNS box2d
    LANGUAGE sql IMMUTABLE STRICT
    AS $_$ SELECT _postgis_deprecate('ST_Find_Extent', 'ST_FindExtent', '2.2.0');
    SELECT ST_FindExtent($1,$2,$3);
  $_$;
 7   DROP FUNCTION public.st_find_extent(text, text, text);
       public       postgres    false    6    1173                       1255    177948    st_findextent(text, text)    FUNCTION     Q  CREATE FUNCTION st_findextent(text, text) RETURNS box2d
    LANGUAGE plpgsql IMMUTABLE STRICT
    AS $_$
DECLARE
	tablename alias for $1;
	columnname alias for $2;
	myrec RECORD;

BEGIN
	FOR myrec IN EXECUTE 'SELECT ST_Extent("' || columnname || '") As extent FROM "' || tablename || '"' LOOP
		return myrec.extent;
	END LOOP;
END;
$_$;
 0   DROP FUNCTION public.st_findextent(text, text);
       public       postgres    false    1173    1    6                       1255    177946    st_findextent(text, text, text)    FUNCTION     �  CREATE FUNCTION st_findextent(text, text, text) RETURNS box2d
    LANGUAGE plpgsql IMMUTABLE STRICT
    AS $_$
DECLARE
	schemaname alias for $1;
	tablename alias for $2;
	columnname alias for $3;
	myrec RECORD;
BEGIN
	FOR myrec IN EXECUTE 'SELECT ST_Extent("' || columnname || '") As extent FROM "' || schemaname || '"."' || tablename || '"' LOOP
		return myrec.extent;
	END LOOP;
END;
$_$;
 6   DROP FUNCTION public.st_findextent(text, text, text);
       public       postgres    false    1    1173    6            �           1255    178374    st_flipcoordinates(geometry)    FUNCTION     �   CREATE FUNCTION st_flipcoordinates(geometry) RETURNS geometry
    LANGUAGE c IMMUTABLE STRICT COST 25
    AS '$libdir/postgis-2.3', 'ST_FlipCoordinates';
 3   DROP FUNCTION public.st_flipcoordinates(geometry);
       public       postgres    false    6    1165    1165            ;           1255    177977    st_force2d(geometry)    FUNCTION     �   CREATE FUNCTION st_force2d(geometry) RETURNS geometry
    LANGUAGE c IMMUTABLE STRICT COST 5
    AS '$libdir/postgis-2.3', 'LWGEOM_force_2d';
 +   DROP FUNCTION public.st_force2d(geometry);
       public       postgres    false    1165    6    1165            ?           1255    177981    st_force3d(geometry)    FUNCTION     �   CREATE FUNCTION st_force3d(geometry) RETURNS geometry
    LANGUAGE c IMMUTABLE STRICT COST 25
    AS '$libdir/postgis-2.3', 'LWGEOM_force_3dz';
 +   DROP FUNCTION public.st_force3d(geometry);
       public       postgres    false    6    1165    1165            A           1255    177983    st_force3dm(geometry)    FUNCTION     �   CREATE FUNCTION st_force3dm(geometry) RETURNS geometry
    LANGUAGE c IMMUTABLE STRICT COST 25
    AS '$libdir/postgis-2.3', 'LWGEOM_force_3dm';
 ,   DROP FUNCTION public.st_force3dm(geometry);
       public       postgres    false    1165    6    1165            =           1255    177979    st_force3dz(geometry)    FUNCTION     �   CREATE FUNCTION st_force3dz(geometry) RETURNS geometry
    LANGUAGE c IMMUTABLE STRICT COST 25
    AS '$libdir/postgis-2.3', 'LWGEOM_force_3dz';
 ,   DROP FUNCTION public.st_force3dz(geometry);
       public       postgres    false    6    1165    1165            C           1255    177985    st_force4d(geometry)    FUNCTION     �   CREATE FUNCTION st_force4d(geometry) RETURNS geometry
    LANGUAGE c IMMUTABLE STRICT COST 25
    AS '$libdir/postgis-2.3', 'LWGEOM_force_4d';
 +   DROP FUNCTION public.st_force4d(geometry);
       public       postgres    false    1165    6    1165            <           1255    177978    st_force_2d(geometry)    FUNCTION     �   CREATE FUNCTION st_force_2d(geometry) RETURNS geometry
    LANGUAGE sql IMMUTABLE STRICT
    AS $_$ SELECT _postgis_deprecate('ST_Force_2d', 'ST_Force2D', '2.1.0');
    SELECT ST_Force2D($1);
  $_$;
 ,   DROP FUNCTION public.st_force_2d(geometry);
       public       postgres    false    6    1165    1165            @           1255    177982    st_force_3d(geometry)    FUNCTION     �   CREATE FUNCTION st_force_3d(geometry) RETURNS geometry
    LANGUAGE sql IMMUTABLE STRICT
    AS $_$ SELECT _postgis_deprecate('ST_Force_3d', 'ST_Force3D', '2.1.0');
    SELECT ST_Force3D($1);
  $_$;
 ,   DROP FUNCTION public.st_force_3d(geometry);
       public       postgres    false    6    1165    1165            B           1255    177984    st_force_3dm(geometry)    FUNCTION     �   CREATE FUNCTION st_force_3dm(geometry) RETURNS geometry
    LANGUAGE sql IMMUTABLE STRICT
    AS $_$ SELECT _postgis_deprecate('ST_Force_3dm', 'ST_Force3DM', '2.1.0');
    SELECT ST_Force3DM($1);
  $_$;
 -   DROP FUNCTION public.st_force_3dm(geometry);
       public       postgres    false    6    1165    1165            >           1255    177980    st_force_3dz(geometry)    FUNCTION     �   CREATE FUNCTION st_force_3dz(geometry) RETURNS geometry
    LANGUAGE sql IMMUTABLE STRICT
    AS $_$ SELECT _postgis_deprecate('ST_Force_3dz', 'ST_Force3DZ', '2.1.0');
    SELECT ST_Force3DZ($1);
  $_$;
 -   DROP FUNCTION public.st_force_3dz(geometry);
       public       postgres    false    6    1165    1165            D           1255    177986    st_force_4d(geometry)    FUNCTION     �   CREATE FUNCTION st_force_4d(geometry) RETURNS geometry
    LANGUAGE sql IMMUTABLE STRICT
    AS $_$ SELECT _postgis_deprecate('ST_Force_4d', 'ST_Force4D', '2.1.0');
    SELECT ST_Force4D($1);
  $_$;
 ,   DROP FUNCTION public.st_force_4d(geometry);
       public       postgres    false    6    1165    1165            F           1255    177988    st_force_collection(geometry)    FUNCTION     �   CREATE FUNCTION st_force_collection(geometry) RETURNS geometry
    LANGUAGE sql IMMUTABLE STRICT
    AS $_$ SELECT _postgis_deprecate('ST_Force_Collection', 'ST_ForceCollection', '2.1.0');
    SELECT ST_ForceCollection($1);
  $_$;
 4   DROP FUNCTION public.st_force_collection(geometry);
       public       postgres    false    1165    6    1165            E           1255    177987    st_forcecollection(geometry)    FUNCTION     �   CREATE FUNCTION st_forcecollection(geometry) RETURNS geometry
    LANGUAGE c IMMUTABLE STRICT COST 10
    AS '$libdir/postgis-2.3', 'LWGEOM_force_collection';
 3   DROP FUNCTION public.st_forcecollection(geometry);
       public       postgres    false    1165    6    1165            J           1255    177992    st_forcecurve(geometry)    FUNCTION     �   CREATE FUNCTION st_forcecurve(geometry) RETURNS geometry
    LANGUAGE c IMMUTABLE STRICT
    AS '$libdir/postgis-2.3', 'LWGEOM_force_curve';
 .   DROP FUNCTION public.st_forcecurve(geometry);
       public       postgres    false    6    1165    1165            T           1255    178002    st_forcerhr(geometry)    FUNCTION     �   CREATE FUNCTION st_forcerhr(geometry) RETURNS geometry
    LANGUAGE c IMMUTABLE STRICT COST 15
    AS '$libdir/postgis-2.3', 'LWGEOM_force_clockwise_poly';
 ,   DROP FUNCTION public.st_forcerhr(geometry);
       public       postgres    false    6    1165    1165            K           1255    177993    st_forcesfs(geometry)    FUNCTION     �   CREATE FUNCTION st_forcesfs(geometry) RETURNS geometry
    LANGUAGE c IMMUTABLE STRICT
    AS '$libdir/postgis-2.3', 'LWGEOM_force_sfs';
 ,   DROP FUNCTION public.st_forcesfs(geometry);
       public       postgres    false    1165    6    1165            L           1255    177994    st_forcesfs(geometry, text)    FUNCTION     �   CREATE FUNCTION st_forcesfs(geometry, version text) RETURNS geometry
    LANGUAGE c IMMUTABLE STRICT COST 10
    AS '$libdir/postgis-2.3', 'LWGEOM_force_sfs';
 :   DROP FUNCTION public.st_forcesfs(geometry, version text);
       public       postgres    false    1165    1165    6            �           1255    178164 $   st_generatepoints(geometry, numeric)    FUNCTION     �   CREATE FUNCTION st_generatepoints(area geometry, npoints numeric) RETURNS geometry
    LANGUAGE c IMMUTABLE STRICT COST 400
    AS '$libdir/postgis-2.3', 'ST_GeneratePoints';
 H   DROP FUNCTION public.st_generatepoints(area geometry, npoints numeric);
       public       postgres    false    6    1165    1165            �           1255    178408    st_geogfromtext(text)    FUNCTION     �   CREATE FUNCTION st_geogfromtext(text) RETURNS geography
    LANGUAGE c IMMUTABLE STRICT
    AS '$libdir/postgis-2.3', 'geography_from_text';
 ,   DROP FUNCTION public.st_geogfromtext(text);
       public       postgres    false    1199    6            �           1255    178409    st_geogfromwkb(bytea)    FUNCTION     �   CREATE FUNCTION st_geogfromwkb(bytea) RETURNS geography
    LANGUAGE c IMMUTABLE STRICT
    AS '$libdir/postgis-2.3', 'geography_from_binary';
 ,   DROP FUNCTION public.st_geogfromwkb(bytea);
       public       postgres    false    1199    6            �           1255    178407    st_geographyfromtext(text)    FUNCTION     �   CREATE FUNCTION st_geographyfromtext(text) RETURNS geography
    LANGUAGE c IMMUTABLE STRICT
    AS '$libdir/postgis-2.3', 'geography_from_text';
 1   DROP FUNCTION public.st_geographyfromtext(text);
       public       postgres    false    6    1199                       1255    178527    st_geohash(geography, integer)    FUNCTION     �   CREATE FUNCTION st_geohash(geog geography, maxchars integer DEFAULT 0) RETURNS text
    LANGUAGE c IMMUTABLE STRICT
    AS '$libdir/postgis-2.3', 'ST_GeoHash';
 C   DROP FUNCTION public.st_geohash(geog geography, maxchars integer);
       public       postgres    false    1199    6            K           1255    178290    st_geohash(geometry, integer)    FUNCTION     �   CREATE FUNCTION st_geohash(geom geometry, maxchars integer DEFAULT 0) RETURNS text
    LANGUAGE c IMMUTABLE STRICT
    AS '$libdir/postgis-2.3', 'ST_GeoHash';
 B   DROP FUNCTION public.st_geohash(geom geometry, maxchars integer);
       public       postgres    false    6    1165            {           1255    178339    st_geomcollfromtext(text)    FUNCTION     �   CREATE FUNCTION st_geomcollfromtext(text) RETURNS geometry
    LANGUAGE sql IMMUTABLE STRICT
    AS $_$
	SELECT CASE
	WHEN geometrytype(ST_GeomFromText($1)) = 'GEOMETRYCOLLECTION'
	THEN ST_GeomFromText($1)
	ELSE NULL END
	$_$;
 0   DROP FUNCTION public.st_geomcollfromtext(text);
       public       postgres    false    6    1165            z           1255    178338 "   st_geomcollfromtext(text, integer)    FUNCTION     �   CREATE FUNCTION st_geomcollfromtext(text, integer) RETURNS geometry
    LANGUAGE sql IMMUTABLE STRICT
    AS $_$
	SELECT CASE
	WHEN geometrytype(ST_GeomFromText($1, $2)) = 'GEOMETRYCOLLECTION'
	THEN ST_GeomFromText($1,$2)
	ELSE NULL END
	$_$;
 9   DROP FUNCTION public.st_geomcollfromtext(text, integer);
       public       postgres    false    6    1165            �           1255    178364    st_geomcollfromwkb(bytea)    FUNCTION     �   CREATE FUNCTION st_geomcollfromwkb(bytea) RETURNS geometry
    LANGUAGE sql IMMUTABLE STRICT
    AS $_$
	SELECT CASE
	WHEN geometrytype(ST_GeomFromWKB($1)) = 'GEOMETRYCOLLECTION'
	THEN ST_GeomFromWKB($1)
	ELSE NULL END
	$_$;
 0   DROP FUNCTION public.st_geomcollfromwkb(bytea);
       public       postgres    false    6    1165            �           1255    178363 "   st_geomcollfromwkb(bytea, integer)    FUNCTION     �   CREATE FUNCTION st_geomcollfromwkb(bytea, integer) RETURNS geometry
    LANGUAGE sql IMMUTABLE STRICT
    AS $_$
	SELECT CASE
	WHEN geometrytype(ST_GeomFromWKB($1, $2)) = 'GEOMETRYCOLLECTION'
	THEN ST_GeomFromWKB($1, $2)
	ELSE NULL END
	$_$;
 9   DROP FUNCTION public.st_geomcollfromwkb(bytea, integer);
       public       postgres    false    6    1165            .           1255    178262 @   st_geometricmedian(geometry, double precision, integer, boolean)    FUNCTION       CREATE FUNCTION st_geometricmedian(g geometry, tolerance double precision DEFAULT NULL::double precision, max_iter integer DEFAULT 10000, fail_if_not_converged boolean DEFAULT false) RETURNS geometry
    LANGUAGE c IMMUTABLE
    AS '$libdir/postgis-2.3', 'ST_GeometricMedian';
 �   DROP FUNCTION public.st_geometricmedian(g geometry, tolerance double precision, max_iter integer, fail_if_not_converged boolean);
       public       postgres    false    6    1165    1165            b           1255    178314    st_geometryfromtext(text)    FUNCTION     �   CREATE FUNCTION st_geometryfromtext(text) RETURNS geometry
    LANGUAGE c IMMUTABLE STRICT
    AS '$libdir/postgis-2.3', 'LWGEOM_from_text';
 0   DROP FUNCTION public.st_geometryfromtext(text);
       public       postgres    false    6    1165            c           1255    178315 "   st_geometryfromtext(text, integer)    FUNCTION     �   CREATE FUNCTION st_geometryfromtext(text, integer) RETURNS geometry
    LANGUAGE c IMMUTABLE STRICT
    AS '$libdir/postgis-2.3', 'LWGEOM_from_text';
 9   DROP FUNCTION public.st_geometryfromtext(text, integer);
       public       postgres    false    6    1165            Q           1255    178296    st_geometryn(geometry, integer)    FUNCTION     �   CREATE FUNCTION st_geometryn(geometry, integer) RETURNS geometry
    LANGUAGE c IMMUTABLE STRICT
    AS '$libdir/postgis-2.3', 'LWGEOM_geometryn_collection';
 6   DROP FUNCTION public.st_geometryn(geometry, integer);
       public       postgres    false    6    1165    1165            X           1255    178303    st_geometrytype(geometry)    FUNCTION     �   CREATE FUNCTION st_geometrytype(geometry) RETURNS text
    LANGUAGE c IMMUTABLE STRICT COST 10
    AS '$libdir/postgis-2.3', 'geometry_geometrytype';
 0   DROP FUNCTION public.st_geometrytype(geometry);
       public       postgres    false    6    1165            e           1255    178016    st_geomfromewkb(bytea)    FUNCTION     �   CREATE FUNCTION st_geomfromewkb(bytea) RETURNS geometry
    LANGUAGE c IMMUTABLE STRICT
    AS '$libdir/postgis-2.3', 'LWGEOMFromEWKB';
 -   DROP FUNCTION public.st_geomfromewkb(bytea);
       public       postgres    false    6    1165            h           1255    178019    st_geomfromewkt(text)    FUNCTION     �   CREATE FUNCTION st_geomfromewkt(text) RETURNS geometry
    LANGUAGE c IMMUTABLE STRICT
    AS '$libdir/postgis-2.3', 'parse_WKT_lwgeom';
 ,   DROP FUNCTION public.st_geomfromewkt(text);
       public       postgres    false    1165    6            N           1255    178293 !   st_geomfromgeohash(text, integer)    FUNCTION     �   CREATE FUNCTION st_geomfromgeohash(text, integer DEFAULT NULL::integer) RETURNS geometry
    LANGUAGE sql IMMUTABLE
    AS $_$ SELECT CAST(ST_Box2dFromGeoHash($1, $2) AS geometry); $_$;
 8   DROP FUNCTION public.st_geomfromgeohash(text, integer);
       public       postgres    false    6    1165            <           1255    178276    st_geomfromgeojson(text)    FUNCTION     �   CREATE FUNCTION st_geomfromgeojson(text) RETURNS geometry
    LANGUAGE c IMMUTABLE STRICT
    AS '$libdir/postgis-2.3', 'geom_from_geojson';
 /   DROP FUNCTION public.st_geomfromgeojson(text);
       public       postgres    false    6    1165            8           1255    178272    st_geomfromgml(text)    FUNCTION     �   CREATE FUNCTION st_geomfromgml(text) RETURNS geometry
    LANGUAGE sql IMMUTABLE STRICT
    AS $_$SELECT _ST_GeomFromGML($1, 0)$_$;
 +   DROP FUNCTION public.st_geomfromgml(text);
       public       postgres    false    6    1165            7           1255    178271    st_geomfromgml(text, integer)    FUNCTION     �   CREATE FUNCTION st_geomfromgml(text, integer) RETURNS geometry
    LANGUAGE c IMMUTABLE STRICT
    AS '$libdir/postgis-2.3', 'geom_from_gml';
 4   DROP FUNCTION public.st_geomfromgml(text, integer);
       public       postgres    false    6    1165            ;           1255    178275    st_geomfromkml(text)    FUNCTION     �   CREATE FUNCTION st_geomfromkml(text) RETURNS geometry
    LANGUAGE c IMMUTABLE STRICT
    AS '$libdir/postgis-2.3', 'geom_from_kml';
 +   DROP FUNCTION public.st_geomfromkml(text);
       public       postgres    false    6    1165            d           1255    178316    st_geomfromtext(text)    FUNCTION     �   CREATE FUNCTION st_geomfromtext(text) RETURNS geometry
    LANGUAGE c IMMUTABLE STRICT
    AS '$libdir/postgis-2.3', 'LWGEOM_from_text';
 ,   DROP FUNCTION public.st_geomfromtext(text);
       public       postgres    false    6    1165            e           1255    178317    st_geomfromtext(text, integer)    FUNCTION     �   CREATE FUNCTION st_geomfromtext(text, integer) RETURNS geometry
    LANGUAGE c IMMUTABLE STRICT
    AS '$libdir/postgis-2.3', 'LWGEOM_from_text';
 5   DROP FUNCTION public.st_geomfromtext(text, integer);
       public       postgres    false    6    1165            f           1255    178017    st_geomfromtwkb(bytea)    FUNCTION     �   CREATE FUNCTION st_geomfromtwkb(bytea) RETURNS geometry
    LANGUAGE c IMMUTABLE STRICT
    AS '$libdir/postgis-2.3', 'LWGEOMFromTWKB';
 -   DROP FUNCTION public.st_geomfromtwkb(bytea);
       public       postgres    false    6    1165            |           1255    178340    st_geomfromwkb(bytea)    FUNCTION     �   CREATE FUNCTION st_geomfromwkb(bytea) RETURNS geometry
    LANGUAGE c IMMUTABLE STRICT
    AS '$libdir/postgis-2.3', 'LWGEOM_from_WKB';
 ,   DROP FUNCTION public.st_geomfromwkb(bytea);
       public       postgres    false    6    1165            }           1255    178341    st_geomfromwkb(bytea, integer)    FUNCTION     �   CREATE FUNCTION st_geomfromwkb(bytea, integer) RETURNS geometry
    LANGUAGE sql IMMUTABLE STRICT
    AS $_$SELECT ST_SetSRID(ST_GeomFromWKB($1), $2)$_$;
 5   DROP FUNCTION public.st_geomfromwkb(bytea, integer);
       public       postgres    false    6    1165            9           1255    178273    st_gmltosql(text)    FUNCTION     �   CREATE FUNCTION st_gmltosql(text) RETURNS geometry
    LANGUAGE sql IMMUTABLE STRICT
    AS $_$SELECT _ST_GeomFromGML($1, 0)$_$;
 (   DROP FUNCTION public.st_gmltosql(text);
       public       postgres    false    6    1165            :           1255    178274    st_gmltosql(text, integer)    FUNCTION     �   CREATE FUNCTION st_gmltosql(text, integer) RETURNS geometry
    LANGUAGE c IMMUTABLE STRICT
    AS '$libdir/postgis-2.3', 'geom_from_gml';
 1   DROP FUNCTION public.st_gmltosql(text, integer);
       public       postgres    false    6    1165            '           1255    178558    st_hasarc(geometry)    FUNCTION     �   CREATE FUNCTION st_hasarc(geometry geometry) RETURNS boolean
    LANGUAGE c IMMUTABLE STRICT
    AS '$libdir/postgis-2.3', 'LWGEOM_has_arc';
 3   DROP FUNCTION public.st_hasarc(geometry geometry);
       public       postgres    false    1165    6            �           1255    178177 (   st_hausdorffdistance(geometry, geometry)    FUNCTION     �   CREATE FUNCTION st_hausdorffdistance(geom1 geometry, geom2 geometry) RETURNS double precision
    LANGUAGE c IMMUTABLE STRICT COST 100
    AS '$libdir/postgis-2.3', 'hausdorffdistance';
 K   DROP FUNCTION public.st_hausdorffdistance(geom1 geometry, geom2 geometry);
       public       postgres    false    6    1165    1165            �           1255    178178 :   st_hausdorffdistance(geometry, geometry, double precision)    FUNCTION     �   CREATE FUNCTION st_hausdorffdistance(geom1 geometry, geom2 geometry, double precision) RETURNS double precision
    LANGUAGE c IMMUTABLE STRICT COST 100
    AS '$libdir/postgis-2.3', 'hausdorffdistancedensify';
 ]   DROP FUNCTION public.st_hausdorffdistance(geom1 geometry, geom2 geometry, double precision);
       public       postgres    false    6    1165    1165            V           1255    178301 #   st_interiorringn(geometry, integer)    FUNCTION     �   CREATE FUNCTION st_interiorringn(geometry, integer) RETURNS geometry
    LANGUAGE c IMMUTABLE STRICT
    AS '$libdir/postgis-2.3', 'LWGEOM_interiorringn_polygon';
 :   DROP FUNCTION public.st_interiorringn(geometry, integer);
       public       postgres    false    6    1165    1165            1           1255    178568 '   st_interpolatepoint(geometry, geometry)    FUNCTION     �   CREATE FUNCTION st_interpolatepoint(line geometry, point geometry) RETURNS double precision
    LANGUAGE c IMMUTABLE STRICT
    AS '$libdir/postgis-2.3', 'ST_InterpolatePoint';
 I   DROP FUNCTION public.st_interpolatepoint(line geometry, point geometry);
       public       postgres    false    1165    1165    6            	           1255    178520    st_intersection(text, text)    FUNCTION     �   CREATE FUNCTION st_intersection(text, text) RETURNS geometry
    LANGUAGE sql IMMUTABLE STRICT
    AS $_$ SELECT ST_Intersection($1::geometry, $2::geometry);  $_$;
 2   DROP FUNCTION public.st_intersection(text, text);
       public       postgres    false    6    1165                       1255    178519 %   st_intersection(geography, geography)    FUNCTION       CREATE FUNCTION st_intersection(geography, geography) RETURNS geography
    LANGUAGE sql IMMUTABLE STRICT
    AS $_$SELECT geography(ST_Transform(ST_Intersection(ST_Transform(geometry($1), _ST_BestSRID($1, $2)), ST_Transform(geometry($2), _ST_BestSRID($1, $2))), 4326))$_$;
 <   DROP FUNCTION public.st_intersection(geography, geography);
       public       postgres    false    1199    1199    1199    6            �           1255    178156 #   st_intersection(geometry, geometry)    FUNCTION     �   CREATE FUNCTION st_intersection(geom1 geometry, geom2 geometry) RETURNS geometry
    LANGUAGE c IMMUTABLE STRICT COST 100
    AS '$libdir/postgis-2.3', 'intersection';
 F   DROP FUNCTION public.st_intersection(geom1 geometry, geom2 geometry);
       public       postgres    false    6    1165    1165    1165                        1255    178510    st_intersects(text, text)    FUNCTION     �   CREATE FUNCTION st_intersects(text, text) RETURNS boolean
    LANGUAGE sql IMMUTABLE
    AS $_$ SELECT ST_Intersects($1::geometry, $2::geometry);  $_$;
 0   DROP FUNCTION public.st_intersects(text, text);
       public       postgres    false    6            �           1255    178509 #   st_intersects(geography, geography)    FUNCTION     �   CREATE FUNCTION st_intersects(geography, geography) RETURNS boolean
    LANGUAGE sql IMMUTABLE
    AS $_$SELECT $1 OPERATOR(&&) $2 AND _ST_Distance($1, $2, 0.0, false) < 0.00001$_$;
 :   DROP FUNCTION public.st_intersects(geography, geography);
       public       postgres    false    1199    1199    6                       1255    178243 !   st_intersects(geometry, geometry)    FUNCTION     �   CREATE FUNCTION st_intersects(geom1 geometry, geom2 geometry) RETURNS boolean
    LANGUAGE sql IMMUTABLE
    AS $_$SELECT $1 OPERATOR(&&) $2 AND _ST_Intersects($1,$2)$_$;
 D   DROP FUNCTION public.st_intersects(geom1 geometry, geom2 geometry);
       public       postgres    false    6    1165    1165            ^           1255    178309    st_isclosed(geometry)    FUNCTION     �   CREATE FUNCTION st_isclosed(geometry) RETURNS boolean
    LANGUAGE c IMMUTABLE STRICT COST 10
    AS '$libdir/postgis-2.3', 'LWGEOM_isclosed';
 ,   DROP FUNCTION public.st_isclosed(geometry);
       public       postgres    false    6    1165            2           1255    178266    st_iscollection(geometry)    FUNCTION     �   CREATE FUNCTION st_iscollection(geometry) RETURNS boolean
    LANGUAGE c IMMUTABLE STRICT COST 5
    AS '$libdir/postgis-2.3', 'ST_IsCollection';
 0   DROP FUNCTION public.st_iscollection(geometry);
       public       postgres    false    6    1165            _           1255    178310    st_isempty(geometry)    FUNCTION     �   CREATE FUNCTION st_isempty(geometry) RETURNS boolean
    LANGUAGE c IMMUTABLE STRICT COST 10
    AS '$libdir/postgis-2.3', 'LWGEOM_isempty';
 +   DROP FUNCTION public.st_isempty(geometry);
       public       postgres    false    6    1165            /           1255    178263    st_isring(geometry)    FUNCTION     |   CREATE FUNCTION st_isring(geometry) RETURNS boolean
    LANGUAGE c IMMUTABLE STRICT
    AS '$libdir/postgis-2.3', 'isring';
 *   DROP FUNCTION public.st_isring(geometry);
       public       postgres    false    6    1165            1           1255    178265    st_issimple(geometry)    FUNCTION     �   CREATE FUNCTION st_issimple(geometry) RETURNS boolean
    LANGUAGE c IMMUTABLE STRICT COST 25
    AS '$libdir/postgis-2.3', 'issimple';
 ,   DROP FUNCTION public.st_issimple(geometry);
       public       postgres    false    6    1165            *           1255    178258    st_isvalid(geometry)    FUNCTION     �   CREATE FUNCTION st_isvalid(geometry) RETURNS boolean
    LANGUAGE c IMMUTABLE STRICT COST 1000
    AS '$libdir/postgis-2.3', 'isvalid';
 +   DROP FUNCTION public.st_isvalid(geometry);
       public       postgres    false    6    1165            �           1255    178176    st_isvalid(geometry, integer)    FUNCTION     �   CREATE FUNCTION st_isvalid(geometry, integer) RETURNS boolean
    LANGUAGE sql IMMUTABLE STRICT
    AS $_$SELECT (ST_isValidDetail($1, $2)).valid$_$;
 4   DROP FUNCTION public.st_isvalid(geometry, integer);
       public       postgres    false    6    1165            �           1255    178173    st_isvaliddetail(geometry)    FUNCTION     �   CREATE FUNCTION st_isvaliddetail(geometry) RETURNS valid_detail
    LANGUAGE c IMMUTABLE STRICT COST 1000
    AS '$libdir/postgis-2.3', 'isvaliddetail';
 1   DROP FUNCTION public.st_isvaliddetail(geometry);
       public       postgres    false    6    1192    1165            �           1255    178174 #   st_isvaliddetail(geometry, integer)    FUNCTION     �   CREATE FUNCTION st_isvaliddetail(geometry, integer) RETURNS valid_detail
    LANGUAGE c IMMUTABLE STRICT COST 1000
    AS '$libdir/postgis-2.3', 'isvaliddetail';
 :   DROP FUNCTION public.st_isvaliddetail(geometry, integer);
       public       postgres    false    6    1192    1165            �           1255    178169    st_isvalidreason(geometry)    FUNCTION     �   CREATE FUNCTION st_isvalidreason(geometry) RETURNS text
    LANGUAGE c IMMUTABLE STRICT COST 1000
    AS '$libdir/postgis-2.3', 'isvalidreason';
 1   DROP FUNCTION public.st_isvalidreason(geometry);
       public       postgres    false    6    1165            �           1255    178175 #   st_isvalidreason(geometry, integer)    FUNCTION     �   CREATE FUNCTION st_isvalidreason(geometry, integer) RETURNS text
    LANGUAGE sql IMMUTABLE STRICT
    AS $_$
SELECT CASE WHEN valid THEN 'Valid Geometry' ELSE reason END FROM (
	SELECT (ST_isValidDetail($1, $2)).*
) foo
	$_$;
 :   DROP FUNCTION public.st_isvalidreason(geometry, integer);
       public       postgres    false    6    1165            �           1255    178155    st_isvalidtrajectory(geometry)    FUNCTION     �   CREATE FUNCTION st_isvalidtrajectory(geometry) RETURNS boolean
    LANGUAGE c IMMUTABLE STRICT
    AS '$libdir/postgis-2.3', 'ST_IsValidTrajectory';
 5   DROP FUNCTION public.st_isvalidtrajectory(geometry);
       public       postgres    false    6    1165            �           1255    178498    st_length(text)    FUNCTION     �   CREATE FUNCTION st_length(text) RETURNS double precision
    LANGUAGE sql IMMUTABLE STRICT
    AS $_$ SELECT ST_Length($1::geometry);  $_$;
 &   DROP FUNCTION public.st_length(text);
       public       postgres    false    6            *           1255    177960    st_length(geometry)    FUNCTION     �   CREATE FUNCTION st_length(geometry) RETURNS double precision
    LANGUAGE c IMMUTABLE STRICT COST 10
    AS '$libdir/postgis-2.3', 'LWGEOM_length2d_linestring';
 *   DROP FUNCTION public.st_length(geometry);
       public       postgres    false    6    1165            �           1255    178497    st_length(geography, boolean)    FUNCTION     �   CREATE FUNCTION st_length(geog geography, use_spheroid boolean DEFAULT true) RETURNS double precision
    LANGUAGE c IMMUTABLE STRICT COST 100
    AS '$libdir/postgis-2.3', 'geography_length';
 F   DROP FUNCTION public.st_length(geog geography, use_spheroid boolean);
       public       postgres    false    1199    6            )           1255    177959    st_length2d(geometry)    FUNCTION     �   CREATE FUNCTION st_length2d(geometry) RETURNS double precision
    LANGUAGE c IMMUTABLE STRICT COST 10
    AS '$libdir/postgis-2.3', 'LWGEOM_length2d_linestring';
 ,   DROP FUNCTION public.st_length2d(geometry);
       public       postgres    false    6    1165            /           1255    177965 (   st_length2d_spheroid(geometry, spheroid)    FUNCTION        CREATE FUNCTION st_length2d_spheroid(geometry, spheroid) RETURNS double precision
    LANGUAGE sql IMMUTABLE STRICT
    AS $_$ SELECT _postgis_deprecate('ST_Length2D_Spheroid', 'ST_Length2DSpheroid', '2.2.0');
    SELECT ST_Length2DSpheroid($1,$2);
  $_$;
 ?   DROP FUNCTION public.st_length2d_spheroid(geometry, spheroid);
       public       postgres    false    1165    6    1161            .           1255    177964 '   st_length2dspheroid(geometry, spheroid)    FUNCTION     �   CREATE FUNCTION st_length2dspheroid(geometry, spheroid) RETURNS double precision
    LANGUAGE c IMMUTABLE STRICT COST 500
    AS '$libdir/postgis-2.3', 'LWGEOM_length2d_ellipsoid';
 >   DROP FUNCTION public.st_length2dspheroid(geometry, spheroid);
       public       postgres    false    1165    6    1161            -           1255    177963 &   st_length_spheroid(geometry, spheroid)    FUNCTION     �   CREATE FUNCTION st_length_spheroid(geometry, spheroid) RETURNS double precision
    LANGUAGE sql IMMUTABLE STRICT
    AS $_$ SELECT _postgis_deprecate('ST_Length_Spheroid', 'ST_LengthSpheroid', '2.2.0');
    SELECT ST_LengthSpheroid($1,$2);
  $_$;
 =   DROP FUNCTION public.st_length_spheroid(geometry, spheroid);
       public       postgres    false    1165    6    1161            +           1255    177961 %   st_lengthspheroid(geometry, spheroid)    FUNCTION     �   CREATE FUNCTION st_lengthspheroid(geometry, spheroid) RETURNS double precision
    LANGUAGE c IMMUTABLE STRICT COST 500
    AS '$libdir/postgis-2.3', 'LWGEOM_length_ellipsoid_linestring';
 <   DROP FUNCTION public.st_lengthspheroid(geometry, spheroid);
       public       postgres    false    1161    6    1165            �           1255    178144 5   st_line_interpolate_point(geometry, double precision)    FUNCTION       CREATE FUNCTION st_line_interpolate_point(geometry, double precision) RETURNS geometry
    LANGUAGE sql IMMUTABLE STRICT
    AS $_$ SELECT _postgis_deprecate('ST_Line_Interpolate_Point', 'ST_LineInterpolatePoint', '2.1.0');
    SELECT ST_LineInterpolatePoint($1, $2);
  $_$;
 L   DROP FUNCTION public.st_line_interpolate_point(geometry, double precision);
       public       postgres    false    1165    1165    6            �           1255    178148 (   st_line_locate_point(geometry, geometry)    FUNCTION       CREATE FUNCTION st_line_locate_point(geom1 geometry, geom2 geometry) RETURNS double precision
    LANGUAGE sql IMMUTABLE STRICT
    AS $_$ SELECT _postgis_deprecate('ST_Line_Locate_Point', 'ST_LineLocatePoint', '2.1.0');
     SELECT ST_LineLocatePoint($1, $2);
  $_$;
 K   DROP FUNCTION public.st_line_locate_point(geom1 geometry, geom2 geometry);
       public       postgres    false    6    1165    1165            �           1255    178146 ?   st_line_substring(geometry, double precision, double precision)    FUNCTION       CREATE FUNCTION st_line_substring(geometry, double precision, double precision) RETURNS geometry
    LANGUAGE sql IMMUTABLE STRICT
    AS $_$ SELECT _postgis_deprecate('ST_Line_Substring', 'ST_LineSubstring', '2.1.0');
     SELECT ST_LineSubstring($1, $2, $3);
  $_$;
 V   DROP FUNCTION public.st_line_substring(geometry, double precision, double precision);
       public       postgres    false    6    1165    1165            �           1255    178167 ,   st_linecrossingdirection(geometry, geometry)    FUNCTION     �   CREATE FUNCTION st_linecrossingdirection(geom1 geometry, geom2 geometry) RETURNS integer
    LANGUAGE sql IMMUTABLE
    AS $_$ SELECT CASE WHEN NOT $1 OPERATOR(&&) $2 THEN 0 ELSE _ST_LineCrossingDirection($1,$2) END $_$;
 O   DROP FUNCTION public.st_linecrossingdirection(geom1 geometry, geom2 geometry);
       public       postgres    false    6    1165    1165            >           1255    178278 )   st_linefromencodedpolyline(text, integer)    FUNCTION     �   CREATE FUNCTION st_linefromencodedpolyline(text, integer DEFAULT 5) RETURNS geometry
    LANGUAGE c IMMUTABLE STRICT
    AS '$libdir/postgis-2.3', 'line_from_encoded_polyline';
 @   DROP FUNCTION public.st_linefromencodedpolyline(text, integer);
       public       postgres    false    6    1165            p           1255    178027    st_linefrommultipoint(geometry)    FUNCTION     �   CREATE FUNCTION st_linefrommultipoint(geometry) RETURNS geometry
    LANGUAGE c IMMUTABLE STRICT
    AS '$libdir/postgis-2.3', 'LWGEOM_line_from_mpoint';
 6   DROP FUNCTION public.st_linefrommultipoint(geometry);
       public       postgres    false    6    1165    1165            i           1255    178321    st_linefromtext(text)    FUNCTION     �   CREATE FUNCTION st_linefromtext(text) RETURNS geometry
    LANGUAGE sql IMMUTABLE STRICT
    AS $_$
	SELECT CASE WHEN geometrytype(ST_GeomFromText($1)) = 'LINESTRING'
	THEN ST_GeomFromText($1)
	ELSE NULL END
	$_$;
 ,   DROP FUNCTION public.st_linefromtext(text);
       public       postgres    false    6    1165            j           1255    178322    st_linefromtext(text, integer)    FUNCTION     �   CREATE FUNCTION st_linefromtext(text, integer) RETURNS geometry
    LANGUAGE sql IMMUTABLE STRICT
    AS $_$
	SELECT CASE WHEN geometrytype(ST_GeomFromText($1, $2)) = 'LINESTRING'
	THEN ST_GeomFromText($1,$2)
	ELSE NULL END
	$_$;
 5   DROP FUNCTION public.st_linefromtext(text, integer);
       public       postgres    false    6    1165            �           1255    178345    st_linefromwkb(bytea)    FUNCTION     �   CREATE FUNCTION st_linefromwkb(bytea) RETURNS geometry
    LANGUAGE sql IMMUTABLE STRICT
    AS $_$
	SELECT CASE WHEN geometrytype(ST_GeomFromWKB($1)) = 'LINESTRING'
	THEN ST_GeomFromWKB($1)
	ELSE NULL END
	$_$;
 ,   DROP FUNCTION public.st_linefromwkb(bytea);
       public       postgres    false    6    1165            �           1255    178344    st_linefromwkb(bytea, integer)    FUNCTION     �   CREATE FUNCTION st_linefromwkb(bytea, integer) RETURNS geometry
    LANGUAGE sql IMMUTABLE STRICT
    AS $_$
	SELECT CASE WHEN geometrytype(ST_GeomFromWKB($1, $2)) = 'LINESTRING'
	THEN ST_GeomFromWKB($1, $2)
	ELSE NULL END
	$_$;
 5   DROP FUNCTION public.st_linefromwkb(bytea, integer);
       public       postgres    false    6    1165            �           1255    178143 3   st_lineinterpolatepoint(geometry, double precision)    FUNCTION     �   CREATE FUNCTION st_lineinterpolatepoint(geometry, double precision) RETURNS geometry
    LANGUAGE c IMMUTABLE STRICT
    AS '$libdir/postgis-2.3', 'LWGEOM_line_interpolate_point';
 J   DROP FUNCTION public.st_lineinterpolatepoint(geometry, double precision);
       public       postgres    false    6    1165    1165            �           1255    178147 &   st_linelocatepoint(geometry, geometry)    FUNCTION     �   CREATE FUNCTION st_linelocatepoint(geom1 geometry, geom2 geometry) RETURNS double precision
    LANGUAGE c IMMUTABLE STRICT
    AS '$libdir/postgis-2.3', 'LWGEOM_line_locate_point';
 I   DROP FUNCTION public.st_linelocatepoint(geom1 geometry, geom2 geometry);
       public       postgres    false    6    1165    1165            \           1255    178041    st_linemerge(geometry)    FUNCTION     �   CREATE FUNCTION st_linemerge(geometry) RETURNS geometry
    LANGUAGE c IMMUTABLE STRICT COST 100
    AS '$libdir/postgis-2.3', 'linemerge';
 -   DROP FUNCTION public.st_linemerge(geometry);
       public       postgres    false    6    1165    1165            �           1255    178347    st_linestringfromwkb(bytea)    FUNCTION     �   CREATE FUNCTION st_linestringfromwkb(bytea) RETURNS geometry
    LANGUAGE sql IMMUTABLE STRICT
    AS $_$
	SELECT CASE WHEN geometrytype(ST_GeomFromWKB($1)) = 'LINESTRING'
	THEN ST_GeomFromWKB($1)
	ELSE NULL END
	$_$;
 2   DROP FUNCTION public.st_linestringfromwkb(bytea);
       public       postgres    false    6    1165            �           1255    178346 $   st_linestringfromwkb(bytea, integer)    FUNCTION     �   CREATE FUNCTION st_linestringfromwkb(bytea, integer) RETURNS geometry
    LANGUAGE sql IMMUTABLE STRICT
    AS $_$
	SELECT CASE WHEN geometrytype(ST_GeomFromWKB($1, $2)) = 'LINESTRING'
	THEN ST_GeomFromWKB($1, $2)
	ELSE NULL END
	$_$;
 ;   DROP FUNCTION public.st_linestringfromwkb(bytea, integer);
       public       postgres    false    6    1165            �           1255    178145 >   st_linesubstring(geometry, double precision, double precision)    FUNCTION     �   CREATE FUNCTION st_linesubstring(geometry, double precision, double precision) RETURNS geometry
    LANGUAGE c IMMUTABLE STRICT
    AS '$libdir/postgis-2.3', 'LWGEOM_line_substring';
 U   DROP FUNCTION public.st_linesubstring(geometry, double precision, double precision);
       public       postgres    false    6    1165    1165            (           1255    178559    st_linetocurve(geometry)    FUNCTION     �   CREATE FUNCTION st_linetocurve(geometry geometry) RETURNS geometry
    LANGUAGE c IMMUTABLE STRICT
    AS '$libdir/postgis-2.3', 'LWGEOM_line_desegmentize';
 8   DROP FUNCTION public.st_linetocurve(geometry geometry);
       public       postgres    false    6    1165    1165            �           1255    178150 3   st_locate_along_measure(geometry, double precision)    FUNCTION     �   CREATE FUNCTION st_locate_along_measure(geometry, double precision) RETURNS geometry
    LANGUAGE sql IMMUTABLE STRICT
    AS $_$ SELECT ST_locate_between_measures($1, $2, $2) $_$;
 J   DROP FUNCTION public.st_locate_along_measure(geometry, double precision);
       public       postgres    false    6    1165    1165            �           1255    178149 H   st_locate_between_measures(geometry, double precision, double precision)    FUNCTION     �   CREATE FUNCTION st_locate_between_measures(geometry, double precision, double precision) RETURNS geometry
    LANGUAGE c IMMUTABLE STRICT
    AS '$libdir/postgis-2.3', 'LWGEOM_locate_between_m';
 _   DROP FUNCTION public.st_locate_between_measures(geometry, double precision, double precision);
       public       postgres    false    6    1165    1165            /           1255    178566 <   st_locatealong(geometry, double precision, double precision)    FUNCTION     �   CREATE FUNCTION st_locatealong(geometry geometry, measure double precision, leftrightoffset double precision DEFAULT 0.0) RETURNS geometry
    LANGUAGE c IMMUTABLE STRICT
    AS '$libdir/postgis-2.3', 'ST_LocateAlong';
 t   DROP FUNCTION public.st_locatealong(geometry geometry, measure double precision, leftrightoffset double precision);
       public       postgres    false    6    1165    1165            .           1255    178565 P   st_locatebetween(geometry, double precision, double precision, double precision)    FUNCTION     �   CREATE FUNCTION st_locatebetween(geometry geometry, frommeasure double precision, tomeasure double precision, leftrightoffset double precision DEFAULT 0.0) RETURNS geometry
    LANGUAGE c IMMUTABLE STRICT
    AS '$libdir/postgis-2.3', 'ST_LocateBetween';
 �   DROP FUNCTION public.st_locatebetween(geometry geometry, frommeasure double precision, tomeasure double precision, leftrightoffset double precision);
       public       postgres    false    1165    6    1165            0           1255    178567 H   st_locatebetweenelevations(geometry, double precision, double precision)    FUNCTION     �   CREATE FUNCTION st_locatebetweenelevations(geometry geometry, fromelevation double precision, toelevation double precision) RETURNS geometry
    LANGUAGE c IMMUTABLE STRICT
    AS '$libdir/postgis-2.3', 'ST_LocateBetweenElevations';
 �   DROP FUNCTION public.st_locatebetweenelevations(geometry geometry, fromelevation double precision, toelevation double precision);
       public       postgres    false    1165    6    1165            �           1255    178370 "   st_longestline(geometry, geometry)    FUNCTION     �   CREATE FUNCTION st_longestline(geom1 geometry, geom2 geometry) RETURNS geometry
    LANGUAGE sql IMMUTABLE STRICT
    AS $_$SELECT _ST_LongestLine(ST_ConvexHull($1), ST_ConvexHull($2))$_$;
 E   DROP FUNCTION public.st_longestline(geom1 geometry, geom2 geometry);
       public       postgres    false    6    1165    1165    1165            �            1255    177799    st_m(geometry)    FUNCTION     �   CREATE FUNCTION st_m(geometry) RETURNS double precision
    LANGUAGE c IMMUTABLE STRICT
    AS '$libdir/postgis-2.3', 'LWGEOM_m_point';
 %   DROP FUNCTION public.st_m(geometry);
       public       postgres    false    6    1165                       1255    177940     st_makebox2d(geometry, geometry)    FUNCTION     �   CREATE FUNCTION st_makebox2d(geom1 geometry, geom2 geometry) RETURNS box2d
    LANGUAGE c IMMUTABLE STRICT
    AS '$libdir/postgis-2.3', 'BOX2D_construct';
 C   DROP FUNCTION public.st_makebox2d(geom1 geometry, geom2 geometry);
       public       postgres    false    6    1173    1165    1165            v           1255    178033 `   st_makeenvelope(double precision, double precision, double precision, double precision, integer)    FUNCTION     �   CREATE FUNCTION st_makeenvelope(double precision, double precision, double precision, double precision, integer DEFAULT 0) RETURNS geometry
    LANGUAGE c IMMUTABLE STRICT
    AS '$libdir/postgis-2.3', 'ST_MakeEnvelope';
 w   DROP FUNCTION public.st_makeenvelope(double precision, double precision, double precision, double precision, integer);
       public       postgres    false    1165    6            o           1255    178026    st_makeline(geometry[])    FUNCTION     �   CREATE FUNCTION st_makeline(geometry[]) RETURNS geometry
    LANGUAGE c IMMUTABLE STRICT
    AS '$libdir/postgis-2.3', 'LWGEOM_makeline_garray';
 .   DROP FUNCTION public.st_makeline(geometry[]);
       public       postgres    false    201    1165    200    6    1165            q           1255    178028    st_makeline(geometry, geometry)    FUNCTION     �   CREATE FUNCTION st_makeline(geom1 geometry, geom2 geometry) RETURNS geometry
    LANGUAGE c IMMUTABLE STRICT
    AS '$libdir/postgis-2.3', 'LWGEOM_makeline';
 B   DROP FUNCTION public.st_makeline(geom1 geometry, geom2 geometry);
       public       postgres    false    6    1165    1165    1165            j           1255    178021 0   st_makepoint(double precision, double precision)    FUNCTION     �   CREATE FUNCTION st_makepoint(double precision, double precision) RETURNS geometry
    LANGUAGE c IMMUTABLE STRICT
    AS '$libdir/postgis-2.3', 'LWGEOM_makepoint';
 G   DROP FUNCTION public.st_makepoint(double precision, double precision);
       public       postgres    false    6    1165            k           1255    178022 B   st_makepoint(double precision, double precision, double precision)    FUNCTION     �   CREATE FUNCTION st_makepoint(double precision, double precision, double precision) RETURNS geometry
    LANGUAGE c IMMUTABLE STRICT
    AS '$libdir/postgis-2.3', 'LWGEOM_makepoint';
 Y   DROP FUNCTION public.st_makepoint(double precision, double precision, double precision);
       public       postgres    false    6    1165            l           1255    178023 T   st_makepoint(double precision, double precision, double precision, double precision)    FUNCTION     �   CREATE FUNCTION st_makepoint(double precision, double precision, double precision, double precision) RETURNS geometry
    LANGUAGE c IMMUTABLE STRICT
    AS '$libdir/postgis-2.3', 'LWGEOM_makepoint';
 k   DROP FUNCTION public.st_makepoint(double precision, double precision, double precision, double precision);
       public       postgres    false    1165    6            m           1255    178024 C   st_makepointm(double precision, double precision, double precision)    FUNCTION     �   CREATE FUNCTION st_makepointm(double precision, double precision, double precision) RETURNS geometry
    LANGUAGE c IMMUTABLE STRICT
    AS '$libdir/postgis-2.3', 'LWGEOM_makepoint3dm';
 Z   DROP FUNCTION public.st_makepointm(double precision, double precision, double precision);
       public       postgres    false    1165    6            x           1255    178035    st_makepolygon(geometry)    FUNCTION     �   CREATE FUNCTION st_makepolygon(geometry) RETURNS geometry
    LANGUAGE c IMMUTABLE STRICT
    AS '$libdir/postgis-2.3', 'LWGEOM_makepoly';
 /   DROP FUNCTION public.st_makepolygon(geometry);
       public       postgres    false    6    1165    1165            w           1255    178034 $   st_makepolygon(geometry, geometry[])    FUNCTION     �   CREATE FUNCTION st_makepolygon(geometry, geometry[]) RETURNS geometry
    LANGUAGE c IMMUTABLE STRICT
    AS '$libdir/postgis-2.3', 'LWGEOM_makepoly';
 ;   DROP FUNCTION public.st_makepolygon(geometry, geometry[]);
       public       postgres    false    6    1165    1165    201    1165    200            �           1255    178189    st_makevalid(geometry)    FUNCTION     �   CREATE FUNCTION st_makevalid(geometry) RETURNS geometry
    LANGUAGE c IMMUTABLE STRICT COST 1000
    AS '$libdir/postgis-2.3', 'ST_MakeValid';
 -   DROP FUNCTION public.st_makevalid(geometry);
       public       postgres    false    6    1165    1165            �           1255    178366 "   st_maxdistance(geometry, geometry)    FUNCTION     �   CREATE FUNCTION st_maxdistance(geom1 geometry, geom2 geometry) RETURNS double precision
    LANGUAGE sql IMMUTABLE STRICT
    AS $_$SELECT _ST_MaxDistance(ST_ConvexHull($1), ST_ConvexHull($2))$_$;
 E   DROP FUNCTION public.st_maxdistance(geom1 geometry, geom2 geometry);
       public       postgres    false    6    1165    1165            $           1255    177954    st_mem_size(geometry)    FUNCTION     �   CREATE FUNCTION st_mem_size(geometry) RETURNS integer
    LANGUAGE sql IMMUTABLE STRICT
    AS $_$ SELECT _postgis_deprecate('ST_Mem_Size', 'ST_MemSize', '2.2.0');
    SELECT ST_MemSize($1);
  $_$;
 ,   DROP FUNCTION public.st_mem_size(geometry);
       public       postgres    false    6    1165            #           1255    177953    st_memsize(geometry)    FUNCTION     �   CREATE FUNCTION st_memsize(geometry) RETURNS integer
    LANGUAGE c IMMUTABLE STRICT COST 5
    AS '$libdir/postgis-2.3', 'LWGEOM_mem_size';
 +   DROP FUNCTION public.st_memsize(geometry);
       public       postgres    false    1165    6            �           1255    178162 +   st_minimumboundingcircle(geometry, integer)    FUNCTION     �   CREATE FUNCTION st_minimumboundingcircle(inputgeom geometry, segs_per_quarter integer DEFAULT 48) RETURNS geometry
    LANGUAGE c IMMUTABLE STRICT
    AS '$libdir/postgis-2.3', 'ST_MinimumBoundingCircle';
 ]   DROP FUNCTION public.st_minimumboundingcircle(inputgeom geometry, segs_per_quarter integer);
       public       postgres    false    6    1165    1165            �           1255    178161 "   st_minimumboundingradius(geometry)    FUNCTION     �   CREATE FUNCTION st_minimumboundingradius(geometry, OUT center geometry, OUT radius double precision) RETURNS record
    LANGUAGE c IMMUTABLE STRICT
    AS '$libdir/postgis-2.3', 'ST_MinimumBoundingRadius';
 k   DROP FUNCTION public.st_minimumboundingradius(geometry, OUT center geometry, OUT radius double precision);
       public       postgres    false    6    1165    1165            +           1255    178259    st_minimumclearance(geometry)    FUNCTION     �   CREATE FUNCTION st_minimumclearance(geometry) RETURNS double precision
    LANGUAGE c IMMUTABLE STRICT
    AS '$libdir/postgis-2.3', 'ST_MinimumClearance';
 4   DROP FUNCTION public.st_minimumclearance(geometry);
       public       postgres    false    6    1165            ,           1255    178260 !   st_minimumclearanceline(geometry)    FUNCTION     �   CREATE FUNCTION st_minimumclearanceline(geometry) RETURNS geometry
    LANGUAGE c IMMUTABLE STRICT
    AS '$libdir/postgis-2.3', 'ST_MinimumClearanceLine';
 8   DROP FUNCTION public.st_minimumclearanceline(geometry);
       public       postgres    false    6    1165    1165            p           1255    178328    st_mlinefromtext(text)    FUNCTION     �   CREATE FUNCTION st_mlinefromtext(text) RETURNS geometry
    LANGUAGE sql IMMUTABLE STRICT
    AS $_$
	SELECT CASE WHEN geometrytype(ST_GeomFromText($1)) = 'MULTILINESTRING'
	THEN ST_GeomFromText($1)
	ELSE NULL END
	$_$;
 -   DROP FUNCTION public.st_mlinefromtext(text);
       public       postgres    false    6    1165            o           1255    178327    st_mlinefromtext(text, integer)    FUNCTION     �   CREATE FUNCTION st_mlinefromtext(text, integer) RETURNS geometry
    LANGUAGE sql IMMUTABLE STRICT
    AS $_$
	SELECT CASE
	WHEN geometrytype(ST_GeomFromText($1, $2)) = 'MULTILINESTRING'
	THEN ST_GeomFromText($1,$2)
	ELSE NULL END
	$_$;
 6   DROP FUNCTION public.st_mlinefromtext(text, integer);
       public       postgres    false    6    1165            �           1255    178358    st_mlinefromwkb(bytea)    FUNCTION     �   CREATE FUNCTION st_mlinefromwkb(bytea) RETURNS geometry
    LANGUAGE sql IMMUTABLE STRICT
    AS $_$
	SELECT CASE WHEN geometrytype(ST_GeomFromWKB($1)) = 'MULTILINESTRING'
	THEN ST_GeomFromWKB($1)
	ELSE NULL END
	$_$;
 -   DROP FUNCTION public.st_mlinefromwkb(bytea);
       public       postgres    false    6    1165            �           1255    178357    st_mlinefromwkb(bytea, integer)    FUNCTION     �   CREATE FUNCTION st_mlinefromwkb(bytea, integer) RETURNS geometry
    LANGUAGE sql IMMUTABLE STRICT
    AS $_$
	SELECT CASE WHEN geometrytype(ST_GeomFromWKB($1, $2)) = 'MULTILINESTRING'
	THEN ST_GeomFromWKB($1, $2)
	ELSE NULL END
	$_$;
 6   DROP FUNCTION public.st_mlinefromwkb(bytea, integer);
       public       postgres    false    6    1165            t           1255    178332    st_mpointfromtext(text)    FUNCTION     �   CREATE FUNCTION st_mpointfromtext(text) RETURNS geometry
    LANGUAGE sql IMMUTABLE STRICT
    AS $_$
	SELECT CASE WHEN geometrytype(ST_GeomFromText($1)) = 'MULTIPOINT'
	THEN ST_GeomFromText($1)
	ELSE NULL END
	$_$;
 .   DROP FUNCTION public.st_mpointfromtext(text);
       public       postgres    false    6    1165            s           1255    178331     st_mpointfromtext(text, integer)    FUNCTION     �   CREATE FUNCTION st_mpointfromtext(text, integer) RETURNS geometry
    LANGUAGE sql IMMUTABLE STRICT
    AS $_$
	SELECT CASE WHEN geometrytype(ST_GeomFromText($1, $2)) = 'MULTIPOINT'
	THEN ST_GeomFromText($1, $2)
	ELSE NULL END
	$_$;
 7   DROP FUNCTION public.st_mpointfromtext(text, integer);
       public       postgres    false    6    1165            �           1255    178353    st_mpointfromwkb(bytea)    FUNCTION     �   CREATE FUNCTION st_mpointfromwkb(bytea) RETURNS geometry
    LANGUAGE sql IMMUTABLE STRICT
    AS $_$
	SELECT CASE WHEN geometrytype(ST_GeomFromWKB($1)) = 'MULTIPOINT'
	THEN ST_GeomFromWKB($1)
	ELSE NULL END
	$_$;
 .   DROP FUNCTION public.st_mpointfromwkb(bytea);
       public       postgres    false    6    1165            �           1255    178352     st_mpointfromwkb(bytea, integer)    FUNCTION     �   CREATE FUNCTION st_mpointfromwkb(bytea, integer) RETURNS geometry
    LANGUAGE sql IMMUTABLE STRICT
    AS $_$
	SELECT CASE WHEN geometrytype(ST_GeomFromWKB($1, $2)) = 'MULTIPOINT'
	THEN ST_GeomFromWKB($1, $2)
	ELSE NULL END
	$_$;
 7   DROP FUNCTION public.st_mpointfromwkb(bytea, integer);
       public       postgres    false    6    1165            w           1255    178335    st_mpolyfromtext(text)    FUNCTION     �   CREATE FUNCTION st_mpolyfromtext(text) RETURNS geometry
    LANGUAGE sql IMMUTABLE STRICT
    AS $_$
	SELECT CASE WHEN geometrytype(ST_GeomFromText($1)) = 'MULTIPOLYGON'
	THEN ST_GeomFromText($1)
	ELSE NULL END
	$_$;
 -   DROP FUNCTION public.st_mpolyfromtext(text);
       public       postgres    false    6    1165            v           1255    178334    st_mpolyfromtext(text, integer)    FUNCTION     �   CREATE FUNCTION st_mpolyfromtext(text, integer) RETURNS geometry
    LANGUAGE sql IMMUTABLE STRICT
    AS $_$
	SELECT CASE WHEN geometrytype(ST_GeomFromText($1, $2)) = 'MULTIPOLYGON'
	THEN ST_GeomFromText($1,$2)
	ELSE NULL END
	$_$;
 6   DROP FUNCTION public.st_mpolyfromtext(text, integer);
       public       postgres    false    6    1165            �           1255    178360    st_mpolyfromwkb(bytea)    FUNCTION     �   CREATE FUNCTION st_mpolyfromwkb(bytea) RETURNS geometry
    LANGUAGE sql IMMUTABLE STRICT
    AS $_$
	SELECT CASE WHEN geometrytype(ST_GeomFromWKB($1)) = 'MULTIPOLYGON'
	THEN ST_GeomFromWKB($1)
	ELSE NULL END
	$_$;
 -   DROP FUNCTION public.st_mpolyfromwkb(bytea);
       public       postgres    false    6    1165            �           1255    178359    st_mpolyfromwkb(bytea, integer)    FUNCTION     �   CREATE FUNCTION st_mpolyfromwkb(bytea, integer) RETURNS geometry
    LANGUAGE sql IMMUTABLE STRICT
    AS $_$
	SELECT CASE WHEN geometrytype(ST_GeomFromWKB($1, $2)) = 'MULTIPOLYGON'
	THEN ST_GeomFromWKB($1, $2)
	ELSE NULL END
	$_$;
 6   DROP FUNCTION public.st_mpolyfromwkb(bytea, integer);
       public       postgres    false    6    1165            I           1255    177991    st_multi(geometry)    FUNCTION     �   CREATE FUNCTION st_multi(geometry) RETURNS geometry
    LANGUAGE c IMMUTABLE STRICT COST 10
    AS '$libdir/postgis-2.3', 'LWGEOM_force_multi';
 )   DROP FUNCTION public.st_multi(geometry);
       public       postgres    false    1165    6    1165            �           1255    178356    st_multilinefromwkb(bytea)    FUNCTION     �   CREATE FUNCTION st_multilinefromwkb(bytea) RETURNS geometry
    LANGUAGE sql IMMUTABLE STRICT
    AS $_$
	SELECT CASE WHEN geometrytype(ST_GeomFromWKB($1)) = 'MULTILINESTRING'
	THEN ST_GeomFromWKB($1)
	ELSE NULL END
	$_$;
 1   DROP FUNCTION public.st_multilinefromwkb(bytea);
       public       postgres    false    6    1165            q           1255    178329     st_multilinestringfromtext(text)    FUNCTION     �   CREATE FUNCTION st_multilinestringfromtext(text) RETURNS geometry
    LANGUAGE sql IMMUTABLE STRICT
    AS $_$SELECT ST_MLineFromText($1)$_$;
 7   DROP FUNCTION public.st_multilinestringfromtext(text);
       public       postgres    false    6    1165            r           1255    178330 )   st_multilinestringfromtext(text, integer)    FUNCTION     �   CREATE FUNCTION st_multilinestringfromtext(text, integer) RETURNS geometry
    LANGUAGE sql IMMUTABLE STRICT
    AS $_$SELECT ST_MLineFromText($1, $2)$_$;
 @   DROP FUNCTION public.st_multilinestringfromtext(text, integer);
       public       postgres    false    6    1165            u           1255    178333    st_multipointfromtext(text)    FUNCTION     �   CREATE FUNCTION st_multipointfromtext(text) RETURNS geometry
    LANGUAGE sql IMMUTABLE STRICT
    AS $_$SELECT ST_MPointFromText($1)$_$;
 2   DROP FUNCTION public.st_multipointfromtext(text);
       public       postgres    false    6    1165            �           1255    178355    st_multipointfromwkb(bytea)    FUNCTION     �   CREATE FUNCTION st_multipointfromwkb(bytea) RETURNS geometry
    LANGUAGE sql IMMUTABLE STRICT
    AS $_$
	SELECT CASE WHEN geometrytype(ST_GeomFromWKB($1)) = 'MULTIPOINT'
	THEN ST_GeomFromWKB($1)
	ELSE NULL END
	$_$;
 2   DROP FUNCTION public.st_multipointfromwkb(bytea);
       public       postgres    false    6    1165            �           1255    178354 $   st_multipointfromwkb(bytea, integer)    FUNCTION     �   CREATE FUNCTION st_multipointfromwkb(bytea, integer) RETURNS geometry
    LANGUAGE sql IMMUTABLE STRICT
    AS $_$
	SELECT CASE WHEN geometrytype(ST_GeomFromWKB($1,$2)) = 'MULTIPOINT'
	THEN ST_GeomFromWKB($1, $2)
	ELSE NULL END
	$_$;
 ;   DROP FUNCTION public.st_multipointfromwkb(bytea, integer);
       public       postgres    false    6    1165            �           1255    178362    st_multipolyfromwkb(bytea)    FUNCTION     �   CREATE FUNCTION st_multipolyfromwkb(bytea) RETURNS geometry
    LANGUAGE sql IMMUTABLE STRICT
    AS $_$
	SELECT CASE WHEN geometrytype(ST_GeomFromWKB($1)) = 'MULTIPOLYGON'
	THEN ST_GeomFromWKB($1)
	ELSE NULL END
	$_$;
 1   DROP FUNCTION public.st_multipolyfromwkb(bytea);
       public       postgres    false    6    1165            �           1255    178361 #   st_multipolyfromwkb(bytea, integer)    FUNCTION     �   CREATE FUNCTION st_multipolyfromwkb(bytea, integer) RETURNS geometry
    LANGUAGE sql IMMUTABLE STRICT
    AS $_$
	SELECT CASE WHEN geometrytype(ST_GeomFromWKB($1, $2)) = 'MULTIPOLYGON'
	THEN ST_GeomFromWKB($1, $2)
	ELSE NULL END
	$_$;
 :   DROP FUNCTION public.st_multipolyfromwkb(bytea, integer);
       public       postgres    false    6    1165            y           1255    178337    st_multipolygonfromtext(text)    FUNCTION     �   CREATE FUNCTION st_multipolygonfromtext(text) RETURNS geometry
    LANGUAGE sql IMMUTABLE STRICT
    AS $_$SELECT ST_MPolyFromText($1)$_$;
 4   DROP FUNCTION public.st_multipolygonfromtext(text);
       public       postgres    false    6    1165            x           1255    178336 &   st_multipolygonfromtext(text, integer)    FUNCTION     �   CREATE FUNCTION st_multipolygonfromtext(text, integer) RETURNS geometry
    LANGUAGE sql IMMUTABLE STRICT
    AS $_$SELECT ST_MPolyFromText($1, $2)$_$;
 =   DROP FUNCTION public.st_multipolygonfromtext(text, integer);
       public       postgres    false    6    1165            X           1255    178006    st_ndims(geometry)    FUNCTION     �   CREATE FUNCTION st_ndims(geometry) RETURNS smallint
    LANGUAGE c IMMUTABLE STRICT COST 5
    AS '$libdir/postgis-2.3', 'LWGEOM_ndims';
 )   DROP FUNCTION public.st_ndims(geometry);
       public       postgres    false    6    1165            �           1255    178195    st_node(geometry)    FUNCTION     �   CREATE FUNCTION st_node(g geometry) RETURNS geometry
    LANGUAGE c IMMUTABLE STRICT COST 100
    AS '$libdir/postgis-2.3', 'ST_Node';
 *   DROP FUNCTION public.st_node(g geometry);
       public       postgres    false    6    1165    1165            V           1255    178004    st_normalize(geometry)    FUNCTION     �   CREATE FUNCTION st_normalize(geom geometry) RETURNS geometry
    LANGUAGE c IMMUTABLE STRICT COST 20
    AS '$libdir/postgis-2.3', 'ST_Normalize';
 2   DROP FUNCTION public.st_normalize(geom geometry);
       public       postgres    false    6    1165    1165            &           1255    177956    st_npoints(geometry)    FUNCTION     �   CREATE FUNCTION st_npoints(geometry) RETURNS integer
    LANGUAGE c IMMUTABLE STRICT COST 10
    AS '$libdir/postgis-2.3', 'LWGEOM_npoints';
 +   DROP FUNCTION public.st_npoints(geometry);
       public       postgres    false    6    1165            '           1255    177957    st_nrings(geometry)    FUNCTION     �   CREATE FUNCTION st_nrings(geometry) RETURNS integer
    LANGUAGE c IMMUTABLE STRICT
    AS '$libdir/postgis-2.3', 'LWGEOM_nrings';
 *   DROP FUNCTION public.st_nrings(geometry);
       public       postgres    false    6    1165            P           1255    178295    st_numgeometries(geometry)    FUNCTION     �   CREATE FUNCTION st_numgeometries(geometry) RETURNS integer
    LANGUAGE c IMMUTABLE STRICT
    AS '$libdir/postgis-2.3', 'LWGEOM_numgeometries_collection';
 1   DROP FUNCTION public.st_numgeometries(geometry);
       public       postgres    false    6    1165            U           1255    178300    st_numinteriorring(geometry)    FUNCTION     �   CREATE FUNCTION st_numinteriorring(geometry) RETURNS integer
    LANGUAGE c IMMUTABLE STRICT
    AS '$libdir/postgis-2.3', 'LWGEOM_numinteriorrings_polygon';
 3   DROP FUNCTION public.st_numinteriorring(geometry);
       public       postgres    false    6    1165            T           1255    178299    st_numinteriorrings(geometry)    FUNCTION     �   CREATE FUNCTION st_numinteriorrings(geometry) RETURNS integer
    LANGUAGE c IMMUTABLE STRICT
    AS '$libdir/postgis-2.3', 'LWGEOM_numinteriorrings_polygon';
 4   DROP FUNCTION public.st_numinteriorrings(geometry);
       public       postgres    false    6    1165            Z           1255    178305    st_numpatches(geometry)    FUNCTION     �   CREATE FUNCTION st_numpatches(geometry) RETURNS integer
    LANGUAGE sql IMMUTABLE STRICT
    AS $_$
	SELECT CASE WHEN ST_GeometryType($1) = 'ST_PolyhedralSurface'
	THEN ST_NumGeometries($1)
	ELSE NULL END
	$_$;
 .   DROP FUNCTION public.st_numpatches(geometry);
       public       postgres    false    6    1165            O           1255    178294    st_numpoints(geometry)    FUNCTION     �   CREATE FUNCTION st_numpoints(geometry) RETURNS integer
    LANGUAGE c IMMUTABLE STRICT
    AS '$libdir/postgis-2.3', 'LWGEOM_numpoints_linestring';
 -   DROP FUNCTION public.st_numpoints(geometry);
       public       postgres    false    6    1165            �           1255    178163 0   st_offsetcurve(geometry, double precision, text)    FUNCTION     �   CREATE FUNCTION st_offsetcurve(line geometry, distance double precision, params text DEFAULT ''::text) RETURNS geometry
    LANGUAGE c IMMUTABLE STRICT COST 100
    AS '$libdir/postgis-2.3', 'ST_OffsetCurve';
 \   DROP FUNCTION public.st_offsetcurve(line geometry, distance double precision, params text);
       public       postgres    false    6    1165    1165            *           1255    178561 %   st_orderingequals(geometry, geometry)    FUNCTION     �   CREATE FUNCTION st_orderingequals(geometrya geometry, geometryb geometry) RETURNS boolean
    LANGUAGE sql IMMUTABLE
    AS $_$
	SELECT $1 OPERATOR(~=) $2 AND _ST_OrderingEquals($1, $2)
	$_$;
 P   DROP FUNCTION public.st_orderingequals(geometrya geometry, geometryb geometry);
       public       postgres    false    1165    6    1165            )           1255    178257    st_overlaps(geometry, geometry)    FUNCTION     �   CREATE FUNCTION st_overlaps(geom1 geometry, geom2 geometry) RETURNS boolean
    LANGUAGE sql IMMUTABLE
    AS $_$SELECT $1 OPERATOR(&&) $2 AND _ST_Overlaps($1,$2)$_$;
 B   DROP FUNCTION public.st_overlaps(geom1 geometry, geom2 geometry);
       public       postgres    false    6    1165    1165            [           1255    178306    st_patchn(geometry, integer)    FUNCTION     �   CREATE FUNCTION st_patchn(geometry, integer) RETURNS geometry
    LANGUAGE sql IMMUTABLE STRICT
    AS $_$
	SELECT CASE WHEN ST_GeometryType($1) = 'ST_PolyhedralSurface'
	THEN ST_GeometryN($1, $2)
	ELSE NULL END
	$_$;
 3   DROP FUNCTION public.st_patchn(geometry, integer);
       public       postgres    false    6    1165    1165            2           1255    177968    st_perimeter(geometry)    FUNCTION     �   CREATE FUNCTION st_perimeter(geometry) RETURNS double precision
    LANGUAGE c IMMUTABLE STRICT COST 10
    AS '$libdir/postgis-2.3', 'LWGEOM_perimeter2d_poly';
 -   DROP FUNCTION public.st_perimeter(geometry);
       public       postgres    false    6    1165            �           1255    178501     st_perimeter(geography, boolean)    FUNCTION     �   CREATE FUNCTION st_perimeter(geog geography, use_spheroid boolean DEFAULT true) RETURNS double precision
    LANGUAGE c IMMUTABLE STRICT COST 100
    AS '$libdir/postgis-2.3', 'geography_perimeter';
 I   DROP FUNCTION public.st_perimeter(geog geography, use_spheroid boolean);
       public       postgres    false    1199    6            1           1255    177967    st_perimeter2d(geometry)    FUNCTION     �   CREATE FUNCTION st_perimeter2d(geometry) RETURNS double precision
    LANGUAGE c IMMUTABLE STRICT COST 10
    AS '$libdir/postgis-2.3', 'LWGEOM_perimeter2d_poly';
 /   DROP FUNCTION public.st_perimeter2d(geometry);
       public       postgres    false    6    1165            +           1255    178562 ,   st_point(double precision, double precision)    FUNCTION     �   CREATE FUNCTION st_point(double precision, double precision) RETURNS geometry
    LANGUAGE c IMMUTABLE STRICT
    AS '$libdir/postgis-2.3', 'LWGEOM_makepoint';
 C   DROP FUNCTION public.st_point(double precision, double precision);
       public       postgres    false    6    1165            9           1255    177975 V   st_point_inside_circle(geometry, double precision, double precision, double precision)    FUNCTION     /  CREATE FUNCTION st_point_inside_circle(geometry, double precision, double precision, double precision) RETURNS boolean
    LANGUAGE sql IMMUTABLE STRICT
    AS $_$ SELECT _postgis_deprecate('ST_Point_Inside_Circle', 'ST_PointInsideCircle', '2.2.0');
    SELECT ST_PointInsideCircle($1,$2,$3,$4);
  $_$;
 m   DROP FUNCTION public.st_point_inside_circle(geometry, double precision, double precision, double precision);
       public       postgres    false    6    1165            M           1255    178292 "   st_pointfromgeohash(text, integer)    FUNCTION     �   CREATE FUNCTION st_pointfromgeohash(text, integer DEFAULT NULL::integer) RETURNS geometry
    LANGUAGE c IMMUTABLE
    AS '$libdir/postgis-2.3', 'point_from_geohash';
 9   DROP FUNCTION public.st_pointfromgeohash(text, integer);
       public       postgres    false    6    1165            g           1255    178319    st_pointfromtext(text)    FUNCTION     �   CREATE FUNCTION st_pointfromtext(text) RETURNS geometry
    LANGUAGE sql IMMUTABLE STRICT
    AS $_$
	SELECT CASE WHEN geometrytype(ST_GeomFromText($1)) = 'POINT'
	THEN ST_GeomFromText($1)
	ELSE NULL END
	$_$;
 -   DROP FUNCTION public.st_pointfromtext(text);
       public       postgres    false    6    1165            h           1255    178320    st_pointfromtext(text, integer)    FUNCTION     �   CREATE FUNCTION st_pointfromtext(text, integer) RETURNS geometry
    LANGUAGE sql IMMUTABLE STRICT
    AS $_$
	SELECT CASE WHEN geometrytype(ST_GeomFromText($1, $2)) = 'POINT'
	THEN ST_GeomFromText($1, $2)
	ELSE NULL END
	$_$;
 6   DROP FUNCTION public.st_pointfromtext(text, integer);
       public       postgres    false    6    1165                       1255    178343    st_pointfromwkb(bytea)    FUNCTION     �   CREATE FUNCTION st_pointfromwkb(bytea) RETURNS geometry
    LANGUAGE sql IMMUTABLE STRICT
    AS $_$
	SELECT CASE WHEN geometrytype(ST_GeomFromWKB($1)) = 'POINT'
	THEN ST_GeomFromWKB($1)
	ELSE NULL END
	$_$;
 -   DROP FUNCTION public.st_pointfromwkb(bytea);
       public       postgres    false    6    1165            ~           1255    178342    st_pointfromwkb(bytea, integer)    FUNCTION     �   CREATE FUNCTION st_pointfromwkb(bytea, integer) RETURNS geometry
    LANGUAGE sql IMMUTABLE STRICT
    AS $_$
	SELECT CASE WHEN geometrytype(ST_GeomFromWKB($1, $2)) = 'POINT'
	THEN ST_GeomFromWKB($1, $2)
	ELSE NULL END
	$_$;
 6   DROP FUNCTION public.st_pointfromwkb(bytea, integer);
       public       postgres    false    6    1165            8           1255    177974 T   st_pointinsidecircle(geometry, double precision, double precision, double precision)    FUNCTION     �   CREATE FUNCTION st_pointinsidecircle(geometry, double precision, double precision, double precision) RETURNS boolean
    LANGUAGE c IMMUTABLE STRICT
    AS '$libdir/postgis-2.3', 'LWGEOM_inside_circle_point';
 k   DROP FUNCTION public.st_pointinsidecircle(geometry, double precision, double precision, double precision);
       public       postgres    false    6    1165            Y           1255    178304    st_pointn(geometry, integer)    FUNCTION     �   CREATE FUNCTION st_pointn(geometry, integer) RETURNS geometry
    LANGUAGE c IMMUTABLE STRICT
    AS '$libdir/postgis-2.3', 'LWGEOM_pointn_linestring';
 3   DROP FUNCTION public.st_pointn(geometry, integer);
       public       postgres    false    6    1165    1165            0           1255    178264    st_pointonsurface(geometry)    FUNCTION     �   CREATE FUNCTION st_pointonsurface(geometry) RETURNS geometry
    LANGUAGE c IMMUTABLE STRICT COST 2500
    AS '$libdir/postgis-2.3', 'pointonsurface';
 2   DROP FUNCTION public.st_pointonsurface(geometry);
       public       postgres    false    6    1165    1165            �           1255    178181    st_points(geometry)    FUNCTION     �   CREATE FUNCTION st_points(geometry) RETURNS geometry
    LANGUAGE c IMMUTABLE STRICT
    AS '$libdir/postgis-2.3', 'ST_Points';
 *   DROP FUNCTION public.st_points(geometry);
       public       postgres    false    6    1165    1165            k           1255    178323    st_polyfromtext(text)    FUNCTION     �   CREATE FUNCTION st_polyfromtext(text) RETURNS geometry
    LANGUAGE sql IMMUTABLE STRICT
    AS $_$
	SELECT CASE WHEN geometrytype(ST_GeomFromText($1)) = 'POLYGON'
	THEN ST_GeomFromText($1)
	ELSE NULL END
	$_$;
 ,   DROP FUNCTION public.st_polyfromtext(text);
       public       postgres    false    6    1165            l           1255    178324    st_polyfromtext(text, integer)    FUNCTION     �   CREATE FUNCTION st_polyfromtext(text, integer) RETURNS geometry
    LANGUAGE sql IMMUTABLE STRICT
    AS $_$
	SELECT CASE WHEN geometrytype(ST_GeomFromText($1, $2)) = 'POLYGON'
	THEN ST_GeomFromText($1, $2)
	ELSE NULL END
	$_$;
 5   DROP FUNCTION public.st_polyfromtext(text, integer);
       public       postgres    false    6    1165            �           1255    178349    st_polyfromwkb(bytea)    FUNCTION     �   CREATE FUNCTION st_polyfromwkb(bytea) RETURNS geometry
    LANGUAGE sql IMMUTABLE STRICT
    AS $_$
	SELECT CASE WHEN geometrytype(ST_GeomFromWKB($1)) = 'POLYGON'
	THEN ST_GeomFromWKB($1)
	ELSE NULL END
	$_$;
 ,   DROP FUNCTION public.st_polyfromwkb(bytea);
       public       postgres    false    6    1165            �           1255    178348    st_polyfromwkb(bytea, integer)    FUNCTION     �   CREATE FUNCTION st_polyfromwkb(bytea, integer) RETURNS geometry
    LANGUAGE sql IMMUTABLE STRICT
    AS $_$
	SELECT CASE WHEN geometrytype(ST_GeomFromWKB($1, $2)) = 'POLYGON'
	THEN ST_GeomFromWKB($1, $2)
	ELSE NULL END
	$_$;
 5   DROP FUNCTION public.st_polyfromwkb(bytea, integer);
       public       postgres    false    6    1165            ,           1255    178563    st_polygon(geometry, integer)    FUNCTION     �   CREATE FUNCTION st_polygon(geometry, integer) RETURNS geometry
    LANGUAGE sql IMMUTABLE STRICT
    AS $_$
	SELECT ST_SetSRID(ST_MakePolygon($1), $2)
	$_$;
 4   DROP FUNCTION public.st_polygon(geometry, integer);
       public       postgres    false    1165    6    1165            n           1255    178326    st_polygonfromtext(text)    FUNCTION     �   CREATE FUNCTION st_polygonfromtext(text) RETURNS geometry
    LANGUAGE sql IMMUTABLE STRICT
    AS $_$SELECT ST_PolyFromText($1)$_$;
 /   DROP FUNCTION public.st_polygonfromtext(text);
       public       postgres    false    6    1165            m           1255    178325 !   st_polygonfromtext(text, integer)    FUNCTION     �   CREATE FUNCTION st_polygonfromtext(text, integer) RETURNS geometry
    LANGUAGE sql IMMUTABLE STRICT
    AS $_$SELECT ST_PolyFromText($1, $2)$_$;
 8   DROP FUNCTION public.st_polygonfromtext(text, integer);
       public       postgres    false    6    1165            �           1255    178351    st_polygonfromwkb(bytea)    FUNCTION     �   CREATE FUNCTION st_polygonfromwkb(bytea) RETURNS geometry
    LANGUAGE sql IMMUTABLE STRICT
    AS $_$
	SELECT CASE WHEN geometrytype(ST_GeomFromWKB($1)) = 'POLYGON'
	THEN ST_GeomFromWKB($1)
	ELSE NULL END
	$_$;
 /   DROP FUNCTION public.st_polygonfromwkb(bytea);
       public       postgres    false    6    1165            �           1255    178350 !   st_polygonfromwkb(bytea, integer)    FUNCTION     �   CREATE FUNCTION st_polygonfromwkb(bytea, integer) RETURNS geometry
    LANGUAGE sql IMMUTABLE STRICT
    AS $_$
	SELECT CASE WHEN geometrytype(ST_GeomFromWKB($1,$2)) = 'POLYGON'
	THEN ST_GeomFromWKB($1, $2)
	ELSE NULL END
	$_$;
 8   DROP FUNCTION public.st_polygonfromwkb(bytea, integer);
       public       postgres    false    6    1165            z           1255    178037    st_polygonize(geometry[])    FUNCTION     �   CREATE FUNCTION st_polygonize(geometry[]) RETURNS geometry
    LANGUAGE c IMMUTABLE STRICT COST 100
    AS '$libdir/postgis-2.3', 'polygonize_garray';
 0   DROP FUNCTION public.st_polygonize(geometry[]);
       public       postgres    false    201    1165    200    6    1165            �           1255    178499 9   st_project(geography, double precision, double precision)    FUNCTION     �   CREATE FUNCTION st_project(geog geography, distance double precision, azimuth double precision) RETURNS geography
    LANGUAGE c IMMUTABLE COST 100
    AS '$libdir/postgis-2.3', 'geography_project';
 f   DROP FUNCTION public.st_project(geog geography, distance double precision, azimuth double precision);
       public       postgres    false    6    1199    1199                       1255    178234    st_relate(geometry, geometry)    FUNCTION     �   CREATE FUNCTION st_relate(geom1 geometry, geom2 geometry) RETURNS text
    LANGUAGE c IMMUTABLE STRICT
    AS '$libdir/postgis-2.3', 'relate_full';
 @   DROP FUNCTION public.st_relate(geom1 geometry, geom2 geometry);
       public       postgres    false    6    1165    1165                       1255    178235 &   st_relate(geometry, geometry, integer)    FUNCTION     �   CREATE FUNCTION st_relate(geom1 geometry, geom2 geometry, integer) RETURNS text
    LANGUAGE c IMMUTABLE STRICT
    AS '$libdir/postgis-2.3', 'relate_full';
 I   DROP FUNCTION public.st_relate(geom1 geometry, geom2 geometry, integer);
       public       postgres    false    6    1165    1165                       1255    178236 #   st_relate(geometry, geometry, text)    FUNCTION     �   CREATE FUNCTION st_relate(geom1 geometry, geom2 geometry, text) RETURNS boolean
    LANGUAGE c IMMUTABLE STRICT
    AS '$libdir/postgis-2.3', 'relate_pattern';
 F   DROP FUNCTION public.st_relate(geom1 geometry, geom2 geometry, text);
       public       postgres    false    6    1165    1165            �           1255    178194    st_relatematch(text, text)    FUNCTION     �   CREATE FUNCTION st_relatematch(text, text) RETURNS boolean
    LANGUAGE c IMMUTABLE STRICT COST 100
    AS '$libdir/postgis-2.3', 'ST_RelateMatch';
 1   DROP FUNCTION public.st_relatematch(text, text);
       public       postgres    false    6            t           1255    178031 !   st_removepoint(geometry, integer)    FUNCTION     �   CREATE FUNCTION st_removepoint(geometry, integer) RETURNS geometry
    LANGUAGE c IMMUTABLE STRICT
    AS '$libdir/postgis-2.3', 'LWGEOM_removepoint';
 8   DROP FUNCTION public.st_removepoint(geometry, integer);
       public       postgres    false    1165    6    1165            �           1255    178186 3   st_removerepeatedpoints(geometry, double precision)    FUNCTION     �   CREATE FUNCTION st_removerepeatedpoints(geom geometry, tolerance double precision DEFAULT 0.0) RETURNS geometry
    LANGUAGE c IMMUTABLE STRICT COST 25
    AS '$libdir/postgis-2.3', 'ST_RemoveRepeatedPoints';
 Y   DROP FUNCTION public.st_removerepeatedpoints(geom geometry, tolerance double precision);
       public       postgres    false    6    1165    1165            S           1255    178001    st_reverse(geometry)    FUNCTION     �   CREATE FUNCTION st_reverse(geometry) RETURNS geometry
    LANGUAGE c IMMUTABLE STRICT COST 10
    AS '$libdir/postgis-2.3', 'LWGEOM_reverse';
 +   DROP FUNCTION public.st_reverse(geometry);
       public       postgres    false    1165    6    1165            ~           1255    178044 %   st_rotate(geometry, double precision)    FUNCTION     �   CREATE FUNCTION st_rotate(geometry, double precision) RETURNS geometry
    LANGUAGE sql IMMUTABLE STRICT
    AS $_$SELECT ST_Affine($1,  cos($2), -sin($2), 0,  sin($2), cos($2), 0,  0, 0, 1,  0, 0, 0)$_$;
 <   DROP FUNCTION public.st_rotate(geometry, double precision);
       public       postgres    false    1165    6    1165            �           1255    178046 /   st_rotate(geometry, double precision, geometry)    FUNCTION     8  CREATE FUNCTION st_rotate(geometry, double precision, geometry) RETURNS geometry
    LANGUAGE sql IMMUTABLE STRICT
    AS $_$SELECT ST_Affine($1,  cos($2), -sin($2), 0,  sin($2),  cos($2), 0, 0, 0, 1, ST_X($3) - cos($2) * ST_X($3) + sin($2) * ST_Y($3), ST_Y($3) - sin($2) * ST_X($3) - cos($2) * ST_Y($3), 0)$_$;
 F   DROP FUNCTION public.st_rotate(geometry, double precision, geometry);
       public       postgres    false    1165    6    1165    1165                       1255    178045 I   st_rotate(geometry, double precision, double precision, double precision)    FUNCTION     .  CREATE FUNCTION st_rotate(geometry, double precision, double precision, double precision) RETURNS geometry
    LANGUAGE sql IMMUTABLE STRICT
    AS $_$SELECT ST_Affine($1,  cos($2), -sin($2), 0,  sin($2),  cos($2), 0, 0, 0, 1,	$3 - cos($2) * $3 + sin($2) * $4, $4 - sin($2) * $3 - cos($2) * $4, 0)$_$;
 `   DROP FUNCTION public.st_rotate(geometry, double precision, double precision, double precision);
       public       postgres    false    1165    1165    6            �           1255    178048 &   st_rotatex(geometry, double precision)    FUNCTION     �   CREATE FUNCTION st_rotatex(geometry, double precision) RETURNS geometry
    LANGUAGE sql IMMUTABLE STRICT
    AS $_$SELECT ST_Affine($1, 1, 0, 0, 0, cos($2), -sin($2), 0, sin($2), cos($2), 0, 0, 0)$_$;
 =   DROP FUNCTION public.st_rotatex(geometry, double precision);
       public       postgres    false    6    1165    1165            �           1255    178049 &   st_rotatey(geometry, double precision)    FUNCTION     �   CREATE FUNCTION st_rotatey(geometry, double precision) RETURNS geometry
    LANGUAGE sql IMMUTABLE STRICT
    AS $_$SELECT ST_Affine($1,  cos($2), 0, sin($2),  0, 1, 0,  -sin($2), 0, cos($2), 0,  0, 0)$_$;
 =   DROP FUNCTION public.st_rotatey(geometry, double precision);
       public       postgres    false    1165    6    1165            �           1255    178047 &   st_rotatez(geometry, double precision)    FUNCTION     �   CREATE FUNCTION st_rotatez(geometry, double precision) RETURNS geometry
    LANGUAGE sql IMMUTABLE STRICT
    AS $_$SELECT ST_Rotate($1, $2)$_$;
 =   DROP FUNCTION public.st_rotatez(geometry, double precision);
       public       postgres    false    6    1165    1165            �           1255    178052    st_scale(geometry, geometry)    FUNCTION     �   CREATE FUNCTION st_scale(geometry, geometry) RETURNS geometry
    LANGUAGE c IMMUTABLE STRICT
    AS '$libdir/postgis-2.3', 'ST_Scale';
 3   DROP FUNCTION public.st_scale(geometry, geometry);
       public       postgres    false    1165    1165    6    1165            �           1255    178054 6   st_scale(geometry, double precision, double precision)    FUNCTION     �   CREATE FUNCTION st_scale(geometry, double precision, double precision) RETURNS geometry
    LANGUAGE sql IMMUTABLE STRICT
    AS $_$SELECT ST_Scale($1, $2, $3, 1)$_$;
 M   DROP FUNCTION public.st_scale(geometry, double precision, double precision);
       public       postgres    false    6    1165    1165            �           1255    178053 H   st_scale(geometry, double precision, double precision, double precision)    FUNCTION     �   CREATE FUNCTION st_scale(geometry, double precision, double precision, double precision) RETURNS geometry
    LANGUAGE sql IMMUTABLE STRICT
    AS $_$SELECT ST_Scale($1, ST_MakePoint($2, $3, $4))$_$;
 _   DROP FUNCTION public.st_scale(geometry, double precision, double precision, double precision);
       public       postgres    false    6    1165    1165            �           1255    178508 *   st_segmentize(geography, double precision)    FUNCTION     �   CREATE FUNCTION st_segmentize(geog geography, max_segment_length double precision) RETURNS geography
    LANGUAGE c IMMUTABLE STRICT COST 100
    AS '$libdir/postgis-2.3', 'geography_segmentize';
 Y   DROP FUNCTION public.st_segmentize(geog geography, max_segment_length double precision);
       public       postgres    false    1199    1199    6            �           1255    178142 )   st_segmentize(geometry, double precision)    FUNCTION     �   CREATE FUNCTION st_segmentize(geometry, double precision) RETURNS geometry
    LANGUAGE c IMMUTABLE STRICT COST 25
    AS '$libdir/postgis-2.3', 'LWGEOM_segmentize2d';
 @   DROP FUNCTION public.st_segmentize(geometry, double precision);
       public       postgres    false    6    1165    1165            �           1255    178137 8   st_seteffectivearea(geometry, double precision, integer)    FUNCTION     �   CREATE FUNCTION st_seteffectivearea(geometry, double precision DEFAULT (-1), integer DEFAULT 1) RETURNS geometry
    LANGUAGE c IMMUTABLE STRICT COST 50
    AS '$libdir/postgis-2.3', 'LWGEOM_SetEffectiveArea';
 O   DROP FUNCTION public.st_seteffectivearea(geometry, double precision, integer);
       public       postgres    false    1165    1165    6            u           1255    178032 (   st_setpoint(geometry, integer, geometry)    FUNCTION     �   CREATE FUNCTION st_setpoint(geometry, integer, geometry) RETURNS geometry
    LANGUAGE c IMMUTABLE STRICT
    AS '$libdir/postgis-2.3', 'LWGEOM_setpoint_linestring';
 ?   DROP FUNCTION public.st_setpoint(geometry, integer, geometry);
       public       postgres    false    6    1165    1165    1165                       1255    178529    st_setsrid(geography, integer)    FUNCTION     �   CREATE FUNCTION st_setsrid(geog geography, srid integer) RETURNS geography
    LANGUAGE c IMMUTABLE STRICT
    AS '$libdir/postgis-2.3', 'LWGEOM_set_srid';
 ?   DROP FUNCTION public.st_setsrid(geog geography, srid integer);
       public       postgres    false    6    1199    1199            �           1255    178090    st_setsrid(geometry, integer)    FUNCTION     �   CREATE FUNCTION st_setsrid(geometry, integer) RETURNS geometry
    LANGUAGE c IMMUTABLE STRICT COST 10
    AS '$libdir/postgis-2.3', 'LWGEOM_set_srid';
 4   DROP FUNCTION public.st_setsrid(geometry, integer);
       public       postgres    false    1165    1165    6            �           1255    178192 "   st_sharedpaths(geometry, geometry)    FUNCTION     �   CREATE FUNCTION st_sharedpaths(geom1 geometry, geom2 geometry) RETURNS geometry
    LANGUAGE c IMMUTABLE STRICT COST 100
    AS '$libdir/postgis-2.3', 'ST_SharedPaths';
 E   DROP FUNCTION public.st_sharedpaths(geom1 geometry, geom2 geometry);
       public       postgres    false    6    1165    1165    1165                       1255    177930    st_shift_longitude(geometry)    FUNCTION     �   CREATE FUNCTION st_shift_longitude(geometry) RETURNS geometry
    LANGUAGE sql IMMUTABLE STRICT
    AS $_$ SELECT _postgis_deprecate('ST_Shift_Longitude', 'ST_ShiftLongitude', '2.2.0');
    SELECT ST_ShiftLongitude($1);
  $_$;
 3   DROP FUNCTION public.st_shift_longitude(geometry);
       public       postgres    false    1165    1165    6            
           1255    177928    st_shiftlongitude(geometry)    FUNCTION     �   CREATE FUNCTION st_shiftlongitude(geometry) RETURNS geometry
    LANGUAGE c IMMUTABLE STRICT
    AS '$libdir/postgis-2.3', 'LWGEOM_longitude_shift';
 2   DROP FUNCTION public.st_shiftlongitude(geometry);
       public       postgres    false    6    1165    1165            �           1255    178368 #   st_shortestline(geometry, geometry)    FUNCTION     �   CREATE FUNCTION st_shortestline(geom1 geometry, geom2 geometry) RETURNS geometry
    LANGUAGE c IMMUTABLE STRICT
    AS '$libdir/postgis-2.3', 'LWGEOM_shortestline2d';
 F   DROP FUNCTION public.st_shortestline(geom1 geometry, geom2 geometry);
       public       postgres    false    6    1165    1165    1165            �           1255    178134 '   st_simplify(geometry, double precision)    FUNCTION     �   CREATE FUNCTION st_simplify(geometry, double precision) RETURNS geometry
    LANGUAGE c IMMUTABLE STRICT COST 50
    AS '$libdir/postgis-2.3', 'LWGEOM_simplify2d';
 >   DROP FUNCTION public.st_simplify(geometry, double precision);
       public       postgres    false    6    1165    1165            �           1255    178135 0   st_simplify(geometry, double precision, boolean)    FUNCTION     �   CREATE FUNCTION st_simplify(geometry, double precision, boolean) RETURNS geometry
    LANGUAGE c IMMUTABLE STRICT COST 50
    AS '$libdir/postgis-2.3', 'LWGEOM_simplify2d';
 G   DROP FUNCTION public.st_simplify(geometry, double precision, boolean);
       public       postgres    false    1165    6    1165            �           1255    178168 7   st_simplifypreservetopology(geometry, double precision)    FUNCTION     �   CREATE FUNCTION st_simplifypreservetopology(geometry, double precision) RETURNS geometry
    LANGUAGE c IMMUTABLE STRICT COST 2000
    AS '$libdir/postgis-2.3', 'topologypreservesimplify';
 N   DROP FUNCTION public.st_simplifypreservetopology(geometry, double precision);
       public       postgres    false    6    1165    1165            �           1255    178136 )   st_simplifyvw(geometry, double precision)    FUNCTION     �   CREATE FUNCTION st_simplifyvw(geometry, double precision) RETURNS geometry
    LANGUAGE c IMMUTABLE STRICT COST 50
    AS '$libdir/postgis-2.3', 'LWGEOM_SetEffectiveArea';
 @   DROP FUNCTION public.st_simplifyvw(geometry, double precision);
       public       postgres    false    6    1165    1165            �           1255    178193 -   st_snap(geometry, geometry, double precision)    FUNCTION     �   CREATE FUNCTION st_snap(geom1 geometry, geom2 geometry, double precision) RETURNS geometry
    LANGUAGE c IMMUTABLE STRICT COST 100
    AS '$libdir/postgis-2.3', 'ST_Snap';
 P   DROP FUNCTION public.st_snap(geom1 geometry, geom2 geometry, double precision);
       public       postgres    false    6    1165    1165    1165            �           1255    178140 )   st_snaptogrid(geometry, double precision)    FUNCTION     �   CREATE FUNCTION st_snaptogrid(geometry, double precision) RETURNS geometry
    LANGUAGE sql IMMUTABLE STRICT
    AS $_$SELECT ST_SnapToGrid($1, 0, 0, $2, $2)$_$;
 @   DROP FUNCTION public.st_snaptogrid(geometry, double precision);
       public       postgres    false    6    1165    1165            �           1255    178139 ;   st_snaptogrid(geometry, double precision, double precision)    FUNCTION     �   CREATE FUNCTION st_snaptogrid(geometry, double precision, double precision) RETURNS geometry
    LANGUAGE sql IMMUTABLE STRICT COST 25
    AS $_$SELECT ST_SnapToGrid($1, 0, 0, $2, $3)$_$;
 R   DROP FUNCTION public.st_snaptogrid(geometry, double precision, double precision);
       public       postgres    false    6    1165    1165            �           1255    178138 _   st_snaptogrid(geometry, double precision, double precision, double precision, double precision)    FUNCTION     �   CREATE FUNCTION st_snaptogrid(geometry, double precision, double precision, double precision, double precision) RETURNS geometry
    LANGUAGE c IMMUTABLE STRICT COST 25
    AS '$libdir/postgis-2.3', 'LWGEOM_snaptogrid';
 v   DROP FUNCTION public.st_snaptogrid(geometry, double precision, double precision, double precision, double precision);
       public       postgres    false    6    1165    1165            �           1255    178141 i   st_snaptogrid(geometry, geometry, double precision, double precision, double precision, double precision)    FUNCTION     �   CREATE FUNCTION st_snaptogrid(geom1 geometry, geom2 geometry, double precision, double precision, double precision, double precision) RETURNS geometry
    LANGUAGE c IMMUTABLE STRICT COST 25
    AS '$libdir/postgis-2.3', 'LWGEOM_snaptogrid_pointoff';
 �   DROP FUNCTION public.st_snaptogrid(geom1 geometry, geom2 geometry, double precision, double precision, double precision, double precision);
       public       postgres    false    6    1165    1165    1165            �           1255    178191    st_split(geometry, geometry)    FUNCTION     �   CREATE FUNCTION st_split(geom1 geometry, geom2 geometry) RETURNS geometry
    LANGUAGE c IMMUTABLE STRICT COST 100
    AS '$libdir/postgis-2.3', 'ST_Split';
 ?   DROP FUNCTION public.st_split(geom1 geometry, geom2 geometry);
       public       postgres    false    6    1165    1165    1165                       1255    178528    st_srid(geography)    FUNCTION     �   CREATE FUNCTION st_srid(geog geography) RETURNS integer
    LANGUAGE c IMMUTABLE STRICT
    AS '$libdir/postgis-2.3', 'LWGEOM_get_srid';
 .   DROP FUNCTION public.st_srid(geog geography);
       public       postgres    false    1199    6            �           1255    178091    st_srid(geometry)    FUNCTION     �   CREATE FUNCTION st_srid(geometry) RETURNS integer
    LANGUAGE c IMMUTABLE STRICT COST 5
    AS '$libdir/postgis-2.3', 'LWGEOM_get_srid';
 (   DROP FUNCTION public.st_srid(geometry);
       public       postgres    false    6    1165            \           1255    178307    st_startpoint(geometry)    FUNCTION     �   CREATE FUNCTION st_startpoint(geometry) RETURNS geometry
    LANGUAGE c IMMUTABLE STRICT
    AS '$libdir/postgis-2.3', 'LWGEOM_startpoint_linestring';
 .   DROP FUNCTION public.st_startpoint(geometry);
       public       postgres    false    6    1165    1165            �           1255    178188    st_subdivide(geometry, integer)    FUNCTION     �   CREATE FUNCTION st_subdivide(geom geometry, maxvertices integer DEFAULT 256) RETURNS SETOF geometry
    LANGUAGE c IMMUTABLE STRICT COST 100
    AS '$libdir/postgis-2.3', 'ST_Subdivide';
 G   DROP FUNCTION public.st_subdivide(geom geometry, maxvertices integer);
       public       postgres    false    6    1165    1165                       1255    178526    st_summary(geography)    FUNCTION     �   CREATE FUNCTION st_summary(geography) RETURNS text
    LANGUAGE c IMMUTABLE STRICT
    AS '$libdir/postgis-2.3', 'LWGEOM_summary';
 ,   DROP FUNCTION public.st_summary(geography);
       public       postgres    false    6    1199            %           1255    177955    st_summary(geometry)    FUNCTION     �   CREATE FUNCTION st_summary(geometry) RETURNS text
    LANGUAGE c IMMUTABLE STRICT COST 25
    AS '$libdir/postgis-2.3', 'LWGEOM_summary';
 +   DROP FUNCTION public.st_summary(geometry);
       public       postgres    false    6    1165            �           1255    178373 #   st_swapordinates(geometry, cstring)    FUNCTION     �   CREATE FUNCTION st_swapordinates(geom geometry, ords cstring) RETURNS geometry
    LANGUAGE c IMMUTABLE STRICT COST 25
    AS '$libdir/postgis-2.3', 'ST_SwapOrdinates';
 D   DROP FUNCTION public.st_swapordinates(geom geometry, ords cstring);
       public       postgres    false    6    1165    1165            �           1255    178182 $   st_symdifference(geometry, geometry)    FUNCTION     �   CREATE FUNCTION st_symdifference(geom1 geometry, geom2 geometry) RETURNS geometry
    LANGUAGE c IMMUTABLE STRICT
    AS '$libdir/postgis-2.3', 'symdifference';
 G   DROP FUNCTION public.st_symdifference(geom1 geometry, geom2 geometry);
       public       postgres    false    6    1165    1165    1165            �           1255    178183 *   st_symmetricdifference(geometry, geometry)    FUNCTION     �   CREATE FUNCTION st_symmetricdifference(geom1 geometry, geom2 geometry) RETURNS geometry
    LANGUAGE c IMMUTABLE STRICT
    AS '$libdir/postgis-2.3', 'symdifference';
 M   DROP FUNCTION public.st_symmetricdifference(geom1 geometry, geom2 geometry);
       public       postgres    false    6    1165    1165    1165                       1255    178239    st_touches(geometry, geometry)    FUNCTION     �   CREATE FUNCTION st_touches(geom1 geometry, geom2 geometry) RETURNS boolean
    LANGUAGE sql IMMUTABLE
    AS $_$SELECT $1 OPERATOR(&&) $2 AND _ST_Touches($1,$2)$_$;
 A   DROP FUNCTION public.st_touches(geom1 geometry, geom2 geometry);
       public       postgres    false    6    1165    1165            �           1255    178093    st_transform(geometry, integer)    FUNCTION     �   CREATE FUNCTION st_transform(geometry, integer) RETURNS geometry
    LANGUAGE c IMMUTABLE STRICT COST 100
    AS '$libdir/postgis-2.3', 'transform';
 6   DROP FUNCTION public.st_transform(geometry, integer);
       public       postgres    false    1165    1165    6            �           1255    178094    st_transform(geometry, text)    FUNCTION     �   CREATE FUNCTION st_transform(geom geometry, to_proj text) RETURNS geometry
    LANGUAGE sql IMMUTABLE STRICT
    AS $_$SELECT postgis_transform_geometry($1, proj4text, $2, 0)
FROM spatial_ref_sys WHERE srid=ST_SRID($1);$_$;
 @   DROP FUNCTION public.st_transform(geom geometry, to_proj text);
       public       postgres    false    6    1165    1165            �           1255    178096 %   st_transform(geometry, text, integer)    FUNCTION     �   CREATE FUNCTION st_transform(geom geometry, from_proj text, to_srid integer) RETURNS geometry
    LANGUAGE sql IMMUTABLE STRICT
    AS $_$SELECT postgis_transform_geometry($1, $2, proj4text, $3)
FROM spatial_ref_sys WHERE srid=$3;$_$;
 S   DROP FUNCTION public.st_transform(geom geometry, from_proj text, to_srid integer);
       public       postgres    false    1165    1165    6            �           1255    178095 "   st_transform(geometry, text, text)    FUNCTION     �   CREATE FUNCTION st_transform(geom geometry, from_proj text, to_proj text) RETURNS geometry
    LANGUAGE sql IMMUTABLE STRICT
    AS $_$SELECT postgis_transform_geometry($1, $2, $3, 0)$_$;
 P   DROP FUNCTION public.st_transform(geom geometry, from_proj text, to_proj text);
       public       postgres    false    1165    1165    6            �           1255    178051 :   st_translate(geometry, double precision, double precision)    FUNCTION     �   CREATE FUNCTION st_translate(geometry, double precision, double precision) RETURNS geometry
    LANGUAGE sql IMMUTABLE STRICT
    AS $_$SELECT ST_Translate($1, $2, $3, 0)$_$;
 Q   DROP FUNCTION public.st_translate(geometry, double precision, double precision);
       public       postgres    false    1165    6    1165            �           1255    178050 L   st_translate(geometry, double precision, double precision, double precision)    FUNCTION     �   CREATE FUNCTION st_translate(geometry, double precision, double precision, double precision) RETURNS geometry
    LANGUAGE sql IMMUTABLE STRICT
    AS $_$SELECT ST_Affine($1, 1, 0, 0, 0, 1, 0, 0, 0, 1, $2, $3, $4)$_$;
 c   DROP FUNCTION public.st_translate(geometry, double precision, double precision, double precision);
       public       postgres    false    6    1165    1165            �           1255    178055 _   st_transscale(geometry, double precision, double precision, double precision, double precision)    FUNCTION     �   CREATE FUNCTION st_transscale(geometry, double precision, double precision, double precision, double precision) RETURNS geometry
    LANGUAGE sql IMMUTABLE STRICT
    AS $_$SELECT ST_Affine($1,  $4, 0, 0,  0, $5, 0,
		0, 0, 1,  $2 * $4, $3 * $5, 0)$_$;
 v   DROP FUNCTION public.st_transscale(geometry, double precision, double precision, double precision, double precision);
       public       postgres    false    1165    6    1165            �           1255    178185    st_unaryunion(geometry)    FUNCTION     �   CREATE FUNCTION st_unaryunion(geometry) RETURNS geometry
    LANGUAGE c IMMUTABLE STRICT
    AS '$libdir/postgis-2.3', 'ST_UnaryUnion';
 .   DROP FUNCTION public.st_unaryunion(geometry);
       public       postgres    false    6    1165    1165            �           1255    178226    st_union(geometry[])    FUNCTION     �   CREATE FUNCTION st_union(geometry[]) RETURNS geometry
    LANGUAGE c IMMUTABLE STRICT
    AS '$libdir/postgis-2.3', 'pgis_union_geometry_array';
 +   DROP FUNCTION public.st_union(geometry[]);
       public       postgres    false    6    1165    201    1165    200            �           1255    178184    st_union(geometry, geometry)    FUNCTION     �   CREATE FUNCTION st_union(geom1 geometry, geom2 geometry) RETURNS geometry
    LANGUAGE c IMMUTABLE STRICT
    AS '$libdir/postgis-2.3', 'geomunion';
 ?   DROP FUNCTION public.st_union(geom1 geometry, geom2 geometry);
       public       postgres    false    6    1165    1165    1165            �           1255    178199 5   st_voronoilines(geometry, double precision, geometry)    FUNCTION     �   CREATE FUNCTION st_voronoilines(g1 geometry, tolerance double precision DEFAULT 0.0, extend_to geometry DEFAULT NULL::geometry) RETURNS geometry
    LANGUAGE sql IMMUTABLE COST 25000
    AS $$ SELECT _ST_Voronoi(g1, extend_to, tolerance, false) $$;
 c   DROP FUNCTION public.st_voronoilines(g1 geometry, tolerance double precision, extend_to geometry);
       public       postgres    false    6    1165    1165    1165    1165            �           1255    178198 8   st_voronoipolygons(geometry, double precision, geometry)    FUNCTION     �   CREATE FUNCTION st_voronoipolygons(g1 geometry, tolerance double precision DEFAULT 0.0, extend_to geometry DEFAULT NULL::geometry) RETURNS geometry
    LANGUAGE sql IMMUTABLE COST 25000
    AS $$ SELECT _ST_Voronoi(g1, extend_to, tolerance, true) $$;
 f   DROP FUNCTION public.st_voronoipolygons(g1 geometry, tolerance double precision, extend_to geometry);
       public       postgres    false    6    1165    1165    1165    1165            (           1255    178256    st_within(geometry, geometry)    FUNCTION     �   CREATE FUNCTION st_within(geom1 geometry, geom2 geometry) RETURNS boolean
    LANGUAGE sql IMMUTABLE
    AS $_$SELECT $2 OPERATOR(~) $1 AND _ST_Contains($2,$1)$_$;
 @   DROP FUNCTION public.st_within(geom1 geometry, geom2 geometry);
       public       postgres    false    6    1165    1165            -           1255    178564    st_wkbtosql(bytea)    FUNCTION     �   CREATE FUNCTION st_wkbtosql(wkb bytea) RETURNS geometry
    LANGUAGE c IMMUTABLE STRICT
    AS '$libdir/postgis-2.3', 'LWGEOM_from_WKB';
 -   DROP FUNCTION public.st_wkbtosql(wkb bytea);
       public       postgres    false    1165    6            f           1255    178318    st_wkttosql(text)    FUNCTION     �   CREATE FUNCTION st_wkttosql(text) RETURNS geometry
    LANGUAGE c IMMUTABLE STRICT
    AS '$libdir/postgis-2.3', 'LWGEOM_from_text';
 (   DROP FUNCTION public.st_wkttosql(text);
       public       postgres    false    6    1165                       1255    177929 6   st_wrapx(geometry, double precision, double precision)    FUNCTION     �   CREATE FUNCTION st_wrapx(geom geometry, wrap double precision, move double precision) RETURNS geometry
    LANGUAGE c IMMUTABLE STRICT
    AS '$libdir/postgis-2.3', 'ST_WrapX';
 \   DROP FUNCTION public.st_wrapx(geom geometry, wrap double precision, move double precision);
       public       postgres    false    1165    6    1165            �            1255    177796    st_x(geometry)    FUNCTION     �   CREATE FUNCTION st_x(geometry) RETURNS double precision
    LANGUAGE c IMMUTABLE STRICT
    AS '$libdir/postgis-2.3', 'LWGEOM_x_point';
 %   DROP FUNCTION public.st_x(geometry);
       public       postgres    false    6    1165                       1255    177934    st_xmax(box3d)    FUNCTION     �   CREATE FUNCTION st_xmax(box3d) RETURNS double precision
    LANGUAGE c IMMUTABLE STRICT
    AS '$libdir/postgis-2.3', 'BOX3D_xmax';
 %   DROP FUNCTION public.st_xmax(box3d);
       public       postgres    false    6    1169                       1255    177931    st_xmin(box3d)    FUNCTION     �   CREATE FUNCTION st_xmin(box3d) RETURNS double precision
    LANGUAGE c IMMUTABLE STRICT
    AS '$libdir/postgis-2.3', 'BOX3D_xmin';
 %   DROP FUNCTION public.st_xmin(box3d);
       public       postgres    false    6    1169            �            1255    177797    st_y(geometry)    FUNCTION     �   CREATE FUNCTION st_y(geometry) RETURNS double precision
    LANGUAGE c IMMUTABLE STRICT
    AS '$libdir/postgis-2.3', 'LWGEOM_y_point';
 %   DROP FUNCTION public.st_y(geometry);
       public       postgres    false    6    1165                       1255    177935    st_ymax(box3d)    FUNCTION     �   CREATE FUNCTION st_ymax(box3d) RETURNS double precision
    LANGUAGE c IMMUTABLE STRICT
    AS '$libdir/postgis-2.3', 'BOX3D_ymax';
 %   DROP FUNCTION public.st_ymax(box3d);
       public       postgres    false    6    1169                       1255    177932    st_ymin(box3d)    FUNCTION     �   CREATE FUNCTION st_ymin(box3d) RETURNS double precision
    LANGUAGE c IMMUTABLE STRICT
    AS '$libdir/postgis-2.3', 'BOX3D_ymin';
 %   DROP FUNCTION public.st_ymin(box3d);
       public       postgres    false    6    1169            �            1255    177798    st_z(geometry)    FUNCTION     �   CREATE FUNCTION st_z(geometry) RETURNS double precision
    LANGUAGE c IMMUTABLE STRICT
    AS '$libdir/postgis-2.3', 'LWGEOM_z_point';
 %   DROP FUNCTION public.st_z(geometry);
       public       postgres    false    6    1165                       1255    177936    st_zmax(box3d)    FUNCTION     �   CREATE FUNCTION st_zmax(box3d) RETURNS double precision
    LANGUAGE c IMMUTABLE STRICT
    AS '$libdir/postgis-2.3', 'BOX3D_zmax';
 %   DROP FUNCTION public.st_zmax(box3d);
       public       postgres    false    6    1169            W           1255    178005    st_zmflag(geometry)    FUNCTION     �   CREATE FUNCTION st_zmflag(geometry) RETURNS smallint
    LANGUAGE c IMMUTABLE STRICT COST 5
    AS '$libdir/postgis-2.3', 'LWGEOM_zmflag';
 *   DROP FUNCTION public.st_zmflag(geometry);
       public       postgres    false    1165    6                       1255    177933    st_zmin(box3d)    FUNCTION     �   CREATE FUNCTION st_zmin(box3d) RETURNS double precision
    LANGUAGE c IMMUTABLE STRICT
    AS '$libdir/postgis-2.3', 'BOX3D_zmin';
 %   DROP FUNCTION public.st_zmin(box3d);
       public       postgres    false    6    1169            �           1255    178115    text(geometry)    FUNCTION     �   CREATE FUNCTION text(geometry) RETURNS text
    LANGUAGE c IMMUTABLE STRICT COST 25
    AS '$libdir/postgis-2.3', 'LWGEOM_to_text';
 %   DROP FUNCTION public.text(geometry);
       public       postgres    false    6    1165            �           1255    178377    unlockrows(text)    FUNCTION     �  CREATE FUNCTION unlockrows(text) RETURNS integer
    LANGUAGE plpgsql STRICT
    AS $_$ 
DECLARE
	ret int;
BEGIN

	IF NOT LongTransactionsEnabled() THEN
		RAISE EXCEPTION 'Long transaction support disabled, use EnableLongTransaction() to enable.';
	END IF;

	EXECUTE 'DELETE FROM authorization_table where authid = ' ||
		quote_literal($1);

	GET DIAGNOSTICS ret = ROW_COUNT;

	RETURN ret;
END;
$_$;
 '   DROP FUNCTION public.unlockrows(text);
       public       postgres    false    6    1            �           1255    178087 A   updategeometrysrid(character varying, character varying, integer)    FUNCTION     �   CREATE FUNCTION updategeometrysrid(character varying, character varying, integer) RETURNS text
    LANGUAGE plpgsql STRICT
    AS $_$
DECLARE
	ret  text;
BEGIN
	SELECT UpdateGeometrySRID('','',$1,$2,$3) into ret;
	RETURN ret;
END;
$_$;
 X   DROP FUNCTION public.updategeometrysrid(character varying, character varying, integer);
       public       postgres    false    6    1            �           1255    178086 T   updategeometrysrid(character varying, character varying, character varying, integer)    FUNCTION     �   CREATE FUNCTION updategeometrysrid(character varying, character varying, character varying, integer) RETURNS text
    LANGUAGE plpgsql STRICT
    AS $_$
DECLARE
	ret  text;
BEGIN
	SELECT UpdateGeometrySRID('',$1,$2,$3,$4) into ret;
	RETURN ret;
END;
$_$;
 k   DROP FUNCTION public.updategeometrysrid(character varying, character varying, character varying, integer);
       public       postgres    false    1    6            �           1255    178085 g   updategeometrysrid(character varying, character varying, character varying, character varying, integer)    FUNCTION     1  CREATE FUNCTION updategeometrysrid(catalogn_name character varying, schema_name character varying, table_name character varying, column_name character varying, new_srid_in integer) RETURNS text
    LANGUAGE plpgsql STRICT
    AS $$
DECLARE
	myrec RECORD;
	okay boolean;
	cname varchar;
	real_schema name;
	unknown_srid integer;
	new_srid integer := new_srid_in;

BEGIN


	-- Find, check or fix schema_name
	IF ( schema_name != '' ) THEN
		okay = false;

		FOR myrec IN SELECT nspname FROM pg_namespace WHERE text(nspname) = schema_name LOOP
			okay := true;
		END LOOP;

		IF ( okay <> true ) THEN
			RAISE EXCEPTION 'Invalid schema name';
		ELSE
			real_schema = schema_name;
		END IF;
	ELSE
		SELECT INTO real_schema current_schema()::text;
	END IF;

	-- Ensure that column_name is in geometry_columns
	okay = false;
	FOR myrec IN SELECT type, coord_dimension FROM geometry_columns WHERE f_table_schema = text(real_schema) and f_table_name = table_name and f_geometry_column = column_name LOOP
		okay := true;
	END LOOP;
	IF (NOT okay) THEN
		RAISE EXCEPTION 'column not found in geometry_columns table';
		RETURN false;
	END IF;

	-- Ensure that new_srid is valid
	IF ( new_srid > 0 ) THEN
		IF ( SELECT count(*) = 0 from spatial_ref_sys where srid = new_srid ) THEN
			RAISE EXCEPTION 'invalid SRID: % not found in spatial_ref_sys', new_srid;
			RETURN false;
		END IF;
	ELSE
		unknown_srid := ST_SRID('POINT EMPTY'::geometry);
		IF ( new_srid != unknown_srid ) THEN
			new_srid := unknown_srid;
			RAISE NOTICE 'SRID value % converted to the officially unknown SRID value %', new_srid_in, new_srid;
		END IF;
	END IF;

	IF postgis_constraint_srid(real_schema, table_name, column_name) IS NOT NULL THEN
	-- srid was enforced with constraints before, keep it that way.
        -- Make up constraint name
        cname = 'enforce_srid_'  || column_name;

        -- Drop enforce_srid constraint
        EXECUTE 'ALTER TABLE ' || quote_ident(real_schema) ||
            '.' || quote_ident(table_name) ||
            ' DROP constraint ' || quote_ident(cname);

        -- Update geometries SRID
        EXECUTE 'UPDATE ' || quote_ident(real_schema) ||
            '.' || quote_ident(table_name) ||
            ' SET ' || quote_ident(column_name) ||
            ' = ST_SetSRID(' || quote_ident(column_name) ||
            ', ' || new_srid::text || ')';

        -- Reset enforce_srid constraint
        EXECUTE 'ALTER TABLE ' || quote_ident(real_schema) ||
            '.' || quote_ident(table_name) ||
            ' ADD constraint ' || quote_ident(cname) ||
            ' CHECK (st_srid(' || quote_ident(column_name) ||
            ') = ' || new_srid::text || ')';
    ELSE
        -- We will use typmod to enforce if no srid constraints
        -- We are using postgis_type_name to lookup the new name
        -- (in case Paul changes his mind and flips geometry_columns to return old upper case name)
        EXECUTE 'ALTER TABLE ' || quote_ident(real_schema) || '.' || quote_ident(table_name) ||
        ' ALTER COLUMN ' || quote_ident(column_name) || ' TYPE  geometry(' || postgis_type_name(myrec.type, myrec.coord_dimension, true) || ', ' || new_srid::text || ') USING ST_SetSRID(' || quote_ident(column_name) || ',' || new_srid::text || ');' ;
    END IF;

	RETURN real_schema || '.' || table_name || '.' || column_name ||' SRID changed to ' || new_srid::text;

END;
$$;
 �   DROP FUNCTION public.updategeometrysrid(catalogn_name character varying, schema_name character varying, table_name character varying, column_name character varying, new_srid_in integer);
       public       postgres    false    6    1            �           1255    178206    st_3dextent(geometry) 	   AGGREGATE     a   CREATE AGGREGATE st_3dextent(geometry) (
    SFUNC = public.st_combinebbox,
    STYPE = box3d
);
 -   DROP AGGREGATE public.st_3dextent(geometry);
       public       postgres    false    6    1169    1165    511            �           1255    178225    st_accum(geometry) 	   AGGREGATE     �   CREATE AGGREGATE st_accum(geometry) (
    SFUNC = public.pgis_geometry_accum_transfn,
    STYPE = pgis_abs,
    FINALFUNC = pgis_geometry_accum_finalfn
);
 *   DROP AGGREGATE public.st_accum(geometry);
       public       postgres    false    6    201    1165    200    1165    520    523            �           1255    178229     st_clusterintersecting(geometry) 	   AGGREGATE     �   CREATE AGGREGATE st_clusterintersecting(geometry) (
    SFUNC = public.pgis_geometry_accum_transfn,
    STYPE = pgis_abs,
    FINALFUNC = pgis_geometry_clusterintersecting_finalfn
);
 8   DROP AGGREGATE public.st_clusterintersecting(geometry);
       public       postgres    false    6    201    1165    200    1165    520    527            �           1255    178230 ,   st_clusterwithin(geometry, double precision) 	   AGGREGATE     �   CREATE AGGREGATE st_clusterwithin(geometry, double precision) (
    SFUNC = public.pgis_geometry_accum_transfn,
    STYPE = pgis_abs,
    FINALFUNC = pgis_geometry_clusterwithin_finalfn
);
 D   DROP AGGREGATE public.st_clusterwithin(geometry, double precision);
       public       postgres    false    6    201    1165    200    1165    521    528            �           1255    178228    st_collect(geometry) 	   AGGREGATE     �   CREATE AGGREGATE st_collect(geometry) (
    SFUNC = public.pgis_geometry_accum_transfn,
    STYPE = pgis_abs,
    FINALFUNC = pgis_geometry_collect_finalfn
);
 ,   DROP AGGREGATE public.st_collect(geometry);
       public       postgres    false    6    1165    1165    520    525            �           1255    178205    st_extent(geometry) 	   AGGREGATE     }   CREATE AGGREGATE st_extent(geometry) (
    SFUNC = public.st_combinebbox,
    STYPE = box3d,
    FINALFUNC = public.box2d
);
 +   DROP AGGREGATE public.st_extent(geometry);
       public       postgres    false    6    1173    1165    511    436            �           1255    178232    st_makeline(geometry) 	   AGGREGATE     �   CREATE AGGREGATE st_makeline(geometry) (
    SFUNC = public.pgis_geometry_accum_transfn,
    STYPE = pgis_abs,
    FINALFUNC = pgis_geometry_makeline_finalfn
);
 -   DROP AGGREGATE public.st_makeline(geometry);
       public       postgres    false    6    1165    1165    520    505            �           1255    178208    st_memcollect(geometry) 	   AGGREGATE     b   CREATE AGGREGATE st_memcollect(geometry) (
    SFUNC = public.st_collect,
    STYPE = geometry
);
 /   DROP AGGREGATE public.st_memcollect(geometry);
       public       postgres    false    6    1165    1165    516            �           1255    178210    st_memunion(geometry) 	   AGGREGATE     ^   CREATE AGGREGATE st_memunion(geometry) (
    SFUNC = public.st_union,
    STYPE = geometry
);
 -   DROP AGGREGATE public.st_memunion(geometry);
       public       postgres    false    6    1165    1165    493            �           1255    178231    st_polygonize(geometry) 	   AGGREGATE     �   CREATE AGGREGATE st_polygonize(geometry) (
    SFUNC = public.pgis_geometry_accum_transfn,
    STYPE = pgis_abs,
    FINALFUNC = pgis_geometry_polygonize_finalfn
);
 /   DROP AGGREGATE public.st_polygonize(geometry);
       public       postgres    false    6    1165    1165    520    526            �           1255    178227    st_union(geometry) 	   AGGREGATE     �   CREATE AGGREGATE st_union(geometry) (
    SFUNC = public.pgis_geometry_accum_transfn,
    STYPE = pgis_abs,
    FINALFUNC = pgis_geometry_union_finalfn
);
 *   DROP AGGREGATE public.st_union(geometry);
       public       postgres    false    6    1165    1165    520    524            �           2617    177851    &&    OPERATOR     �   CREATE OPERATOR && (
    PROCEDURE = geometry_overlaps,
    LEFTARG = geometry,
    RIGHTARG = geometry,
    COMMUTATOR = &&,
    RESTRICT = gserialized_gist_sel_2d,
    JOIN = gserialized_gist_joinsel_2d
);
 .   DROP OPERATOR public.&& (geometry, geometry);
       public       postgres    false    1165    239    237    241    1165    6            �           2617    178430    &&    OPERATOR     �   CREATE OPERATOR && (
    PROCEDURE = geography_overlaps,
    LEFTARG = geography,
    RIGHTARG = geography,
    COMMUTATOR = &&,
    RESTRICT = gserialized_gist_sel_nd,
    JOIN = gserialized_gist_joinsel_nd
);
 0   DROP OPERATOR public.&& (geography, geography);
       public       postgres    false    240    238    714    1199    1199    6            �           2617    177910    &&&    OPERATOR     �   CREATE OPERATOR &&& (
    PROCEDURE = geometry_overlaps_nd,
    LEFTARG = geometry,
    RIGHTARG = geometry,
    COMMUTATOR = &&&,
    RESTRICT = gserialized_gist_sel_nd,
    JOIN = gserialized_gist_joinsel_nd
);
 /   DROP OPERATOR public.&&& (geometry, geometry);
       public       postgres    false    6    240    238    262    1165    1165            �           2617    177867    &<    OPERATOR     �   CREATE OPERATOR &< (
    PROCEDURE = geometry_overleft,
    LEFTARG = geometry,
    RIGHTARG = geometry,
    COMMUTATOR = &>,
    RESTRICT = positionsel,
    JOIN = positionjoinsel
);
 .   DROP OPERATOR public.&< (geometry, geometry);
       public       postgres    false    1165    248    6    1165            �           2617    177873    &<|    OPERATOR     �   CREATE OPERATOR &<| (
    PROCEDURE = geometry_overbelow,
    LEFTARG = geometry,
    RIGHTARG = geometry,
    COMMUTATOR = |&>,
    RESTRICT = positionsel,
    JOIN = positionjoinsel
);
 /   DROP OPERATOR public.&<| (geometry, geometry);
       public       postgres    false    1165    250    1165    6            �           2617    177866    &>    OPERATOR     �   CREATE OPERATOR &> (
    PROCEDURE = geometry_overright,
    LEFTARG = geometry,
    RIGHTARG = geometry,
    COMMUTATOR = &<,
    RESTRICT = positionsel,
    JOIN = positionjoinsel
);
 .   DROP OPERATOR public.&> (geometry, geometry);
       public       postgres    false    1165    6    251    1165            �           2617    177824    <    OPERATOR     �   CREATE OPERATOR < (
    PROCEDURE = geometry_lt,
    LEFTARG = geometry,
    RIGHTARG = geometry,
    COMMUTATOR = >,
    NEGATOR = >=,
    RESTRICT = contsel,
    JOIN = contjoinsel
);
 -   DROP OPERATOR public.< (geometry, geometry);
       public       postgres    false    224    1165    6    1165            �           2617    178454    <    OPERATOR     �   CREATE OPERATOR < (
    PROCEDURE = geography_lt,
    LEFTARG = geography,
    RIGHTARG = geography,
    COMMUTATOR = >,
    NEGATOR = >=,
    RESTRICT = contsel,
    JOIN = contjoinsel
);
 /   DROP OPERATOR public.< (geography, geography);
       public       postgres    false    1199    717    6    1199            �           2617    177857    <#>    OPERATOR     �   CREATE OPERATOR <#> (
    PROCEDURE = geometry_distance_box,
    LEFTARG = geometry,
    RIGHTARG = geometry,
    COMMUTATOR = <#>
);
 /   DROP OPERATOR public.<#> (geometry, geometry);
       public       postgres    false    244    6    1165    1165            �           2617    177856    <->    OPERATOR     �   CREATE OPERATOR <-> (
    PROCEDURE = geometry_distance_centroid,
    LEFTARG = geometry,
    RIGHTARG = geometry,
    COMMUTATOR = <->
);
 /   DROP OPERATOR public.<-> (geometry, geometry);
       public       postgres    false    6    243    1165    1165            �           2617    178432    <->    OPERATOR     �   CREATE OPERATOR <-> (
    PROCEDURE = geography_distance_knn,
    LEFTARG = geography,
    RIGHTARG = geography,
    COMMUTATOR = <->
);
 1   DROP OPERATOR public.<-> (geography, geography);
       public       postgres    false    1199    715    6    1199            �           2617    177864    <<    OPERATOR     �   CREATE OPERATOR << (
    PROCEDURE = geometry_left,
    LEFTARG = geometry,
    RIGHTARG = geometry,
    COMMUTATOR = >>,
    RESTRICT = positionsel,
    JOIN = positionjoinsel
);
 .   DROP OPERATOR public.<< (geometry, geometry);
       public       postgres    false    1165    6    247    1165            �           2617    177912    <<->>    OPERATOR     �   CREATE OPERATOR <<->> (
    PROCEDURE = geometry_distance_centroid_nd,
    LEFTARG = geometry,
    RIGHTARG = geometry,
    COMMUTATOR = <<->>
);
 1   DROP OPERATOR public.<<->> (geometry, geometry);
       public       postgres    false    6    263    1165    1165            �           2617    177870    <<|    OPERATOR     �   CREATE OPERATOR <<| (
    PROCEDURE = geometry_below,
    LEFTARG = geometry,
    RIGHTARG = geometry,
    COMMUTATOR = |>>,
    RESTRICT = positionsel,
    JOIN = positionjoinsel
);
 /   DROP OPERATOR public.<<| (geometry, geometry);
       public       postgres    false    249    6    1165    1165            �           2617    177825    <=    OPERATOR     �   CREATE OPERATOR <= (
    PROCEDURE = geometry_le,
    LEFTARG = geometry,
    RIGHTARG = geometry,
    COMMUTATOR = >=,
    NEGATOR = >,
    RESTRICT = contsel,
    JOIN = contjoinsel
);
 .   DROP OPERATOR public.<= (geometry, geometry);
       public       postgres    false    1165    1165    6    225            �           2617    178455    <=    OPERATOR     �   CREATE OPERATOR <= (
    PROCEDURE = geography_le,
    LEFTARG = geography,
    RIGHTARG = geography,
    COMMUTATOR = >=,
    NEGATOR = >,
    RESTRICT = contsel,
    JOIN = contjoinsel
);
 0   DROP OPERATOR public.<= (geography, geography);
       public       postgres    false    1199    718    1199    6            �           2617    177826    =    OPERATOR     �   CREATE OPERATOR = (
    PROCEDURE = geometry_eq,
    LEFTARG = geometry,
    RIGHTARG = geometry,
    COMMUTATOR = =,
    RESTRICT = contsel,
    JOIN = contjoinsel
);
 -   DROP OPERATOR public.= (geometry, geometry);
       public       postgres    false    1165    228    6    1165            �           2617    178456    =    OPERATOR     �   CREATE OPERATOR = (
    PROCEDURE = geography_eq,
    LEFTARG = geography,
    RIGHTARG = geography,
    COMMUTATOR = =,
    RESTRICT = contsel,
    JOIN = contjoinsel
);
 /   DROP OPERATOR public.= (geography, geography);
       public       postgres    false    1199    1199    6    720            �           2617    177822    >    OPERATOR     �   CREATE OPERATOR > (
    PROCEDURE = geometry_gt,
    LEFTARG = geometry,
    RIGHTARG = geometry,
    COMMUTATOR = <,
    NEGATOR = <=,
    RESTRICT = contsel,
    JOIN = contjoinsel
);
 -   DROP OPERATOR public.> (geometry, geometry);
       public       postgres    false    1165    226    1165    6            �           2617    178452    >    OPERATOR     �   CREATE OPERATOR > (
    PROCEDURE = geography_gt,
    LEFTARG = geography,
    RIGHTARG = geography,
    COMMUTATOR = <,
    NEGATOR = <=,
    RESTRICT = contsel,
    JOIN = contjoinsel
);
 /   DROP OPERATOR public.> (geography, geography);
       public       postgres    false    1199    6    1199    719            �           2617    177823    >=    OPERATOR     �   CREATE OPERATOR >= (
    PROCEDURE = geometry_ge,
    LEFTARG = geometry,
    RIGHTARG = geometry,
    COMMUTATOR = <=,
    NEGATOR = <,
    RESTRICT = contsel,
    JOIN = contjoinsel
);
 .   DROP OPERATOR public.>= (geometry, geometry);
       public       postgres    false    1165    227    1165    6            �           2617    178453    >=    OPERATOR     �   CREATE OPERATOR >= (
    PROCEDURE = geography_ge,
    LEFTARG = geography,
    RIGHTARG = geography,
    COMMUTATOR = <=,
    NEGATOR = <,
    RESTRICT = contsel,
    JOIN = contjoinsel
);
 0   DROP OPERATOR public.>= (geography, geography);
       public       postgres    false    1199    685    6    1199            �           2617    177863    >>    OPERATOR     �   CREATE OPERATOR >> (
    PROCEDURE = geometry_right,
    LEFTARG = geometry,
    RIGHTARG = geometry,
    COMMUTATOR = <<,
    RESTRICT = positionsel,
    JOIN = positionjoinsel
);
 .   DROP OPERATOR public.>> (geometry, geometry);
       public       postgres    false    6    1165    252    1165            �           2617    177861    @    OPERATOR     �   CREATE OPERATOR @ (
    PROCEDURE = geometry_within,
    LEFTARG = geometry,
    RIGHTARG = geometry,
    COMMUTATOR = ~,
    RESTRICT = contsel,
    JOIN = contjoinsel
);
 -   DROP OPERATOR public.@ (geometry, geometry);
       public       postgres    false    246    1165    6    1165            �           2617    177872    |&>    OPERATOR     �   CREATE OPERATOR |&> (
    PROCEDURE = geometry_overabove,
    LEFTARG = geometry,
    RIGHTARG = geometry,
    COMMUTATOR = &<|,
    RESTRICT = positionsel,
    JOIN = positionjoinsel
);
 /   DROP OPERATOR public.|&> (geometry, geometry);
       public       postgres    false    1165    253    1165    6            �           2617    177914    |=|    OPERATOR     �   CREATE OPERATOR |=| (
    PROCEDURE = geometry_distance_cpa,
    LEFTARG = geometry,
    RIGHTARG = geometry,
    COMMUTATOR = |=|
);
 /   DROP OPERATOR public.|=| (geometry, geometry);
       public       postgres    false    264    1165    1165    6            �           2617    177869    |>>    OPERATOR     �   CREATE OPERATOR |>> (
    PROCEDURE = geometry_above,
    LEFTARG = geometry,
    RIGHTARG = geometry,
    COMMUTATOR = <<|,
    RESTRICT = positionsel,
    JOIN = positionjoinsel
);
 /   DROP OPERATOR public.|>> (geometry, geometry);
       public       postgres    false    1165    254    1165    6            �           2617    177860    ~    OPERATOR     �   CREATE OPERATOR ~ (
    PROCEDURE = geometry_contains,
    LEFTARG = geometry,
    RIGHTARG = geometry,
    COMMUTATOR = @,
    RESTRICT = contsel,
    JOIN = contjoinsel
);
 -   DROP OPERATOR public.~ (geometry, geometry);
       public       postgres    false    245    1165    1165    6            �           2617    177853    ~=    OPERATOR     �   CREATE OPERATOR ~= (
    PROCEDURE = geometry_same,
    LEFTARG = geometry,
    RIGHTARG = geometry,
    RESTRICT = contsel,
    JOIN = contjoinsel
);
 .   DROP OPERATOR public.~= (geometry, geometry);
       public       postgres    false    242    6    1165    1165            �           2753    178457    btree_geography_ops    OPERATOR FAMILY     8   CREATE OPERATOR FAMILY btree_geography_ops USING btree;
 =   DROP OPERATOR FAMILY public.btree_geography_ops USING btree;
       public       postgres    false    6            g           2616    178458    btree_geography_ops    OPERATOR CLASS     �  CREATE OPERATOR CLASS btree_geography_ops
    DEFAULT FOR TYPE geography USING btree FAMILY btree_geography_ops AS
    OPERATOR 1 <(geography,geography) ,
    OPERATOR 2 <=(geography,geography) ,
    OPERATOR 3 =(geography,geography) ,
    OPERATOR 4 >=(geography,geography) ,
    OPERATOR 5 >(geography,geography) ,
    FUNCTION 1 (geography, geography) geography_cmp(geography,geography);
 <   DROP OPERATOR CLASS public.btree_geography_ops USING btree;
       public       postgres    false    6    2242    1199            �           2753    177827    btree_geometry_ops    OPERATOR FAMILY     7   CREATE OPERATOR FAMILY btree_geometry_ops USING btree;
 <   DROP OPERATOR FAMILY public.btree_geometry_ops USING btree;
       public       postgres    false    6            c           2616    177828    btree_geometry_ops    OPERATOR CLASS     u  CREATE OPERATOR CLASS btree_geometry_ops
    DEFAULT FOR TYPE geometry USING btree FAMILY btree_geometry_ops AS
    OPERATOR 1 <(geometry,geometry) ,
    OPERATOR 2 <=(geometry,geometry) ,
    OPERATOR 3 =(geometry,geometry) ,
    OPERATOR 4 >=(geometry,geometry) ,
    OPERATOR 5 >(geometry,geometry) ,
    FUNCTION 1 (geometry, geometry) geometry_cmp(geometry,geometry);
 ;   DROP OPERATOR CLASS public.btree_geometry_ops USING btree;
       public       postgres    false    6    1165    2238            �           2753    178434    gist_geography_ops    OPERATOR FAMILY     6   CREATE OPERATOR FAMILY gist_geography_ops USING gist;
 ;   DROP OPERATOR FAMILY public.gist_geography_ops USING gist;
       public       postgres    false    6            f           2616    178435    gist_geography_ops    OPERATOR CLASS     �  CREATE OPERATOR CLASS gist_geography_ops
    DEFAULT FOR TYPE geography USING gist FAMILY gist_geography_ops AS
    STORAGE gidx ,
    OPERATOR 3 &&(geography,geography) ,
    OPERATOR 13 <->(geography,geography) FOR ORDER BY pg_catalog.float_ops ,
    FUNCTION 1 (geography, geography) geography_gist_consistent(internal,geography,integer) ,
    FUNCTION 2 (geography, geography) geography_gist_union(bytea,internal) ,
    FUNCTION 3 (geography, geography) geography_gist_compress(internal) ,
    FUNCTION 4 (geography, geography) geography_gist_decompress(internal) ,
    FUNCTION 5 (geography, geography) geography_gist_penalty(internal,internal,internal) ,
    FUNCTION 6 (geography, geography) geography_gist_picksplit(internal,internal) ,
    FUNCTION 7 (geography, geography) geography_gist_same(box2d,box2d,internal) ,
    FUNCTION 8 (geography, geography) geography_gist_distance(internal,geography,integer);
 :   DROP OPERATOR CLASS public.gist_geography_ops USING gist;
       public       postgres    false    2241    1181    1199    6            �           2753    177878    gist_geometry_ops_2d    OPERATOR FAMILY     8   CREATE OPERATOR FAMILY gist_geometry_ops_2d USING gist;
 =   DROP OPERATOR FAMILY public.gist_geometry_ops_2d USING gist;
       public       postgres    false    6            d           2616    177879    gist_geometry_ops_2d    OPERATOR CLASS     �  CREATE OPERATOR CLASS gist_geometry_ops_2d
    DEFAULT FOR TYPE geometry USING gist FAMILY gist_geometry_ops_2d AS
    STORAGE box2df ,
    OPERATOR 1 <<(geometry,geometry) ,
    OPERATOR 2 &<(geometry,geometry) ,
    OPERATOR 3 &&(geometry,geometry) ,
    OPERATOR 4 &>(geometry,geometry) ,
    OPERATOR 5 >>(geometry,geometry) ,
    OPERATOR 6 ~=(geometry,geometry) ,
    OPERATOR 7 ~(geometry,geometry) ,
    OPERATOR 8 @(geometry,geometry) ,
    OPERATOR 9 &<|(geometry,geometry) ,
    OPERATOR 10 <<|(geometry,geometry) ,
    OPERATOR 11 |>>(geometry,geometry) ,
    OPERATOR 12 |&>(geometry,geometry) ,
    OPERATOR 13 <->(geometry,geometry) FOR ORDER BY pg_catalog.float_ops ,
    OPERATOR 14 <#>(geometry,geometry) FOR ORDER BY pg_catalog.float_ops ,
    FUNCTION 1 (geometry, geometry) geometry_gist_consistent_2d(internal,geometry,integer) ,
    FUNCTION 2 (geometry, geometry) geometry_gist_union_2d(bytea,internal) ,
    FUNCTION 3 (geometry, geometry) geometry_gist_compress_2d(internal) ,
    FUNCTION 4 (geometry, geometry) geometry_gist_decompress_2d(internal) ,
    FUNCTION 5 (geometry, geometry) geometry_gist_penalty_2d(internal,internal,internal) ,
    FUNCTION 6 (geometry, geometry) geometry_gist_picksplit_2d(internal,internal) ,
    FUNCTION 7 (geometry, geometry) geometry_gist_same_2d(geometry,geometry,internal) ,
    FUNCTION 8 (geometry, geometry) geometry_gist_distance_2d(internal,geometry,integer);
 <   DROP OPERATOR CLASS public.gist_geometry_ops_2d USING gist;
       public       postgres    false    2239    1177    1165    6            �           2753    177916    gist_geometry_ops_nd    OPERATOR FAMILY     8   CREATE OPERATOR FAMILY gist_geometry_ops_nd USING gist;
 =   DROP OPERATOR FAMILY public.gist_geometry_ops_nd USING gist;
       public       postgres    false    6            e           2616    177917    gist_geometry_ops_nd    OPERATOR CLASS     �  CREATE OPERATOR CLASS gist_geometry_ops_nd
    FOR TYPE geometry USING gist FAMILY gist_geometry_ops_nd AS
    STORAGE gidx ,
    OPERATOR 3 &&&(geometry,geometry) ,
    OPERATOR 13 <<->>(geometry,geometry) FOR ORDER BY pg_catalog.float_ops ,
    FUNCTION 1 (geometry, geometry) geometry_gist_consistent_nd(internal,geometry,integer) ,
    FUNCTION 2 (geometry, geometry) geometry_gist_union_nd(bytea,internal) ,
    FUNCTION 3 (geometry, geometry) geometry_gist_compress_nd(internal) ,
    FUNCTION 4 (geometry, geometry) geometry_gist_decompress_nd(internal) ,
    FUNCTION 5 (geometry, geometry) geometry_gist_penalty_nd(internal,internal,internal) ,
    FUNCTION 6 (geometry, geometry) geometry_gist_picksplit_nd(internal,internal) ,
    FUNCTION 7 (geometry, geometry) geometry_gist_same_nd(geometry,geometry,internal) ,
    FUNCTION 8 (geometry, geometry) geometry_gist_distance_nd(internal,geometry,integer);
 <   DROP OPERATOR CLASS public.gist_geometry_ops_nd USING gist;
       public       postgres    false    1181    2240    6    1165            N
           2605    178126 #   CAST (public.box2d AS public.box3d)    CAST     a   CREATE CAST (public.box2d AS public.box3d) WITH FUNCTION public.box3d(public.box2d) AS IMPLICIT;
 *   DROP CAST (public.box2d AS public.box3d);
    
   pg_catalog            false    1169    1173    437            M
           2605    178127 &   CAST (public.box2d AS public.geometry)    CAST     g   CREATE CAST (public.box2d AS public.geometry) WITH FUNCTION public.geometry(public.box2d) AS IMPLICIT;
 -   DROP CAST (public.box2d AS public.geometry);
    
   pg_catalog            false    1173    441    1165            J
           2605    178128    CAST (public.box3d AS box)    CAST     V   CREATE CAST (public.box3d AS box) WITH FUNCTION public.box(public.box3d) AS IMPLICIT;
 !   DROP CAST (public.box3d AS box);
    
   pg_catalog            false    438    1169            L
           2605    178125 #   CAST (public.box3d AS public.box2d)    CAST     a   CREATE CAST (public.box3d AS public.box2d) WITH FUNCTION public.box2d(public.box3d) AS IMPLICIT;
 *   DROP CAST (public.box3d AS public.box2d);
    
   pg_catalog            false    1169    436    1173            K
           2605    178129 &   CAST (public.box3d AS public.geometry)    CAST     g   CREATE CAST (public.box3d AS public.geometry) WITH FUNCTION public.geometry(public.box3d) AS IMPLICIT;
 -   DROP CAST (public.box3d AS public.geometry);
    
   pg_catalog            false    1169    442    1165            y	           2605    178403     CAST (bytea AS public.geography)    CAST     [   CREATE CAST (bytea AS public.geography) WITH FUNCTION public.geography(bytea) AS IMPLICIT;
 '   DROP CAST (bytea AS public.geography);
    
   pg_catalog            false    695    1199            x	           2605    178132    CAST (bytea AS public.geometry)    CAST     Y   CREATE CAST (bytea AS public.geometry) WITH FUNCTION public.geometry(bytea) AS IMPLICIT;
 &   DROP CAST (bytea AS public.geometry);
    
   pg_catalog            false    444    1165            O
           2605    178404     CAST (public.geography AS bytea)    CAST     b   CREATE CAST (public.geography AS bytea) WITH FUNCTION public.bytea(public.geography) AS IMPLICIT;
 '   DROP CAST (public.geography AS bytea);
    
   pg_catalog            false    1199    696            Q
           2605    178400 +   CAST (public.geography AS public.geography)    CAST     �   CREATE CAST (public.geography AS public.geography) WITH FUNCTION public.geography(public.geography, integer, boolean) AS IMPLICIT;
 2   DROP CAST (public.geography AS public.geography);
    
   pg_catalog            false    1199    1199    694            P
           2605    178421 *   CAST (public.geography AS public.geometry)    CAST     c   CREATE CAST (public.geography AS public.geometry) WITH FUNCTION public.geometry(public.geography);
 1   DROP CAST (public.geography AS public.geometry);
    
   pg_catalog            false    706    1199    1165            D
           2605    178124    CAST (public.geometry AS box)    CAST     ^   CREATE CAST (public.geometry AS box) WITH FUNCTION public.box(public.geometry) AS ASSIGNMENT;
 $   DROP CAST (public.geometry AS box);
    
   pg_catalog            false    1165    435            H
           2605    178122 &   CAST (public.geometry AS public.box2d)    CAST     g   CREATE CAST (public.geometry AS public.box2d) WITH FUNCTION public.box2d(public.geometry) AS IMPLICIT;
 -   DROP CAST (public.geometry AS public.box2d);
    
   pg_catalog            false    1173    433    1165            G
           2605    178123 &   CAST (public.geometry AS public.box3d)    CAST     g   CREATE CAST (public.geometry AS public.box3d) WITH FUNCTION public.box3d(public.geometry) AS IMPLICIT;
 -   DROP CAST (public.geometry AS public.box3d);
    
   pg_catalog            false    1165    1169    434            @
           2605    178133    CAST (public.geometry AS bytea)    CAST     `   CREATE CAST (public.geometry AS bytea) WITH FUNCTION public.bytea(public.geometry) AS IMPLICIT;
 &   DROP CAST (public.geometry AS bytea);
    
   pg_catalog            false    445    1165            I
           2605    178419 *   CAST (public.geometry AS public.geography)    CAST     o   CREATE CAST (public.geometry AS public.geography) WITH FUNCTION public.geography(public.geometry) AS IMPLICIT;
 1   DROP CAST (public.geometry AS public.geography);
    
   pg_catalog            false    705    1165    1199            F
           2605    177783 )   CAST (public.geometry AS public.geometry)    CAST        CREATE CAST (public.geometry AS public.geometry) WITH FUNCTION public.geometry(public.geometry, integer, boolean) AS IMPLICIT;
 0   DROP CAST (public.geometry AS public.geometry);
    
   pg_catalog            false    1165    205    1165            C
           2605    177792    CAST (public.geometry AS path)    CAST     R   CREATE CAST (public.geometry AS path) WITH FUNCTION public.path(public.geometry);
 %   DROP CAST (public.geometry AS path);
    
   pg_catalog            false    1165    209            B
           2605    177790    CAST (public.geometry AS point)    CAST     T   CREATE CAST (public.geometry AS point) WITH FUNCTION public.point(public.geometry);
 &   DROP CAST (public.geometry AS point);
    
   pg_catalog            false    1165    207            E
           2605    177794 !   CAST (public.geometry AS polygon)    CAST     X   CREATE CAST (public.geometry AS polygon) WITH FUNCTION public.polygon(public.geometry);
 (   DROP CAST (public.geometry AS polygon);
    
   pg_catalog            false    1165    211            A
           2605    178131    CAST (public.geometry AS text)    CAST     ^   CREATE CAST (public.geometry AS text) WITH FUNCTION public.text(public.geometry) AS IMPLICIT;
 %   DROP CAST (public.geometry AS text);
    
   pg_catalog            false    439    1165            �	           2605    177793    CAST (path AS public.geometry)    CAST     K   CREATE CAST (path AS public.geometry) WITH FUNCTION public.geometry(path);
 %   DROP CAST (path AS public.geometry);
    
   pg_catalog            false    208    1165            �	           2605    177791    CAST (point AS public.geometry)    CAST     M   CREATE CAST (point AS public.geometry) WITH FUNCTION public.geometry(point);
 &   DROP CAST (point AS public.geometry);
    
   pg_catalog            false    1165    206            �	           2605    177795 !   CAST (polygon AS public.geometry)    CAST     Q   CREATE CAST (polygon AS public.geometry) WITH FUNCTION public.geometry(polygon);
 (   DROP CAST (polygon AS public.geometry);
    
   pg_catalog            false    210    1165            �	           2605    178130    CAST (text AS public.geometry)    CAST     W   CREATE CAST (text AS public.geometry) WITH FUNCTION public.geometry(text) AS IMPLICIT;
 %   DROP CAST (text AS public.geometry);
    
   pg_catalog            false    1165    443            �            1259    178413    geography_columns    VIEW     �  CREATE VIEW geography_columns AS
 SELECT current_database() AS f_table_catalog,
    n.nspname AS f_table_schema,
    c.relname AS f_table_name,
    a.attname AS f_geography_column,
    postgis_typmod_dims(a.atttypmod) AS coord_dimension,
    postgis_typmod_srid(a.atttypmod) AS srid,
    postgis_typmod_type(a.atttypmod) AS type
   FROM pg_class c,
    pg_attribute a,
    pg_type t,
    pg_namespace n
  WHERE (((((((t.typname = 'geography'::name) AND (a.attisdropped = false)) AND (a.atttypid = t.oid)) AND (a.attrelid = c.oid)) AND (c.relnamespace = n.oid)) AND (NOT pg_is_other_temp_schema(c.relnamespace))) AND has_table_privilege(c.oid, 'SELECT'::text));
 $   DROP VIEW public.geography_columns;
       public       postgres    false    703    704    702    6            �
           0    0    geography_columns    ACL     �   REVOKE ALL ON TABLE geography_columns FROM PUBLIC;
REVOKE ALL ON TABLE geography_columns FROM postgres;
GRANT ALL ON TABLE geography_columns TO postgres;
GRANT SELECT ON TABLE geography_columns TO PUBLIC;
            public       postgres    false    176            �            1259    178536    geometry_columns    VIEW     |  CREATE VIEW geometry_columns AS
 SELECT (current_database())::character varying(256) AS f_table_catalog,
    n.nspname AS f_table_schema,
    c.relname AS f_table_name,
    a.attname AS f_geometry_column,
    COALESCE(postgis_typmod_dims(a.atttypmod), sn.ndims, 2) AS coord_dimension,
    COALESCE(NULLIF(postgis_typmod_srid(a.atttypmod), 0), sr.srid, 0) AS srid,
    (replace(replace(COALESCE(NULLIF(upper(postgis_typmod_type(a.atttypmod)), 'GEOMETRY'::text), st.type, 'GEOMETRY'::text), 'ZM'::text, ''::text), 'Z'::text, ''::text))::character varying(30) AS type
   FROM ((((((pg_class c
     JOIN pg_attribute a ON (((a.attrelid = c.oid) AND (NOT a.attisdropped))))
     JOIN pg_namespace n ON ((c.relnamespace = n.oid)))
     JOIN pg_type t ON ((a.atttypid = t.oid)))
     LEFT JOIN ( SELECT s.connamespace,
            s.conrelid,
            s.conkey,
            replace(split_part(s.consrc, ''''::text, 2), ')'::text, ''::text) AS type
           FROM pg_constraint s
          WHERE (s.consrc ~~* '%geometrytype(% = %'::text)) st ON ((((st.connamespace = n.oid) AND (st.conrelid = c.oid)) AND (a.attnum = ANY (st.conkey)))))
     LEFT JOIN ( SELECT s.connamespace,
            s.conrelid,
            s.conkey,
            (replace(split_part(s.consrc, ' = '::text, 2), ')'::text, ''::text))::integer AS ndims
           FROM pg_constraint s
          WHERE (s.consrc ~~* '%ndims(% = %'::text)) sn ON ((((sn.connamespace = n.oid) AND (sn.conrelid = c.oid)) AND (a.attnum = ANY (sn.conkey)))))
     LEFT JOIN ( SELECT s.connamespace,
            s.conrelid,
            s.conkey,
            (replace(replace(split_part(s.consrc, ' = '::text, 2), ')'::text, ''::text), '('::text, ''::text))::integer AS srid
           FROM pg_constraint s
          WHERE (s.consrc ~~* '%srid(% = %'::text)) sr ON ((((sr.connamespace = n.oid) AND (sr.conrelid = c.oid)) AND (a.attnum = ANY (sr.conkey)))))
  WHERE (((((c.relkind = ANY (ARRAY['r'::"char", 'v'::"char", 'm'::"char", 'f'::"char"])) AND (NOT (c.relname = 'raster_columns'::name))) AND (t.typname = 'geometry'::name)) AND (NOT pg_is_other_temp_schema(c.relnamespace))) AND has_table_privilege(c.oid, 'SELECT'::text));
 #   DROP VIEW public.geometry_columns;
       public       postgres    false    703    704    702    6            �
           0    0    geometry_columns    ACL     �   REVOKE ALL ON TABLE geometry_columns FROM PUBLIC;
REVOKE ALL ON TABLE geometry_columns FROM postgres;
GRANT ALL ON TABLE geometry_columns TO postgres;
GRANT SELECT ON TABLE geometry_columns TO PUBLIC;
            public       postgres    false    177            �            1259    186037    points    TABLE     H   CREATE TABLE points (
    name character varying,
    point geometry
);
    DROP TABLE public.points;
       public         postgres    false    1165    6            �            1259    178063    spatial_ref_sys    TABLE       CREATE TABLE spatial_ref_sys (
    srid integer NOT NULL,
    auth_name character varying(256),
    auth_srid integer,
    srtext character varying(2048),
    proj4text character varying(2048),
    CONSTRAINT spatial_ref_sys_srid_check CHECK (((srid > 0) AND (srid <= 998999)))
);
 #   DROP TABLE public.spatial_ref_sys;
       public         postgres    false    6            �
           0    0    spatial_ref_sys    ACL     �   REVOKE ALL ON TABLE spatial_ref_sys FROM PUBLIC;
REVOKE ALL ON TABLE spatial_ref_sys FROM postgres;
GRANT ALL ON TABLE spatial_ref_sys TO postgres;
GRANT SELECT ON TABLE spatial_ref_sys TO PUBLIC;
            public       postgres    false    174            �
          0    186037    points 
   TABLE DATA               &   COPY points (name, point) FROM stdin;
    public       postgres    false    178   �E      �
          0    178063    spatial_ref_sys 
   TABLE DATA               Q   COPY spatial_ref_sys (srid, auth_name, auth_srid, srtext, proj4text) FROM stdin;
    public       postgres    false    174   OF      T
           2606    178071    spatial_ref_sys_pkey 
   CONSTRAINT     ]   ALTER TABLE ONLY spatial_ref_sys
    ADD CONSTRAINT spatial_ref_sys_pkey PRIMARY KEY (srid);
 N   ALTER TABLE ONLY public.spatial_ref_sys DROP CONSTRAINT spatial_ref_sys_pkey;
       public         postgres    false    174    174            �
           2618    178543    geometry_columns_delete    RULE     ]   CREATE RULE geometry_columns_delete AS
    ON DELETE TO geometry_columns DO INSTEAD NOTHING;
 >   DROP RULE geometry_columns_delete ON public.geometry_columns;
       public       postgres    false    177    177    177            �
           2618    178541    geometry_columns_insert    RULE     ]   CREATE RULE geometry_columns_insert AS
    ON INSERT TO geometry_columns DO INSTEAD NOTHING;
 >   DROP RULE geometry_columns_insert ON public.geometry_columns;
       public       postgres    false    177    177    177            �
           2618    178542    geometry_columns_update    RULE     ]   CREATE RULE geometry_columns_update AS
    ON UPDATE TO geometry_columns DO INSTEAD NOTHING;
 >   DROP RULE geometry_columns_update ON public.geometry_columns;
       public       postgres    false    177    177    177            �
   �   x��ͽ�0 ��>/ ��GKǣgGW�&bpZ}~!2����n?��ۀ��g�A�b�_���{O��� r�r�� ?j!��^��R,R�w��S[�c�\��8$ÙV�&�*o�TXyj%d*��	ibK����$���!S+e��--������3�8C�8��tm�X
!�v
      �
      x���v�H�.|=�Sp��v��0�s�E_Ȓ-�l�nQ]��{�K��2E�y����@�8�E\t�L� )D|���""#�D��|����Wgo>�����˻S�B���������fq/�x����CT\�}z������~y��V�|�$E�L9�( ƦX)�_,���_��xu~�?����/�_D�_����^���L�1�*����)C, lJ����H2���4����'Q���tu~�F���2I�ӛ�_�a�ǥ
|�������6��ןB$(#Xa�����|U!���+�I}�~}\f�u�-���z�k2�?����Pկ����Jҿ>Q�ɯ�,�M��&�����W%t��8�� w��������j6���Ev�~I��<�x���f����^l�zvx�cԨ�x�ZG�c_�Ԩ��*T�*T5*��VsDl5'0�(D�
̟�ЇS�z�#�+mԫց��	�)[��Fڥ�\���|�;�Βl���x]%_�e��I�ُ�:yxyݫ��^6/'}u�B��=�*uqv�5��Կ����w.�^�B2��C�\�ZI�W�:���0�.���R�_|]d��[XV&��Ur;�<f���>���Z�$��?�>����@t����cr�/�Q��([D��9_� �_, d�D�B����C��ķW	-�a�y=�?�rg��_=��|��ol�$U7>���+�7���FU������Ho��x�-�ɥ�0�E<���e��w�����Q���a0��$2��&�qj0��0r������T?s��+բqp�@�{h�w\0��=	��<������	A�Z����F`�+hq���u���Y�e	�P
���>\��ş�e��~N�'���^+X�o�:�p�-b��k�B�T'n�7�vp�B�C.Z�>F�`$�at2��_�1���K|��W�M+pʰ~��B�C.8�
^�O)��4�iJ�KϬ@I���D��I�|"h��h�w�����4K	ɕĈH��z�d#Xr`��yt3_~�;+�2���r��Kﴽ�SȔ�����+ʴ��`T�mn1H�B4`�1;�߀�P?�<a�	&18Fz�R���O��ix�p��u����_~OFŗ;�t�J�&	�@���s�MC�z��-�����+��1��z�b��E2�������~�z~v����o�@~�XR��#��k��F��c�9&�;i�B;P'���Tyu6�I��7{@�o�B�m������7�F��@;	�Ϥ��C�3�zz&<�/o~�������I(D=8�>	4���I����3Ho�ZNm2�Cf����S���x��?���z_���K�U��zʅ}h>T�è]�4v�+��P>vƯ�z�5�|K��j]8�_!E������j��,�bxl����D�g�l���ƂD�Jح��n=���4�j�l�+a("��xǈ4������[.&�ɗt����Q�"�?�U�/oQU2`�w���A#���f�H�m�Z�f>��g��<���ӽ�p���ڿ�u�49� ��~��oTG��鷕θC���(�<>z���������L#�o�c���Z\F@�[2}��y lX4�ɢ�%�d�� ��T�oA$��Q��n�*bXu
�~�@�#�Ǹ� �o�`0��$���l��~*�h��fl�^��֯`���p��Ĭ�*Ԃ���4`!%c��5�=���b�,�*��M�� �`���yT�[xWL�����f^�.�~�V�-+�������[e�G��N�"cPhs|�g��F�=���e�Ze�W_h-�'l���|�������������>a��-ٍ_AV�NqOvz��u���H�������٪�!�72��g����u�'�N@	��,���4OV�t�� �5��Vߪ׿��9
�a�2��� ,A7aA����$�\t�c�w�aC	qOJ8[/7������K�kX��_-��AO4�H������F�WHf��L�bΕ�~>2���t��r��˗�&���NT|���&.�A�OW��T��Yش���(�1`
�T(�?b�����28�O�Z��#�`��Ucm�{�����p>���r��W�a|�'�;{s1A��o."���G�kO�~#�;|z<-�u#=�����%�_����u_\+U���J��)���h[&�KC\aA��Rd����ZT��I���7"��YDHD�d�J����6ę��-1��D��B�]�I7�Le(C���2g���?i�zd\���'��;!fRDv6CIO"x�Y�������%�G��G��{w;�o�aX�@�D#$/� ��iq�H�H���/]��0"�F4�\�������[q���{�Hc�� H��ZX�9 j�)��<۷d�%��d	1�e
���<�֣x.�������Y���r#*])���F{����-�u���$�z�a�_ɨ1�hO�����Ϗ���W�^�W�ގ�bD�8/fL����B�h��y����d5I�`*b�eA��G{�z@~��N�o�L�z�OM<:�6��Z]�΍5G{Zs�|<L�~z���."��wb�C�h��~���+�9a���3lg�4&���4�AV�'#��e�n"���m4$�B	�%9��]'e����YcVRkV^�]��L0��+�JVI����*��&ѿ��H0*>��A�1����c� '5!�x�T�HQz"�2�J-���^"Xm�,�D|hc�D���7���{�� �G�Z0j�Z�P�&�X��F` �FD��T�ta2�#�a�I�y"Z5	3-���{�b,��k��,���"�S,�bg�FF�c�nsw�����Y|�%S��խPlݴBQ�����ݬq�c#�Y��O�OJP��̙�����>e�� M~OW����Gzr�T��~"�>Q�
jș���0�f1h F`��F�$�N��e�� 6�b3��3i��%�ϐ�i+�]&����+�t�/o��`2����V�4�@i��Wo�N�/�k4ߖ�M�I��������#� �9��W��$�#'���j4�}���9h9�%�Z8�p䤀��ޅ���]k+f�!l���<ҒRL��b
��[Wr4��nT�؝�*-4�k�[q|=V�N��s��$d�ڄ���}d��������oF����:^���Y��Mq�^���?�>��C^D>Lλy�B�hIP��A�[�Ȕ�J��J��>EU���[��%��H�/�'��H��\]�����d��J׫r��g/�IД�۝��GP�X�J��~#���5��j���-��OT-f�r����s�Gl�������Po r�%��RPѱ�> ����B�&�7@X���3�D�zs��&��Ǉt}��),x�F��^D/WӹE�^[W���Һg���uo��ei��1��*\Bm���]��6��/�e��:�|�K�x�a��/V��8#�.H�F� �j�
�!���d���W��[��L43z���4#��4�Dۦ���3�Qm�{��\+��ɃGN�E��"Yۇ9�__�Ut�4���14��vԝ���0I��Iz?_��	cm�[ӱ����6)�[�TJ4%��(A�;��s�Q��D�FX#Æ�����̺-ߦP)�O0ِ��sŹ̂��}˨���nNINV:�7�̈́��x���UDØ���7�k�*o4_ޚ�x`�ej�_sFs��$��$	��p�_���pF@�k����O��G�Pc's���T�9��6�o��Ņ�g"!S����B5h�T�|	KB@�����7x7F @�����g$��4��ɦ�8������i
eZKm~����h\�1�����޾>��j���:�|gv��g�`�!����'�y��!��:*/E好3�$ͣ���B&���x3��)��>G��I7kv�ih1��>ϒlyW��^P�#`��I,��L,K��I��lr��X�\�E��^`���dص�    ������*� 5ܘZn|y|*ɫ���LI��G�8z��f�h����ޱI��s�غ9儜SN�ez�X��XŦ L�T�Ŭ#<��G���Q��+B�J7|�9��!��n���ia3J��Q1�S��$S�;�#8-�jO5��|�u�No���FN��v��1$4��[9�@������^:Co��D��vd����rN$;�{��aD�2�<�ʌ��j9��˗W#������ )�k�����2`I2�^��t�T#8уZN����2hU���24�9��%X-Z�����#V-Ŧ��)$-��5&\{����+�VUZ-C���A��E�Rv^�CQ14@�B����+ԟ��;��ڌF@�kO�xU�^�"�����T:H,���Dτ�,�
;�����0p���{�������wH����o�o�,����AT��|iW��8m�����y�g���pG������=@D~�!��}Ҏ�A�u�d�04��ax9C�)`w���t����_��2~Hq�@�2��8w`�"�0h�zw|u��z���G�77�e|�z ��ac�=��TUw{^�=�M�N��4���1m>�d牅�D��3k��[��0<�9��攅�ޜ
agě�2{L�M�+��@F��m.������ˬG�N0	�Ý�����l�҂�XT���;�M^�T]L�b���Xf�s��a���Pm�D��~����vq\��v��It�L�E������k��u����2�/�=�YL��ж���=F@�Y{Wk״���c�5N6�f����s��NN������T���4�S��@��-}���e� ��6l9��na�'�bS$P ޗ��~\�5s�m�U@í���o>�
Uݳ?��8[�P���,��j�C�\!��偵(���n�̺+{x��D��o����l5��繮�u9�x��G������{9��y3���փ�!���O��c<��Ɖ�Zam�9pI{�KC>�Lj�9����Ǜ��7�f��?޵r�H��-}~�-�"���1��H6��S��c�L�k�sC������<$���٥�F�����f��;E@�{���0o-k��;����β��~�k��0mǆ�h�VsB9�J��#����Ք�'�b�z7D�[��:]��Qy�vX3jA1��]���ͩѻVIE*_ۆ�r^]�U����_bY?������b�)����g�8����{��$��^���/>�¾e>�ʛ㾽}��Un�����Ҟ8޾{N�'��͔`��c>ʛ[s57���LER_rKG��ez��Y���~*Qy-ʯU�=���a���:�G@G�S-W�@��
K@g�Wg�3ퟥ���+��a�4�u�&Y�'3��em1���,O+:@0R�������©@w��IѮ�l~��7q��C�vՏ�ϊ���Ya�짏���+� �*�I���� ����wzF��x���1��|@A���
K}ϯ�\��vV$;��j��ｬo���a�i�\Ɠ�~���� p%ʯD'���?����Է37�����­�-��+��z�W�q�@3a:�<y&F�n[*�V��J�aح���x�G[�`��b/o4��v�������tA]�h�x~$��x}�̿f��ů$��$�ЫG��V�<�R8=�;�H�h��j��0L�z �l �/��| �%��P����A(C5H�wI�r��/.jfP	��N�0�
9��%��hfh���di���j���TN������X��ș������)�a����l����k֗gǣb|X��T�Y�IH.&�#��U^y�A��@�0q:�#�CYVʔl�h$�����w�����4�O:��̖�j���&�լ.����rd/oK0 �&C�P��j�U�E� �)�i�|5b��2(�..'�{��I�.(�k"T=�Bmvr�z�3B��1����U�|Do��2S�i9OhX�'ۋ.&C��8$S(_�:N��pL�;7�*���!�Ғ͋�6I��S'6Y`;��J �#��,�£��3���|�]�CޢH�HT�8������l���8	��y�����i�^"����,||�8����08����	�� ������f���l��'��e�������o.:���,�?3���/o鎀��f&���U�Q�p�>q�u���<Q#�j ���P�n�?C]���%��J���#QlkW2	�A@��i+�^�fw(�ZMzFCK��4�2���)�n��O���gȅ���4�����x-��a�Bt��C}�"�HqR#`�7�h�����	ECi����c�9���a� I����+_X��I���m'��2�BYn�l�����]䊱�r���;HM�B#��/���׼��	X� q��c�Y����{�b�BȦ$�g�`*�ȭe� ��V�oNf�|>.&~������|��_'E�t�2U�WJ��bS
�TI_DF�Ŕ�]GT�t>&yS��ͳx�9Kʷ�pk�;��L�^�v�Վ2D[I'�x�Z%���3.����f�^�vW�� +�L�ݏǵpȇ�5�jo�Vuͳ��a�c�U5���Ч�^���'��^���D��e(���Z���u]�C��f��>2� ���tq���0��R���^����8<<q-�o)Ϊ`��Q��:;�.f��nM'��<�Vt��{��^n�<�^Q⣂D Cm�j������NR���PI)�$ߦ�j@��D���Ϩ�Y4;��<EjNb�$.����Sҽ�	�L��vf��ó��zCV�̇�X��Y��$���g[�_E�<�Cp�<8���������mq��|�3�z�k���e���Ѽ�YJ�LS��O����L\+�ЊX���ѷ�W����O����=8�j|xZ�C_���Na�i��t�٩_S����`� !BH��a��s��k��J�{�z�K�C!�����:�]�v��f�RS,!C���\Q�k�{跀�	�#����8��l��MT4�/��L��P4�'ՍTAg[�5ϑ�{h^z�-��IO���n�;�z� C�Q���7�L
�or�������	j��5�"��|Þ�eϯ�u�-�.I�~�����S��X{,�pg�̝+��k�o�3◟��l�8騿���=<�D/�E���R���A��x1��ݥE>À�e����M��,f`��]B:�����b��TX�FD�|u�H�H�#ϨI>�1��>0��~$qG�w}�#��w)�F�|	FNA�d~�����8�)&��bLF�h��O��\�].6�y�K�<��`T�r��A$?d��T���6]�"���b�r���]���7�X����y��
z7ғ����}l�ecub��7Y�z�5]O�҇��ު�rpv��S��k; # a��:�<�a[ة?�7�Gk�ہ}�-��s��9x_ۏ$��<<�	��I:û0rax�&狛�x�zL\4��س/����``x�?�W��׿�_;����kz`/��$�E:\x\�q������!1����>�sa)�I�0'S>��K����^�����VW���T��;hś����&zX��@�	:��b<&��Gl��׾!Sؒ��l�L����l���i߷����n$Ι=�!���\z;��h��.c�"���!h�;������9���Kg%ң�mT��P<�k<Y��O�#��Gb�<M��$�s��liO��(�3����dSa����:��Ȁwx>�"����F���EV&Ï����ᢝ�F/�Կny���?����j�m(*i����y���e�Q��	�ܗ����p�P����x.n��[5�eE2O��]�Բ9u�5M��T�:��Ea�V�p\��5��L���ސ[��;�L+��Cg�H �oS��%$(-�!�*O#)�Z��Ϋ#iq��h1F Oo�����~L,?~�ol����>DD��X!��    W�f�
�lV�2v��2���'�������xq��~�=�v�3�{I	Պ9"z�ݓ�d�b��7�PG�O9�5�yD^�,7�G���i�yD#&��m~ċdR֣����9�Z$��CS�C��"1̕X��n3��s3���u���&�"��Ç��Q�sv�d�E���g�`>��Krߝ:��w��]�Lݖy�7��m���1	*��Тiډ8�*P ag�A�%# ���=N��F�| �%�ƞ�
�5r����3;���tb��bǯL�U)�dA_��v�̦���i(���z�v��q1|�X>�5]Ԣa<E%?��ͷ���u�&� q}r|��f�~H�b[X���"�KjM�����OIY]�eL�4�喢���DC� T#��5䙆U��	���"�7��)���5�]#Zǧ��QEX#ò�eٿ�q
i��v0*kmR��Qj<���q�@�HS�D}[# ��5��˭�;�Kj<��nÈ�eĿ�rUճ�jO9[Bo7�e#Uб��a�N�ݤ�:�|��K-�}��0}�,�qY�������*_�N�/�"���\���~�#�,LXon���W�mdt��6&�z�����L��fi�W�a��:�_���ݸ�3����Hs!�F֑�HGJ����fP��GǐhjI��d��7~��b��%�C�"�M����6��q��nK��d��̥#� �:�]�����zyR1/��#���!��i���������c:�N���x�c?U�k�ڠQ�+f���X9mO��ܨ���xrN����$^dv�GہaS,��B
�&�X9+���6K�#`X9u�̎O�-�i�}KW�)��;�i�hBuU����"������d��> ['����T9S�k�L��{����i��JP�Pcf��$�s�o���*�Ӕt�g#���)'U+r�j7l�9-S��z]�˯Z��v0*��
�Ts�l��=��ӮT���e��~��U"�B/6r��s�^�Yf��͟�ִȶ�ϟya�S�b�tB:$�HOa#`��9�[�\\̇��Yf��t�M�����й��6�0��Q1>l��)��VA26
���ޑ�׽���R�w�R��e�\�#`�X��2<cm�vm�#���w�s�\��e��^��yι]y`$*F��}R7�'�ui$��'�u���7�	G�_�����~90��G&E �Z������pP��A+�[��04�Y���j&U5I�:Y�wL�s��>�f?��=�.�j�~��I�M� �fڷ3	f�|2�����oL��G���٠��#jP�C�#�����Z@�x�[:X@/����aUO�f�o���Y�	��W����^$˛�\�3���1��OiG�O>��ۣ��b*��@�˱3���ݝ����Ԝ(��ٔwl|D�7Gyw��X��5�N��t�pT^�ۋ[O�4iA���#��l�w�T��n�0�d��>^��ҋw��r�QL8����F���F���]7���o�0w�ofZ���x�f��cC��&��S����Ak2���he�P�N���dޛ$�����Pg�P���-�a�Ձ)�C{��E�	SڵX��C��SEBC��%ӗǧN���wT��j��}ę��4D�(_��s��sr�o<�s�i�Ñ�զ�5P+ep�L0*e��v�^�8�B4�W5�w�7�H{���<��RR��rC��ru/I׳,ɋ���/�c��ɖ^M,���^����y63w�b0*���CsȧDv�\���	��N2Cmr`x��C~l;8���1�X;S�Aޑ%F�kE�rW�|�6+,�����)�����{��$�ǋ�js����������H���IW��-8	��T}`-�Щ��"����*��Roq5l���2�]�?����0Yp���cjȲ�d����XT:o}~�'UX+Dv�)�
QhvI�$�TN+����My�Q�#`Ѣ9;z���	�m�Ho=N����>h�lK��I6v�/f�8�|�1	�6
 I�&���)��nџu�J�#a��������cqm��?�D�pV�n3�u_�x�����"S�;�11�-��[UE�2�[X�}9���D���1�H��y���?>L������nh4V2�U���h�?�'���4����r⏳���P����HT�8���<���'ɉ�
�Q�����{l)�ܙ�a��EĔQ��B�9eF��lH�菰��dC1�,��3���(ސg!=�;�8�Za4�L��7������gدP��^�.�"]�i�E�ݧ�F�nEsl��<iȭt�Ʒzǲ���[8GU�iO����f�Z��\�V*���y�Z�ȋ����v8*�����"K���$��(,�j��;58c��mzc�� N��tJ(tťЮ!�1�Z��X�PF�des�v�!c#p���,y�||��~�R�\���,�Kxף˽U��o3�>�w��O�x�*q��#dx�t�Y�+���d7�b�4��Kd�B�m��^P9�*����3��!��R�؜Z;�66�������$Py!`��tX��P���5�0v*{���%���!�ҒԿ��x9)j�l�ɇj��<�[�e����İ�bt����Q�?�"���!��W�p�m%���窸֪w�T6sRS��U�a�Ҳҿe�E�o����a�V�)�K`v���/F8�s	eߓ�ub��6dTZ2�!{�'�蟊�l*����x�0R�ud�ՠa�����՗,[ڼ(wh�@mG	�C�Ԕ�� T��T�)���0RNi
�`���{=G��p<e9��+��p̜פ�?�0�� �����H�ck^�Ts�q�_E(_���)K�f��c���K簸PK��\��Þ��Y���#iJ��l����c_�B��7�JYz5���/�Ln�Z�;C���2~H?����ه�m�*I �^�B�T��F�i��ɥ�\G��S5���Y�X�"~p����h��,ݚ%w��n����ѐL�����g��U3�������+ݰ(��/����q�:#{u��0$�̐j��ʐe��ls�n߽��5�.8ꧺ��pk��Je^��=Sl�J�Б����v��rV�7��u����o�����4?|.�S���}V�T�m^kz����7��C����k�͎0x���j�Nջ�S�\���T�|^���y����r��-٭��͚J�Rs�Q��7��PS�ךΦ�j|U5����r���ܲ�U�|T�U��^_p[#�x�X-3�`�S�폆��;����8`y:���S�����>O�rF�	��B�U������t�p�t��r�rxeU���I�̾ �3Z���P�C��x�n�"@nJ2<Ad=dг��u���=�}7��� �F�E@���e�׭K	�-��!�6`Xµ6����|��P�F�h�9����&(��R0��G�<���E=P��OP �g��զ8;������,WW+�ˑ�z��P*��:�����B\�����/z�(�q�ū���(�F B�[�&�BBjh�g�2���ދ��Z�C�@�bCT�ܵ4�B���~�*�
7�X^�Zsȷ��.�D��>�&F����`ձ@Ba��̖��Y|/�XsN��Qq!*.��Vuѱ6���xJCm8��c^�M-�SB�	&!��Q� ���]q}Oq���>�Ҁj)�յ3!f����}6x�Yqx2W�C�Y��-[���&v��ʷ�z-��!�F�V�Ó����,*Ry�F��!K��'����:�Ͻz٪pڑ�@��jlkӶ�V�!0lY���xq�,�?v`�SQz[@P���v�A#�X����:�|�Z��Gg�N��y
�LgIv������}�/V�t�Y'��y�b>U�	(��, 7��j�&��
�Z�>)��P,�|6�>Y>ċ��kv���#C�q���]����ʖtQ�������O�C�EH�	r$�s�P�áHm�h2��H����D��4�9�    =ߝ^ڃ��f�j��7���e�&7_W�d��>f���h*�S�d M�q�����R�y��X�cqŬz�֫[�Ļ�gF�6�{���W84�B����`T�s���{LM��v��ǈ�{x�N_Ѕ��%$��D����}�^���1�%D�hT���)��vI{\������T��0>d}�I<��'����o NGBg���Qy1*.����V̊�T,�^ݺ&�|�o��V�|t�C�tD:~����ȏ󢼠~;$#�u�f_��a��X>Ƌ��zXgv�6旉�]&����˟�*�HZ�����z���~p�nX�]�d~�����qa�`> ������O�/f�������c�,���!=IpG1b�F�A����`��y�ǆb��avh�~[!�G
�o�.�ӊ���;Zvm#Ƽ���#�x�9AW�$���N6_�,`����o*:����b����,���pٛ����W���n�,B夾(9|�-�75��h+	sIw������z_���8���)�vA�J��|3u�7k���E�[o�hk�I�0�h!J��\�/�aȇ]�é�:���v����x�{����)|xuv�v4.��z���_�`5��9��[��W>3�w��^����S��d9�Þx�(p>���A��x�E�!^��MyZ[T�� L��.�� u�\$���d��뫷�8�hT���DAw:@���*��*tr�.�Iɜ&'Y���#�dR�ՙ��r���Q1丁�/c}Q@[j[��û�����m��L#5�4R�L�O^'��s�
{����;����4J�rW{�h�IR�:~K3����h?�2:^h�9�/L9@pS*����Wj6@'(nҥ��.}���h5�i@v�,G�bt@�p����1wޒ�\:]U"�J�r��mb���v�r�v�d*nO6��`�җyK�r5O�"�6X��i��.қ�(G�bt ̦\�)�s��൹�� ���@Na)��ksV;��Q1��Aܵ�zAf2o�L�BP�ˇ���B�b��L?�Tnf��xT����)a�f���;A�2�MZ��F.n��^��d�W�����G��)�,`յ$��[R��]쫂�8���p�=]@�;o�Hl���;h�5WFSBp���Qx�i#>��f����}��Ah��+�������<�Ej�C|iͼ%�����jVͪ͞��M�>��?��=|@��d8�hפ1s'����y���2�T�(��AR+륇%S�5A~2o�Oւ�9K�� K��`X�z4���E~�h���)�#�jt��K�����(H�Bp��C�0�B08�`Jx�y'@LJ(+��PQLyD# Z�s���YCʜ|���N=W�o�c�HV�n�]��K��#�d浙�Ot��f�$6ϒ�ةzt�Yl�D*GV��� O���)?��7I��IB��婲ffQ���3�ۭ�(
R���2�H��E�n=�8�AB�^@�A)��IA��)|X���*Af2��L�_Ҟ�]�O�8��S6�ŋ��V��E�X��� �R�ׅ�w��S��2�ymfs-Zur� b���Β���.y��-�̒Sa����a2Am�iW�p>��Y�;w�N,C���V�W'����*`,:��-��G�m����Nz|�]^[�#���L���sv2f�Qf�oPg��{5��7�y Ŕ�#"���|ɳ�%y6ެ���ح��$����N��o�޼U*f������i��O>6�;Mx�����o�ў�p`�I��ٔ��7�	�e�$��o(;����6x&�2��l�n���GX`��UGI�C�G��q_^'��{C��D�M|�̳�c�W����>Cؠ�?ú�����]�F.C����'�3���	��I�͓������)}ɧ���.F@�q��U�|�v�����)���mx���%}��6l�0�dX���t���2��J�v��P�����9�#`ø/���׿��Ρ��d�Њ��@8!���!5���HHy��?����|E��k��ox0�t�*�#�l�yY8^<�Y�0�X2��bC�S�8�O��Y���\�Ju!$�����0]�Ջ��:�H����[�\���QW�q��{�	P"���@!9*�z}D�ja %&�i?(ãizS@��㾵��,��14�X�|~v)��r�u3y�~��|<��;I!d�Ŕ��2if�>6�|��L,G~¶lA�èx?���e�ԓ8�H~$#`Ƥ73��׸a��2���s���9�RF���ǿ��=�0��!2NL��<���׾�Ą�k��l�3�G۱!uO�ڱ8`�n��1P{3#&}q�|>����灰�5���Y��Y��4���L���w͉��A*��*����ĩ�t-����[����C�vh�f�8 ���)�8,��tJ�B}��2/R�nP��KhF0U��f�g$��3�Xr�)Y/���/��CA@�.�����.��BV��׼!�D8�_.�ͭ��o��k~=���$�~h;�,'E���!�I��z!Q��G�Pl�D��vĤ�1I֓�v�Mc��]lH(6 �S��^�����Dq�����X>H����/>~��x7���
��Ru�#з5u�eܵry���US��Ǡ'��[Ŭ�pI0��j�T/k�Ró��~�1�=#���b��X
0ǑA^����ni�3���0��b�ܥ��y2я��3+�ꥑ��O���aH��~�0�f>;l��{�}k��z�FT���U-���6�"��NN��@���<yt�k���а�2�RrG�� �'}ͳt��%4�0C�M�$?���_TX_�����Jq�r2~VxC���1r��X��e�yp8y>��yd��0�D	�+��h�H�|>�?B�@�<�5�� �����Itϓ�l�&��8���F��}}"-&��tP��(�'�C��증�Fft�y��i�P�?��5�#�v����ury�g����D����?�o�W(�:�a;���x���a�/x4d��@[���N�|m�)5�бx7X�w#���"owp&8Q�;��K��`�N��wd�U�ïذ�l`2�bz$;Bwl.��2T;S�"��w��`ցq>�T�`��j��T�����x����9ύ�[��;�L�	�)�PT�.&q�C)��� ?N�hH����C�;h�BP�����I���d�p"�������<W>���qK�>��9Ih������r��ovu��6Ʒ�q]D5y�~>h�	xnc�.��8���h��Őr��swR�wמ���5q 9�[�i[HOpܑ��G��[�_� �%���������?�e��|\��b���A����r��Z��:E\|
JpG���a�&���H*��.R�Q������4���F�y8"�U֏������
�"�H��-Y���>C VKb��|,*Ɔom� ��H/�!�S����eĝw7�.���ưxnY���קG�-v���m���6��x�����tv�s������\��1@n�;���ͩ�x�Yf��s^�t{$��U�t4Rӷ8��f�5b��7ܝ+�Pg!Z�o�EAAh��Z�/~�������#\�9���|^�ζ}��@O���p���x|�uF��������(�����K�P��-�v��d���F�b�p��	/7T��5LZ8Y����>~�l�HH����Ecc�%|��J{L�b�D_*]#���aЂ�᡺����A}�Y E~5�d�8bW�:-��˩{��cfx���zv~uv<����R(��Ihz���8^¾�/�h��A��^# �b��	w�P�m�TB�;���HT��%߂�F歡�5?���yj7�V2C��ݤR/ �!-3�Q1��f=ZǇߥ�{�٬��e���ܝJ��BV	����S����՛!�B��Mxz�����\(���am���W�5��t��t��>0��
KS�6yz��f>C�(&A    ?z�"��q�.o�A�Y��E�j���"����^f����}����Z;��hˀ�c�'�oM��a�#`��I�&�|HL(Y�P�E�Y�k���fI����=w�#$��~U�:ѕn����>^LH���X��Y5�������	�h="E������j��m�B����S�����+���9��>H�)�z~v<�#າ��	_[�9ۡ��	Q��GD��2D��S���ͤ�t�����t�T��V���Z�Xs�"�|*���A��T�\H�HsF���o�z"G��[��V������hȱ���,o�!,3>˻r��{H8��єu^9�+�pҽ"��sC{%su~��~�]��#Ch�V�#���+��jΰUi�������Q��q���d���2�)8���yqߍ���춷�F�+�zn��v�s���,�-/��BBׂ0`P� �	�� �:��mq1U�[T��O���ߞ*������R�lOο��z�Ez,�x�޴�V
�֖/�$P�*	�l*��PѺ�jkAM�;�}�?/�����R�y�����&��e��ˢ�٢(�pc�
QS�q��V B[�aЫ"���)!5 82/����r�=w��o�3:��muơcGzaX^�P�i� �����y�*m}sX9�S�*hjj\��Q��q��G����ȲeO��b#���,F����)����_/!�p���c��E �;5���}�����3.�]�#L:'Ia;���0v��i�F��`�g�j��7��*���q&(�L����Ϗ���}���7�w��$*��L���A�Ю�8j����d�T���o| �� >}��_M�̴O�*
��J��"��;�
.�<���p���c@5;z�d*�P�%�>^ǋ��������׃��In�h[�k��k�Fu�uU#p%�'E��d��1^�pVq^(�8�表ڳ�_�������J4��$|�A��'|}?�/��<�O�6\S9�8�+�M�}���I�?���߷�G�P�=�]�N�����O�w�d�,\JX(ڹt�J�j�]�.�UiYV����d�)���]?���$�G�bt1u!�1�	� P ;r#`��	!�f����$��ʝǫ�2Px�M�|8*�����:�Ƌ{��ha�2ݪr'�}��|Q��o3����&:�!�*PwI�]��'_P��A#.��T�����o��
��s�^"R�oq4�ݾ��j��-����![A1�Mu��Vq�Ko�� ʱ��8������!��f[ժ������K5J�;J~�-V��2��v��h;���ON�{�]!3:d~�R�����xxbY�C_-�cO�e�o�~<�'g���I�e2�$NfG������%|&�� ́�D�H&��X��K��֎�0��-���<�(0�Np2��R��g��=ԫ�~���7
��$L��^��v{���t��#<�|��8 P�C��S#}�#��o��Z�|�A�rԓ�&[9�������S?�Oo=ެ��B/&e��d�x�,��_��b߳5D�a<��k����з?w�d>.���D��g���0�c��"��ѡ=p w��79���H��j�,5����;����q��:*��p���p�X<��,������F}k��!0����˛��nN���� o�MLr7u#���w���|_E���n��
��Z(l�s�Ac�V�X���ul�h��"V�����Xdi���s^�Czw���6+[խ�����҄�r�h�6�F@kQ7�u|��|H�E�����X�������	���kwF#����v�\��MF�&����cH��=��`���G��}���!��Ý�F���J|U��10$9�E�d�����s%��r>p>T�!��ѵK��T��%�k���0\	gF<&��xK4's&�#T�7���`(�������vG�C{P�KZ����`�4r��e��!o7ƭ�����A'	� ��K(��F@�Q�(o�\��eF�2��WZ��K�f����੡�I����5	F@�Q�cU�<�!�ؒ����#�n #E�:�1U$�M_�SE��(&�y���7������uU�x�����s���`�3F� ���A|΂PJ"��)�H� !mO��w:zg?w��aH4v:�A��Dπ�]��6})�^��q$��)���e��ƽ	t�\>�BcK��N�N���o{��?�Eu�b�����*�����:�i�O��e�8�܇��G�&�7В� ���~��>���cK�O��.���˛bnYt�+Qq%*����~�swB<R����Z�|)ǖ����/V�>�W^�cXO���T�a
��sܗ�׉�ca�9��|v~v�h?���4l���5�z�B'�7��z��a�S[�E�s_�Lq g���Re�)71����=�[�*��a�ز����{�ßQ��&��˚�b���O��`����׻�����O�M6�M&�x5�L�o	���sH���s����ׇ�1r��]ͬ��� ���k��1+��M�.>�/G�@�dS�ٴ+ځG��q�xE(O���z��ķ=k����[:A�pk�#NF��I�0xE&_���32���|�h%"K�a8���C���)���A��h<韶]��Pw��k/W��|��9B7!��:�3�����;9"l���k!m�1���n�`��4VA��
h���n��̌��>*��K����.7.�/3m�1��;@/'}�|�H�#`X7���z�9E����Í�	��ib��.ݏ�k���:�|��M��ʛU�&���b�rd����yz����q��˭��o�5���4�I�6'�:��Qya�3��J
C`���f�}lٺ�+r�PfL,3~��~��2t�m��ȾD��^�LA&�k����7ܘ8ͧ��M�ÿ��0�ps��}��s�p(T,�ց~���+xQ�^��je����:򻵃\aK��#()�e��c_��ՠ�W\��A���,�1pW	�����0aҗ	��wV2l�Z6��GN?C��𐬗�c����Npz,`��b���R#�"a�1"Fw�d���6�TOG��i#.怖�p���/	��ޑ����d�ĺO���o�e���@��Ze���Ү��;Co�S���bw�tCz뼈��U�|�V�#�������N�K�����g�/�)�v�҆j0�P��R�Jʈ#�,���#���zv��>4��RKX/������:%@��{� �)r��jJ����+mf����f�|H����^y�	��M���,�^�A��*m����
D-:�R�Ih�Rl�_��8�#`<t �C㡖��/6�q��0H>n<���TR����e�V���[[���6|�fR�
ü�}}�t��6�R����B�����{j������D�#�/Xm���l�-?;uϓ�l�&�B��<�e���}~#`�ebN �Z��G�i[����p�,���$���#�-��Z��>�yֻp��>�11˘�'�u�і��u!��kn��/�)ve��(��������A�:�m�SHg�(@�3ml��ױaV�Goq}���+���
m/��g��k�)v�U9}�uc��}�*-e+���s�F@�XWt�՗�S��g�8���!����D]|d���2�a^z-TP)^@R�#4�F��X�`��>D�_1˯N�.�5S@��Ot��=Z6�����a# ^��x��#-�	2�����Q�=M֋���>{�����@��"�W�W		�r��N`!�*�@,%�E���B�!�X8w��0V!�B6 6�H"k�$�ZG{ь��!��������������d<�5��- ���f�P�v[�sH ~�ӛ��<�枲$�������K��������SI^]ήfZ�N�0��g����o�$|�Ź0fpan�0�\�h�\�?���֚N�m�_4��&�t��m���j��:��]�Jt9��g,�������z�,3xt�u����{    �_�	�#���9@��	6��[z����3s^'ˇ�m5J�k7[�͡��k77��;]~��2v��K�{�?�O�����^ͮr^k�l��fI�ד;��܁��O�`T�7S��+�a�ܲ��<��l��'��^<@������f�W�Ҵ�N+��P�I%'��5O�!��̚,cA:E,@S��0���$J���S���;�㚤�9'�>>�k�{a����fw�:O2a���E�x�&,*^�:6Ӣ>j�0�~K��^�z�����������%�, *T�ADDv����>g�ɫ�q����MDT���hQ�䈇�-�>9A�gT���:ҳ�@�s������
���gW:��1�Xx�Q���� ��V�r��7�j�N��R������Iȩ�W ��&D{�R�̝��2)Z�S��l�6��2�&n���<>l����L8;��z��_����ӵ����Y��'�i��z{��P��L�v`�Y��9B"��?K��t݉Hf��2�����`�C~��enr/�l��*{p�\��(����+x�m���`yW���o($�Q��x�\���D8��.�����E%� x�RK��(���}y�v���j��T��e/�6����2^hºJ���a��K'��A�#��c���w����tS(<�>	=/���p@�&�6�AI,�zi�-`d"�g\e���P������������Ĺs1�����r��I��S�"�� ��uŅHB����� G��5���հi�RF�ʡT����~�_/7�Μ��?�i�F���� �f��р�YԹ��*��3;`~o��S�i� ���B�o�~K*k�����YuIb���Mʘ�����o�p�E�C�:�V��A:�~��e+��l�k\{��B@A&*������;=��t����F�&��u�����4��+�W�I��7�Z��#ֱ���ư��t�С1�Ӊ@:���������������bd��� #�vϛ�߇���H!�X������b��3�-}	�m}Uޫ�t�=�F���:yu��O�*�G������Ob�MzNH����MK�G�q~��fIt����>����兗� ǚO)����H6�:>ع9T�l�t�\�AB8�+����q��qhQ&#���m�%M�Fq�*�������f��0*2��d�@�<y�iZp4�΄�yį�E�Y0���{Ad3�����)�C�,�a��;��D�j�E�A5���bp����}ũ�MK�-�]d�EN��E�ӛ�I4K�I�^[y_�E�77��	��d�{����� a� ��X�bc�,O��2������jR$n��>[�7��$�2	�&^E�˻d�N��Ҽ�qv��P��C��!�tR\f���,����c��]�������;6��D���X�6�#��4�zu�CԐ�ʧ��(���2e�h�Zj$[^�ӠzT��а����}1K� �*Q:�,6�����O�un���v�,~#�1�����T���,��׹ �sҺ ���sl�ZLF�d���dG�O�Fpz/��lr��LL��,�,�S������l鏰{�J��ip�i�.n�G�7;�7������W`��L"�r��k�S�Zq�b��ԧ�^|���L�r�ɔ��j��T�L���=�[z9�C�CDt�j��bn':���$��;�����tyzVo��&�����|<��U�� ��xe�U&�H9�G��2���MoP�7����F�kWٳ�r�-��P+V@+�0���.
��j�sƖ�\o�zM��S�Cj���U�RT���r��|L�]s�4��5�P��S=5���9_HМ��/�$~E���%�U(o���� ��\J��� �K=!��K��0������i���C���f��l��&�� ڧl����s�������΁ƞ˗*���L�6��#�	d�%�CQ1�GG�V��O �*:�{�B\�,�_�����ϻ�B���I� #2�Lo���q(��@	���#VS=o��t$`�� ��U�-�-N*�����U^U����ِ��A;��ʑ��|�s���W��p�l���2�>ċ��=�.��@�������j��,�e�BY{�_�� +2��M���6���1�j�)�2���쉶h��>��2Pqcf� S
H��j눆ح;�*� �����h���k8��4��E��_/7�$�o C*�'ԋ�'��z{�y�˒N�+c�����[k�l�_�ս�۳��B9�����B������`f��Բ���{��Ihk����@���d�˫��$~��L��K��y>�İɗ�/�]&머��qÃ�1 �<_��h۩�uq|u����2u���m������y�~�&-%�z+����S�cv~uv<;:�O�N�"���/��G/@A��u�Թ�+���d�u]m���l=2����4�gEM#P�g���������d��������,*���/b}q��h�՗~�oJj=>��Ġ�x��ƩnP�}i�b�Jy���y�%�]ϯ>�]���|;������C���2�<ϊ�(;z�W*�.ƣ�w��W5=�	�e��U��7�:yL����e��v<*�����l
M����P�R��U�뻷W��0�:�t�~�,&g�2?凱���Q~!*.�P?4����h-��~h���Q�M>/̔��laW82bϰ�L~%*�:j~����59���Q�,#���L8~�8�&����:����8�:��Q��j�={}g�����I�\&w��x�
���Ø�kQq-*��+L�����`���h�)�{|��+ŝ�Y�Y�G��Rυ��p���\��V$�a[N�k�" lJ�U �K�%����In^M��j͎�F�M�yȘ�s��.�u���M]&ߣ�M�H�*����Q���������*�����_���_��V}����e�Ze�W_���2Kl[��!E�cȪ�hz$d��1��p���R+����Q�
q���<�b�z�����mr�/����T�D/]mRCpx���P�x	��%8}�A��d��kE����%����$o��A5I�r9�W&L�WPeN
�⮲��y��&�Bu��Sk��5��l]��+c����:��$�����WU��,�%��ۃ�4��l����L�"��W�7��oV���=�.��z��{�����P������W�$@�i��|(*������A�y ��)ڛ'B���
|^zR��.f�,ړ�2k����x��q�q֠J�-"��.	U>i@��� 1��u�r��BF"!�p�ګc� ��]5�۾�����TLm�p�6���	2�vS���9PT�u�`\���~:��·��߃�*P�S�ˌ~َ~/~J�����)(�	��F�N��E��M69��z[�u)���Ȏ��Չou��k��:9���LS,`O�m��/�Ź?{�VŇ�9�,�J��+�`��{p�m�����2�.�?�E"9�I���aU,Z*�}���Qj^�����#�i�]�O2(8��6�����c��K���]��ũ��z{����#�X�G\�����9�~�@�[w�D��^��Т�7��q���V��śU-S�W?6�wZq$_�x�{<�'��nC,}%*�Dŕ}������+�������&�V\8j�� �Ri�}�,Ża�p�pJT���ad����o�F.O��<��>�yu�&^�'�[�Bd'�
��^˨����@�� � �&���"�����vm�=+���!�2�Tp?|Nc{�l�v�p2EВE����BU.W��@٪^�4g�NH�|���y��ADo��,�e�x�,��g!���Cr���drre���j�^�0X�Roū�X�J
�T�?���p��'ޣBo6j�<A��LwzO��gǃ���>�O��V�˨h�ʆ�f�.B�707���}J�S�:�����:u�H��P�St-�����+��jz=R7�-s���9>8�%=A����������[�@o}�m��::��u;�+�    /���f��M���o�S�����O9j��T�t�$��U��#]*���iF�O��<E�ܨ�懶�\*��@^� >S��5K�fYY4z+�?ˇ@���@e���  T[c� n ��#�?�}R�ƃ[Ѣ�-�&��jTF�j�7�:��jIi��Ӝ��yg�Ȟa���\����=��<�Qo8�Ph?����oylq���D�dAL�{�z�������<x��M���,�@k�f�7����hT����1�O���>��������~�����[�\%�E����������7�o�����^o4�˾D�2�K��C�|"�L��{8Xu��PL�c����o�ס�R����x�o �W�eJC����l���?�����З�Na����{���7寿9�]����/?^]���Z~*�<�k-���W��(��~V���U<���_�B������r!����w|?�����_����9��:���y̥�So��<���C3��<�'�{R���L��{�τx҄@��6HYy�f6���r�=���&�Y���}�ڎF��&��l
Q>֞��FF0a�&�OL���Aj�0�Lb&�~��mn"��^�/��0a0*�2[��@L�2�l98����3[�4[��̖ʃ�0[��-�̖�l�^%˥�4�Q��&��wl�����=L�O	SS�[�3��9����{�ϴyҴ�/1mj��icΕ��iS���l������;9J'�vN�p>����|���{��cλr����Q=��9�����G��5��[�ʕ���������w�&���zKw?>��i��Q1���^M!�w҉��b������OZ��K���Ǩa�p3]�7]>ln��i��~ŝ.������ZT9�]3�𛆹��̘'��3��Ij�4�L�M����1��r�⹭��َ��q�gd�����=&h�C�1�����3��4�ċ�����a:I3���N�ǧX�:9��ѓiv�}����l�L��ޯ�m��*z�͛>c����^�i&�i���3�v~z�M4q��nO���@QڄH� )���sNkK�KBk�Xk�g��/�L�Y�/�Hc��0����b1�]8y�QM��'LP���)�X�\�Qm�!)����c������I���U���q;�2�V�+ �� zq����\�q.G�9J;��F��s�.稃���s0}��8g�!�^>�;�:�8��p�#�C¹�|�w0c�1p.D:�\D��s�^>��6��)O�9�#�sq������{ȟ�t��.�X����p�/�n�7��q�.�p����@����k�<� �"Q��9�_�{ݰg������^|��=����nu��
���*�V�]۪Dx��O`��?�٦�����g��J�����v'n�s��	�We�*�Q�w ��8D|�|a���?��`�W��*�q{(`GO
�n�S�Ӂ�'���U��[��:}R@w�yjԩ@�W��*�k���s]<)��P)N:ȟ�*V�^�lE��	�*}R@w+�*=���Yzͳ�~.��'t����@W�*�k���s�Y�ࢀ�@?� �b� ��r��&"=�;��*�bC}|�����5b��
'�+�%~y�o(�u��_i�/�_�0�]�,�+"~���������]�K@�$v��į���©P^~Ijů�_PIc�e���g4�>�i���a�IcBe�La|N��Ӛ��	�1(��1_����0	�\=)+�U'�H�!�8�0
�O�l�P�q��aJ�>��}��b�PI���y{���هl��孁������j��������~�6��6����}�&kz��e���
|��]��N?��_���W˧��w���Ǹ�7�:�:K�S�i�i'�i�=�#Q��1��N�'h��H{�O;J�8~��1�f��j@|��<�e�\ұ���LS����4{��|�(�C��������a���qy�F=��2���.�N��w@�8\ӝ6\��6��A�����C��&�q�e���.��4喈F���R��d�U�%��� �/�n�8+2���b1�N�OY@=&�z\�u�@Ty�}����q�x�JK�y�ژ����+��>?P���MP"%�pT|9�NX�S�Wt�ն'B��\�n��bX%���R% �\�"!�'��gk�v�Q�F'�]�0�W������_5L�9FAᦥ����v}��fg�"C��<�"����y��$�Lp��Q���0 z�^�pS/$Oj�V����$�!�� �S�����ݿ�|�P7/*�L/΋��:M/��'B9 �v�p�} oU�[o�E�A<��9�cg�g�'+S�����3<�8g�#��>��iު�����<-��-V�Ƴ��������������*�_^
�߽4/^*���f�ݮ��~�3�Ŗ`�v��A�.s� �H��F�����t � ��۩�=Lz����m�Grl��`����O�]���pS���O9�L��`�� S��*>8��6�k;���;�qw�8%��T�јr��}�m>��O*o:���,�P�� {���{��9�?.�C+��7�Ǉ��7K�\V����3�����/ˍ�/?��q�L�E��_2`����l\ط%�PP��p`_D���6P��w�3Fb*�L��*b?h��c�Y�8�8L�}P�j�>F�!c����:�M�}�,K�'�Ac�M�
��Y���2-C��X7l�_f�˜u��T�.��a�c�6�/3�e���x�X��xˈ�1����2g5e<U��@�e��$ƺAc�\f�˜�.�,�1�1�c�6�/4�u��d�Xt]V�/��TJ��C���q�������d�m��")ڡ\%�r�����ai�yz�Z��&D�+�}cW4e	����[�V3�Y-q�ok�l~H��?���s��Y���x?O�U����4J>�~E$�(&	|�ʢ�������d��ߖ������|��p��.��,��6	�{'�h�cf����\m����d.?�c�a��?ρ��R /���@T�Y)B�]l�����[��ŧ���l�n�?˒��%@[󥒹��Yi�W�<m�)"�&��[�*fRB��]#&��K&ܑ��p����t,���g#%�r'7iNxJQ�ﾄ��i��}��H��%��U*��-���5#DN[�\�p�R��^��rC8?"y�ّ������5������������@9�D`<��/�?��R1M,W��I��M����T�_~��g/��ԧ!f����$^>n�_2�.Kss�{�@B?ZnBC�:�
�TA��[�S/�|άy�D6�����Bϔ�*�=X��'Uh�Y�}�y����A���4�x�O���K�t��ϑ�(�=X�?�:3ܚ.M�x������ŝ��"�=+~ȑ�e��� ������y�	������ꒇ��]nQ^]R4�5��T�Q<�o]�HF
�y��Rv���!wTB�������a�b��m������[����OJ�vP�C]����J��jP�<vb��1�m������g����gep@��a��#b�X����k@��/���s�"�9W�k"}�����v��R�K�������"O�FGYֲ�.����6yb]ZVؿ8/^lH����#���y���.��ceBGK�c��=� v�e�a���ܤ�['�I��c�@ ��/��Q�FCi�q���ߞ�}�ZA�o���oo7��?��{o��?֛O�ՏfëfS?ژ�׏����9k5���Vh�֓�����X���/�݂�v��뿿��~���f�η��oֿ/>��?� �_	��=�[�V�����֫u>P��O��f��Ϳ_<��П�j9����5i"�$K��XK��J�W,�]�$Wm-l��ȳ���<K��_� TSG�O���:��íS����Eq�*�H�`���/.���e_����z�}X��������T���u%d�B�>=     ���	�����|ڍ5l�UY�:��$U�j��j�������o9&�^ZH^������^߷f���Ňu�B�yM��/�/ZV2&A�*)éz�ɃU�S.8�*��NYѸ)	���ռx��n�zҺY�߭���Z��ޖa$dǪ��<Ց��� 0o#�yU�v'�4���C�?���r�)!���#���e3�����j�SV���þ߷H�Y1E򜋝��q����61\F�!��S���%s��a��^�_�1�������=�-?��D�f�͍̫�����y�ꨧ���8I�B"//�ri`Od]쉱�v�T��阿+	��a_��[�r+�������%q�n��wqy֟_2�1?K$�DovU�2��i`�����܁{��ΰ�u��S���駳�q��,9���0;p���q�h-<v�p'(*�y� s�H��!"?.�νS�������)j㇌��~�v� ?�E��0_���q	�pZ�B燳BQ��?��{�r��Al~��[�-O�ޭW�W��.{X��)P\1���R5\jCO�t��,�#Hۄ��8c]u�&�Y��=1`��� (��Z��"�q�=��C�V��H�K �ş�8a`�g&�m�� $�r�&�.��	����L��o"?.�O��*�~�G� �DݵPR�D
\�V
���^ �s �	��M(9@#.��@��8`/��Xvg($�d�Pr�E\�T�ioi�F� xd�1x�q���^�����J��7�/W��q�T���mӯ�w�ϋ�����<���V@r�����|p�l��lr�'+M�f5ll�|Y �
U��e)�����e1���g/򧽿_7��~% v������˷Ɯ���uW�^!�G��]��sCEH� �$���a�����K����a=���}���"'Mp�\V�֯�w�ϋ���^m��R��8�B:x�B:��&�$�׀� p�{%m8�ő�������=�����9'쿭Y��b��?� ��R�}��[,4�_<�_��[��I�.,��?�?�[#����>7�מ<W	ɕĈH�O+�Ӧ�Q��?�a�bQ'�� /ݶ�S|"�L��z|��3���E�v�
��?ӽDeq��Y��ߜ��ۛ��.G����UVr;�o7�g�{�dV�pa_��(�_mQ`��T�J���'��S���T�����FA��8�����x�.��V�eZ�Bx��e<���sI���y��;ۗeMx���$���s_,��,>d{��#��,�+�I�pqrů(A�>���g�^3�}Ūp{ �� ��R��5���fo^����e�q ����~(�@�%���_�??��bӈ>����rx�3��J�PW�C�i��PvqV� u�aU)���-�
0�����q��}�y��m�y���{e��]���k%ʿ�,����OyyRz�&N�UQQ�UQԁP^+]^q� ��OD��9���K�ʙ�M�^�Һ{���i��{8W��8W�A�uRoŹ�sg:63��qqʭ2;ӯ�K�?�s�?C)?
L�������y�ҘhFy;=�(��_]s����Ј����a�4�C����]��؝p݆���t�J�6�4�����K߇w����经q�0�f�^��������1�?�muO�3�ؓp��±�T7�(�?Q"��N"�H'��38��Y�~y�rg����I=K��-�i`Ȼ��w�Yn���J�����@�Ï�֋�ܻ����� �b��^�7����%�3�  �*���כl�ʫ�����{�}��?��6. \��%��̜X��
��Kƃ2�D��r<�g���m]��a���Y͌��0O�Ʒ��S%�����3C�-g#�6�&d��S�����)��x|���M*��Wv:^A�T�
��M~"!5\����� \w/͋�J��-�������W�v��6y�v��3��{8�Mf:������&�����h�نM�Ձ�s+k��fC��@�a^��x#������[_��w��߯��~�c1�ѧ
��7׻KJ���ַ��gf1N��2��s�W�&B]a���=@����N�O(�Әt�s`��j�G��(PJ�?,>妪׋��v�|_4���6���W �&J����&B�����(ML�i?.Jx�8����vt_3�e�Ɠ�KB�!N�ڰ@(�{�nu`
�.:�V>�3�������p�d�[GTĒˉao�=:#�8�|�� @�Z&Hdƥ3��N��b��s�D�0�3h33~X�ޮ���p<	z\#�Rھ�������aG�������:��9����9Av�f_�e�Y�����������+[�/Vw�6�AvWo F�z����'R@��jog[�N��x}��R�Z#G83�l���_v�<h��+5yt�����R\�6�|��s��m�ӽ�<��t9#]D~i|9���<���{,;ޘ�$���dJ��aT� ���䧵�85=r�D���"2�[N��I�H��k�3�E������<�T�@i���|ʶ�!gf�J8KeC��"�E�4"C�$�������3N�Q6���a�j�i�qV~ V{L�1�BϏ�>��G7Ñ�g��dq�Z���q�?�� �%C��Y���� X��4����l**�<���
?k,V��	gdML��l��J��<)�.��$��3N�J�^��}wh>�x�:�~�
#c>���� �H�ܐ!�4 l���r�Y|Y�Y쬳��cw�i=o:�qk��]{����`~�U��X	�����u�������ϱ;M���n�� �5��O~�O��8?�〨�/�;~��^�E��u	Ș.�g�8���>ϐ�������<�T��:�d�۸|�y����&E�T'�C�h48��dG��bx����?>g1�83=d/NP*r�B�G�������q�S�\��j����>�Dv����(�dJ�l
VBdG�����%;*�8;�Ѐ����he8'7pBi�5p��m��h�2����3N��2 ������M��K.ͯQG�j�h^�=�j�S-��Xx��ܿ_o֏>F2�u�h�\�t@���G7yq�S)��ZJ�O?޼z�v��]��i�]�.׫l[PA���Ρ�6/�/�l������F��]���:�V���֟��O����f.�s.K%.h׋�]'�G/��3N�܃�[?~Zl򶱑�I:Qs�	<%�-��48z��h �l�-�}q�i�^�\��sA	��r���q�s������3N��.`�u��@��^��BYrN�0e�3�3>p"0��)x/nv/T����q*��{[��D���T�;d'��T��hv/T�<d?zƩ��lu/�[~^l#;���P���<��2O�f�B��Mv=�T� ���~X����O��S��Y)"��\%����f���1�(�x����lu&�����b�F�����p{N���r�٣P}t3?zƩXl�(,�u����y�xz��$�4{��^2��Si��Y	��ۗ����]�}�ݕ�����*��^aV��X9�~h0Z�1Ev�b	XK��Z���m��}W�u��z��<�I�S�帩
S��i6�T�T���q�e��i�XM���w�e���HsӠ�V���*J���V�F�f�B����ZY���?�� ��Z�����H�3҂'N�)�(n"C\-��
�i��@�Z ��@�v���M$�9H�l$�'o�\to�لN��dI�O�il׏z�2��= V�A	x&�E۱���Z�N<���F ��i|��w6s�D�3�yz:��@Jg�����"7�|\��7�>ǭv��?���y�����o��l��g��[�kB������;;7��(��	?�rvr��	��r�F9�����n�b�u��z���}�R��z~����֋[�����&�@mȠ�88�Mw    M�%H%�(�	aBA���{p���^˸`(�R����T��2S$������D�H�W4{�s$�$�r-n"]R�]��*H-�7�=��,İ<��g/^�_!�ʛ�?f��پ����2.+7W�H̟���b��V!��|w�ɕ��ͧl�$���<��.y/Uɕ�oJ��J�]�?xz�Vtp�Vt�ڊn���������B��>��#=:���W)�^�\��\&�K��l�Ս�
�э.�h���)��`w�tԯΘn�7�8��@Q[b�}�جf�A��{����{��G��>���W7_�qOU�(��'	��U4�^D*��Ay
&?��bm6�Z	�F�L/D��$�^ܼ�Q2��o^���N���]�e��"���h/����W�/t|���������6�-�d��l~���!��=R��3�{B�iy�pSo}KܚX���W���~�u�%����OY�zX�xe��<SpVд�"�a"��4�T�*A��_����~���&��ta�DNG�UP�	�4�0�p�Th�d�(i�?�T4��n��H�K�	}*4i2e4���L��i�#M.�&�Ф���A1M��A��&"���h"ҧB���%M�g��&`���Miri4!O�&M�%���h6��4Q�&�F�Th�d1h§�	=�p���'���Tx�v���:	O(�!]X�¯��HS��6[<���1��U���宀3�.iX���%iXg�ݓ�)�v�l�����ћ8�]�T�&�I�t�QøS:0:a-�m�? ���4�V��<(�� ��lo( ".��I��Yje�8��\`�΅�$2����'�0d� 9��J`ͮ��8R��(�Z���(`�<#|�q��%b,|�xR�0�փ@'���tv�}Hۺ��X߽�����O8�-��pc%pQ�ײ��	\U%�N�F�����{e0�V`drQ�\2�v�Pq�M�sna$E�o��ǀ��C���f�y�А�x�����="�˟(ӆ鑻���{�&F�Yň]!$�(�����O��{p�UYg-��h��$�#���4�5��,2���m7�g�)�2My�x�0R�OV��e���><P���Ρ���/��o
*�M��oH�,��x<��q{���17����Ɔ�=��J��֝��*���-?|�?��}�,n�46uo��?֛O�W�����<�C,}4do�m{��K�AL�}w`���L�ܴ��Xf��/����B��`T��_R�4a܆��
�ڰKv-D΋]������M��Β�VЅ��C�D��5PL��>C^�J?a5�.����n�j�"�q��ƙ�޾|��b~�m�ۏ�r� <�`<\p,_�]������9�U�6�5�J܆g�f�=�6�c)C�k	���s#l(n���L�(Q�/ԛȂIY�<?RSo4���n�P'@���R�,��F�����T�|��&�c�b���g��\�b�w��|�μ��yq�)%���� ��h޻����r}�}�Js���Dm��bZfK:��R"KU*X~�Թ�V�:r<u�}���ts��h����MU':
S"�J��2�
T
I,���(��`dD��߃�&�qy���o�ť�Y�;#�삣X�qҫ|׾3c��yR�����[�XV�y�Yh����a�"�C���
H���Q$CQ�^�:�qSֻ~���<}�?����lQ"����v��2���ζf�[����j��1�����������vv��c���1}�ß����\��ů��_�~u~�U��W�/h�z��"[����c�:��Ձ�B��?�ϻ'��>���3i�JΊLý�J[o4>Ԯ���5G���-����I������u�%�APl���Zy �^����]��{�O�(R͎�T����/΋���fW�\Q.���a�D�'5׻�A0G�E��:�[�n��˻/V������|��`/΋����Q�X<�A� Nd��٧E
w������b5��������v�w�l�Y}� xQ�0u�� �(?}�T���e��w�[����KG�O���ֿ����I��z^-4
g�o?d����_ �ߘ�o�呍���b�]����g�k��l��ٍ��s;��I!���� r��mQm��)߶I�YyDg��:?�QSN�4`�\��|S�݈�@0?\-�>@�,#rt�O�E=8$���������m;Ӯ7�@�t���g���4S����������B�@o��_P���������gc��ah��d6)5��ٕ�T��˔_��A3'W��xC���4!DP��$I��
'�H�4D)S�� @���N���I�/W�$���������|*G���?p����dI t���\=ܛ��`���&�q!J���W��o�׿g��b�hXO���������b�'�}�,�|\no?f��V�Gg��d:>֔���ZSN%��%E��K�m��Hӣ��	�=��4AX��$
�+��?�PA��9�qB1�v�5:�I*���c���n�䨨,<fɶ��SX�?f�ϋ�j�i�A�}�Bd�]�]��O��q����˾�Ɇ}���4���S�D�R�� ��T�x7�9�J�b��1�,���#9-��2ǜ7���d�L����rko��}�dn;x�ӄc��#=t��4}��&� ��
�T��	�1�������=_��އ.�-<��[�Vn�5��w&�w���AD�3I��:p��X��;���)qrRo�F�$n�duz?j�����ӳ��3�,%�t�g����k�+dCz8����IX����d~�~�@��]y�*?�w��gq�g�'X]���Fz^=Q	B=��_��StX>9cKK�Y�g�Qk���Y���	����3��3;�9z��b}�J%[�aw|yM����ͩ=[yB#�冰[����(�/߽���$݋��\!���+.ƽ|ܬ�d���]��dۇ���]n�S��1;���p�M�J#b�p�&�3ML�4�����Bt�<����S�̻m��y>��7!d'̋���1�����>0�4M��:��ca\Bu¼����D�K�o2A���u�ˑ0/�� ��+�4ԑ3��}���5#c���mOP wR�'n����F�[���Yk��~��]���ݙو:JggF����2�k���|{��6gR^ʚ��t� qu%����6���s�ܧC�뢁j�uɝ	V��T��TU*�(5?�<.���<0���`��� *Ƕ���
q�?u�;Z��(=e7�'ծ@Z;�a���#�� ������0���E���k��M�c��qJ�Ey�f;(�%�)�����wY#�h� �8Ui�|��˖��a �ZVM>f�7JCs��xq�[!��jOs�U���XUi+j��J���oY>Q��d�<2m__d�����l�):��,rxZW⭯Rs�Jj}�N�Ay"��y��
uH_)�	B�S�Fc�;��_�GnF�ь������@�.�g�W��?F�R`^�����6f�z���г(��l�;�TZ��-/��X�������h����SЭ��s��]j깻�?Dⴈu�ҐV6��#"A��L�ɆÍ?$R�4:]�~L�O�c�~�����ِ�L�~;2)0���Б	��LA�`�~�M���6'�`�x������n���Ǉ|�E��E;���w���������F���c{c�8J����������A󢵞QZ�v�ձ �+F�w(���Ƿg�7������s�Eش\�HF�~���HT �[b����jYV��^���7�~�j����IDה&H�<���\�L�TW�8!2:q"R��H�!̯�5�DJJ�P!�p�t���2�r[�P��xC`b�^�|ɿ���b���q����4;�=�]dR%���������VqD���3��Yq鬸�XX�aa�҈6�?���D�� {`jkޡ�i��5��j�T���T�pCc�2X��s'�͈�bE�/�?i����v�S*��fm9Kɡ���;��9�߾��+�K{�    ![�xy[&�Ͷ���6��Oq�E.�����?�7c�ٴ �������+x��/�u��;�$��~m~�_-��|��~?ĕ5�:Y!��J�ۗ����y��V\���gww��n�f��?��y���Op�.���^��dg���΀��M+N1���ZE\�k���ki�Yq=��/N	������a��)��qj�!��2�����L�]K�l��˶fG�$.C��M��p0�a{k��> �AZ ^\��4)����o����n�e�!{���Q^+�T��_��ez���
;yBh�=��7��8u���g� N�^�� ?�k�x��j���+[~�I~�i��w�{�L��P�ڴ���8e�? ?�֟����?g;�U�.*���r��w��t$�HTK�r+IeۯXI*�'"�Vg+V?�1;��C4��P'�o��\�ž�q`�Z��u��� ��<HW�w=�w=����� j��q,�ɸY�_YO���q* ߢ�Q��`�&J} �i
 ����=�q	�} �"�C�x[0�q��N���sx�8�
 ��@G��q>��ĝ
>�&��G�У��I�xHܲy�Y��儸ٴٻ��8���8��tp�R������85;�"�k0�A�E�L�6��� >؜�<TP�;!nZn��v�`��ڋH݅���LǺo^F�y�������~�3ɼ81s�����4bTj�߮��C���?�u��Fz��ܸHR�6Ey�\_Fy�&M4���l�C� l��{�:%#ujۏ;���uq#n`���`��P��	P�91�B�j}E�1D��&\c���_k������Wy�x�����B�y��QErE־x�#�=8y�&��%���:X@mB�6���!k�7���A�9����i�讨�]��z�Z�O>��#�I��A�Z�\t�r�8�B$�J�@| ���J�l�^1�m��[���{"�+N����� _��d��*�T-��n��s}�碝���Ŕs;�$9�1�P��'jw�GH �'�����ȃ�>�� i\�?�,�_��=���h!f!�k�\�F(MP�Qؖ�܆s��ߎu<�����	*K�U��̋�ZB��V�o�F����Fz?D&��(�Ę�tnĄ�s��8�Ǵ�	?gqA�$q癫zO�0	�t8D���K��[J�>��z.Ջ����f�\������ȀӲ�(j�J�fU��M0��:��ۋ�3���Iu=��^��Pm�y��=��6·�+���Vrc����R�/�̎^���R���A���RYzF�jh�f>5�>�P�!��e*xڤ�V�ֆ�ȗ�Q��/ِ�<�A����a9|N˄���E���_�P��傉+�ĭ�5�:�@\�B�n��`+��a�d+�l='[E�2 nJ��{a�z�rI�vv��
 @��@�������b�d#�l<'Y�k<��2�&i�rk%*�v"�T���ܬ�4�:�@[b��y��љJ@.&���<2��L%�����3'��W�L�G�U�HUs��f�1��v�VG�[_`nus(�3"�)�#S�:�[��G�H�_��f����K�+<ai����)�l�w/�L �������_ow�Z�m�yz��M���V%���0�a~��H��,�N���I�:�N��a��B��(�Xʔp&�Q�0M��[�K�E"u/��paD��`�*37�W���-*�S%��O�n`��zʌ#�ڡ��W�����7�.����vF���ጾ���hJ�4m9�ǖ7v�M
�t�+�[�4�V������!r��N��P�
v�Uo����W����l���1�XP����T/ �n`ݖjL����A�pFꆳo����M�y��t��W�w���y�s��Q���{1eI�ꘔ�����n�gZ�/R�~�U�G�we�J$�_�`z|d@\��LqE6F\o��{�F��W�J�����-W�|��:�S��7���T7��:x�����O�DU�ܑI;Jb��~�-VN:�����d]j����G��A.*��
;�8*�cu$��
bV���:�����F
���˾7�qI����y�'M���%Vt�r�pS~C���`�%q�pCf\�/�O��3Zi�,�R"&�J3��H݄�*[o>,c r���YBV,$����j*�ORc�T�Z"�i{(
^8Z��Ï`	C�$Ɗ��DR�|���	�dLuH��ể�����ٓ1`f�u3�ww������/���V#'�Y��
�;x��]thS�[J�����ʺ��!T�5�z^#Z��F�K"=�RG&� 9�T��S��ECt/�A��B���b(�F��9�SqfQS]�6��*3�D�G��=:߭���� ��MB$��AR���A�}^���I˴C�$�Dy�Й(�X��wutJB�ܙ���&��0U�S��X������cC����E*,h��$m�B0�������j����:4vvg߃).Zw�|�?���OFA����HT�jԐ���+�YKi��G^���#l�n�ިR�B�ꩁ�{h�����!P����P�%ͿҐ�q�N뷬E~�@�9m(�T���Kex����Q4�����C+FPpѺ���b��H$�y3��_��vY:�Ѵ��Ay�Q��Z��HA�cQ��]��`�#'Jl��u���v����������*��ܹR8�=�PԷn uV��K!B�b�7�)?cTi��Tc#Y�^*��ո�i��+��N�d�au��1=��Fr���(��ɉ�Yq;��Q%4�P���$Ն�Lb�ZsM^Ba��L�V7���^~X�ʣ�H��P�rء�6em�R����:eC�T�l͸���`Et��
��0�:D�amAǽ_��J�\�[X���i���Ȓ.I�4A=	�C�歭��4Ǜ֔��T�urB>�k���
��P�:H����h�H��µ@V	vV�� #�6��<|$�{��u؛vRBzPpw���ԫ�S�^�6��G=`����XG�Iڇr��au����v��ߗ/��>Wj���
y\{ŭ귆xA:�J�×��K�^�i&��0ձ)e}(Js銯�!dX� c2(:9�e�J�
�fP�	:��sĝڨԸsZ��N�(��HZF1i�C�2nc@{�2�܄�2i3i�������꾭���Cn��q����!q�ӥ5���6guQ����
 ��{��*�ߌ7lt�H{��:���_���ՍUo�?f���]��T̀{"��rAέQ��׺D0�H���ި�n��6�:(��h��kg}�`&V�0��ٕAs��x�o��:��B����qb��*��X�ud0$���ңR���T�g�Q��Dϻӥ���I�ʸ��ARP$9�>\A��
����z�)���V9�o��j鼾UY�K o�#S�Ҫ���w�� ֻ�����u��$��Η��,�$x[�Jkr~{��)Nw=��Fxc防�Rml���Cr�'��9�kx�_���`�#G�BT��h��>�A��X�C�i;4������z�!��8vFm����i����M�ַ��1�B~�����8dW��hN���V�QL l4�n�)��/����P�"Yϕ~��x��Q�l�Ñj:����>;�:-�m�jck��?A���(�&q�����$��S�ng�P�8���)������a�,νrʶ�|��)�:5ZWN������p�\��+bu$aE�����8uLO�y9X#x�qD���>{nS�4C�;����uzAl�ST8X>�`u�ƥ$8/x�y��������v������ �Re�%��W�[R����o�xxCɚ���~�:|�5��rp+�����`^,&uv汶�v摶�S�`K��Ĉ�P��:�@��h����K0��q��M�aS���I�%����L{ʢm?��ѝ��e��=��7�)�	��_l��(�(6�Z��-�4u�ɞo1<3ߺԶ���ֻx��o�KE%�v̨��o���LYϢ:^
�|C&�x/��eE�-+?e�������e���JT�    :�4Mdϣ��J�p/y�)j���kȂ�~ �,
(Q:d�)��"�֗#&�(��LL�W�V��@�3
�pV6T��5���@�:n�0��,v�iڽ�iw���W�of�>d��G���
Hx��>d����f�e�lu�\�_���B,՗��o7����CS����%�v�I��8���~�[�6������_Be?d��_�_뱒�=W�EJ�-RŜj�-��z�6�ff�O�8q���V��V ��f���b¸��v�"L�8���ڈ��O��h�$�{�4������d�m�ŭ�y�#z���$�k=a��C-�P�*�n��5�#\��r���?!| ��[��e����>�"������n�q*����e���>���6�����3���e�<�f�FF�6����$c����0�Լ�l�~����U��bnj_J��5�hh�Usc�z<��n�W� �&��~�A?P�+q� %������P�q�)�&�_S�zR6w�5�
��i7e�	>�SՏ�\p�\`�k�Z0p�Pە�`�u�U���P������5)��˄�S���y"�(��aA޷;���pU��k<��_�"��zL��Ҵ+k�~%��+�����ck;��l��}uX�[ۼ�@��gݗ�:�^�nڲ�`nu������tCr+�����uW�?���܊6j�,��3���/�yD���Ъ��^Uh���8�R�TlzQF6v�u&:xM��Uǫ�)#d�.�RZ=�R�����JR��ɺlG�����4M���Mf��5�<5w�TB%yr���lp~�p@��V6ֆ�+�IG܉���u/؎��}�U��E�{���A�E�݆X_��XL���v�
L���&�x��2�-��bN��`�u��?���Eot|T	�@G�Vwi�~�.ݦ(h�Zod��H���;�VW���|c�J09\���<�u��4�������ښ�ް���̎F� ����Tx`�=�}��6�wꚐ`a�u�ϋm>�f�md���AU�:��qk�8m)i�d��Le�C7��(=$��d��d�1.�g��h[�zϷ���3�[T����ӳ�jSma<4����wU��R#��T��uI֭K?/����v� �ڿx�]�I�F��^es.\�_ڝI�q6hj��T4���pg�瑬;�JbF�Q �d��(�d:��Pҳ+�%3��)ʇ�((S����f�Qr������ܟ_�}�W�2t��N�n��p��nk|���m%X�dݺUN{1z8��G���~�����?�鯡�Vu`�b?��^ϋx����*�V������,W������S͛�$���l��?l_>�����J��������6���]��d[=}���ϼЁ�d~]I���3��Yq鬸�`*k���Л�)rV2�=�d�������Ѡv�#:�����|�@#��Z��Kz�A/����1g�<���V�(�'��GkQ�m�=�����-���}�\@>�g�1_a���R
LO�bzz���퍒_u���7��=�˾l���Cv���C�������������J
Oş�?Wn
�W�/�E���o�hP�O�Ph'ۓ�����uz�*�M�:�Cd� V�qYu(=�������#50��6q�߽��Y����ܮ5�g�Y���Kΰ%gP3Dg/D^�����ܼ@�ß?b��6f΂�V�e�C��t��!̠e��u#�d����f�����`i+�N'I�B�݁�,�k���L��jv�d��M� �\b���4��I��ׂ(� �c[�c�����0jn���o^q�����(����ab��Å��ZX���iz�@R�b@���)r��"��|�#�/ �$����Y��L�=!?"D��A���'S��Kj��&�g"%i�LO0?;����:�O�ʉ������	�n���No��`&8���	~�`F��ac���C��&�k�9[�޼z���U��]0�?��J ���]�������Xo>���D�F�җ-ؚ	���mޡ0��6���nq��tWs���+͑\�}q�0��.�����x����/o>ez��d��aENN�`J�4�<���o�Pq��!�H��4�R^Q����ֽ(I���=�Sڋ�v�n~���[e�3�&�,@�tS�j�tV+VI���#�ʩ��t���Ta��3jgev3N)n�&�����Uwf>�I�R�PN� ?&gD�)�\�-�#�B9�D���B�3����/ԟ�C����c�2�jy�b���z������q�%�3��faw��M���u����s����߭����ӱ�kx?�}�X��=
�-�z9�W�� �B�',��O1,D����^br~�4+�;��~!Z��P���E��y��4"?D�;%�KD>�!�#!_ �K�O7Ͽe\��ofo�;���/����Y���{���c|d�c})��ގ*Ϗ��=��S�K��V'���}�^I?�̖�d�c�Ӹ���d��j���Ot8�4����F�9:*�џ/W��~����f������z�ǀ�(�E���\���_�e�t�5�\]c=K�v���������#ޡ�'KR�r��Z$����!k%*��B��'?����!�*T��T�\������/�e����6��@�������\z�&�y�<���x��4���,;�켰h�x�v<[�a�yʎE~.��G�M �`��b��8��X:�᠘��;��I:��YPL"�CBq[|v#'��d(ƀblA1�(	�mz��Q��(擡� ���*�8$�ş�ĉb5�Aƴ�b�#�B1m����N�8œ�S�,(f�!���)~v;}ߔM�b?q)~�m��0�>�G��V�r�oP_��_��/ϋ��=��8�H]]c���7(7>p������S�i�^���X�ߥ�b��i�_$�#��1N���;�A�&HHv��sE��V��ȸC*�*���7�����������9v�{l:�>�,!�B�/�#*�߳W��������l���/p%�0�����$#�75Ҵ=ɨ���������1x�@���!\+�0W��=US�hZ�
�K��`X6`$N,�b�F�N�U�cu��PV��=�Xm���U���U����5C4z֦�N�P��!jH��Uj!I�b�G�N�U5XSA�V�ST��r��Ӱ
� A]�*"V=`u�3>��T �y�|��Ӱ
��]�*#V}�����:�>�EWr���GHW���VI���+��NAO?��Vu2Z)94��}wH�}����.�쉸o�m�x,p��bo֏�g�z4_�!�[��Y����9<������&ט�*��ŉ�ur��~�;N.�������0�1�4����67n��:m)�Cq��P�Cqh����V���y*�+�U�u�cq��ñ���3�^F�����@��L\�(��`
'�É���D�A�7>`�>G��a8�p��TD���x�)u��˖\�A0�sp��\�T�Ӡ%0u�����)��G�9LU�i�j��:��UK�� ���7�p��"�Ic���@u�|�#GQ2X(�Tè�UHu��k4c �T(��I�AjС�3%��c)�hq*G*���q*�h��45v8�� L���eTHu�Rx�
D)�M�B$FT�K�>��n�BƎ�@��v]�\��M��)A��G�ujTGR*#e��J��*Uhc�������������&h���`�Y1�f�ژ�� �H�`N�����H�`�`1���ژ���t0h}$s0����0*A;F.=����6�Ƥ���,�GNs*[G�|zJ��o�����Vh͒����W*&��:E.e�*>��i����U�6ТڐY� �S�:�d��4Ђ���WhcZ����F|de1����Bgd��,��k_m���YA�
���,�T��l�d��,2��`m���˼8�&>��1�"�������hb��&F�&�1��ŘS;�ƒ1T1�תּ���y��`Y���ŸS�O`�v]��.�{�b$�ba���a�;��c{7C㠌    ����ʘ��ƈi���!S#chc�1�[#Q;A���x��g�:F�P�8�c��:F�:��>X�>�1��æ>F���8�c��>F�>���2�C ��4:�B�A!�22/�,�Q�fjdt���F�{kd4jd^`;X$�>D2�3U����qP�xo��F��l�`���P�x��1S%�c�dT2�[%�Q%���*���q�Jv��H�P��d��Jǆ����86r�� yL���r�ʈWx�����S;Jt����>�X�x~������F.�%@}��4��^��>����#��0�G	�����m�W�
6v�n��#��ŐӈWy�u[xu燥#��/�G��5���h�Wwj��E�^����G����`��^�Ya|d���%��]�9B�y�>��T��n� @�}d�]��C�����R�𸐕 qɞWl�|����i`#�\T.�S�Bi���]�Yw
X:��%A�=��ؔ&��E���5��%A�=�.���x΢�vH�Y� wɞrWl�|���vh�5��%A�=/���x���vH�Y�� zɞ�Wl|����o&A��=u/���x���vH�Y�� }ɞ�Wld|~�ȺӼ�nd'A��}�/կ�s}@�C�����K�U�bFO�Y�Rn�k�&�
�/U�_��wֿ.W���]�6kT���.�_l� �?�כ��j�xxX�{��w�}��?/4d9?���!۬��^-�5x1-��^;pм���W7��׊')�W�'˫k�Q"���L�"�L����PBs��:&8;��&�<,E��2���6��j�����������~������~�"� �M�6j�H�����f>����Q3�� 5O�j�c��m��<{���C6��SC�sd�ŲexuHlq*���6�G����h�BB#5.�dxJ�p*����Gj�`�J��f���q�k�9[i��K�%��K�/�����JZ|�Yl��?���Ԝ�����.��+�
z�
�(׈�+.4�w���~W��̸?��ĸ���ie��SΤf8]-r]��S��u4@�M�;C[Eh�m68l�Q
[9eOf���B�'BPU
�?=�Z�����I򕣠{	��/��o��7撌�x�wK�յ��ߥ���{�:�*���;]й���݂���z��@�ӈ�����������s�>� �*5�,"><�W�| ޭ��_c"���6�����T:�	�}X�f?Ϟ�e_6��,���Jt���.?e����a�;�� WG��7�v��ϐ�[-hd��%���V��X"S�0�a�"��+���+���u����$��Ϝ��4����~��%2�X���y�4��,�<�S{_�X�7DA@�R1�&[�[?���m_��.��ڿ8/^qAȇMO�&twlEZ������`��b�MݕDّ�eahDC�1�A=������#�ƙ��ď�QGA=ԓ!����~x^졡�ƙ�GUxq���(���z:�2�>8�7�x�hꮍz���T�E=Գ!�W���~�a{а4Μ�7;�����P�������~xUa��ƙS�2�8��v�@��zQ�'i/��n����&�s�Q/�r�qD}p���M<8�5Μ�7����"��^A=���Ý:�:gN�yu:�uz�����!�������b�ăa���kM��d��{Pg�u�Du6@��g�yu(�ˎ��S��Y4D�%Q���Z�C�E�*�G���
-�QhITh������ćD�:��55Z2�F�@�EC4Z5� q?X�%>DZԡ���Ғ)TZ*-�Ғ�����u|ȴ�]���5�B�E�Ӣ!:-�:mx�^
��jQ���Ge�Pj(�h�RK�R �K�ԇT�:�'6�Z:�V�@�EC�Z�� q?X��>�Z�!��Tk�j-�QkiTk��`����k�;����7�B�Š��!z-�zmx�^���kq�j�G��k1�x�^K�^ ��ԇ^��z�Q�q:�^�A��=���g�,�a�'����;�����(���js���� pWj��"�hiJ=
�A��=Zx�"�����q�w�ж��� ���lx�A�|KC�Q �,�����>�~�dN����� ��b��J#����\q�w�̦TX�S��O"��|���5Ȝ�oi�=
�A~�=���<><��	\��	��F�c ���Jz�9�U|x������-m�G<������iNqD|p�?!1��;�Ƕ�!� ���b+J��"�C�[I��؉�Vz+鯷�4
�!b>dŕ��bӉ%W�+�/�"5� 1?<��;��N��P]I��(�����uW�!vbᕀ�J��E�5Ḋ,�w*,�X{%�����+�Q|���}`�C���+����_��k��Y�%R`'V`	(����p�`C�|�,��:�KA���EX��
"�C�a�;�O��R�a� �D6@�O����i��tX:@�%Q��!�ԭÒ�uX
:,-uؿ��������}�e���t�Xe�����b���~�3��D��z ��2=T���]�����xx�</.*����F��#�C<fc�R�h�tW��^������@��p'����&i|�(U1�UP?1��DXB��M��|q�����i��#4��WJ{�<=@��6���0o�]�4�Al��/�#�����w�	��W�uv�7鮄��Ǚ� �Rޓ��p�'a�g��Ws�'��g@o���#�C��iB̯�1�$��}�q&�?h�T����H�6��o�]M��	@b+U}AQ"�����tW�b��<镥�)"d�;z�$����S��(��]�@�*���gMګ	���L@ �_�G�����N啦���&��Bl�q&�?H����K���' �@ �V�I���D=�b�j,���w�Ab��&E��:�� ʲ���/1��4p�7I�&��4`����_���cgK�<�gz����1�O�r_YO���� A�E�g�M����& :������K�Y�Dz[鎳�If5qN'@9Ȭ����K�Y��y��`֤�0���AK�=��_��z����Bv��&)���f8�����KTRC��Yțޤ��9�`��A-�Z����b�-��X�t$.~t1����xu�,�kJ$��u�0yuMdB����	�\����W$�h�Wך2"%V�#�Ύ~���X����>ztsg+6�Kv��=&A����O���ֿ�5��2���6����A�/΋G��	��H��,Q�x1$h7�����t�{�>��,1��V[퀉���ig싈���r	J�,5��V��}P\9�}B"��~�}���w�&}���>��wƾ���!�*���äo����Y���ا,b?`�Ӑ�7qg	bڷz�p�R�eW�놌}t��,E��ź��r��1��AǺΒ��[�+@�iW��놌}r�+�����XW��+Pg��X7h��
g�b�-� �
��"ƺ!c_��
��+�źt]�Yו1��2�XW8u]�-���κ���n��9�N]W��uA��u]cݐ����u����낮+:�*ƺAc?�Xש�*�.躢�����~����~ws��_�Ү�,�"�ݠᏂx�}f����]�Y�E(��a�?���ryz%����{�[<�?8��e\v�>�-����q�����r�+ݍh{7_�yeg���m�p��'���'�p���+;+����7h�ӐC_��z��{�?����؋h}Æȡ�tʽ�����^�Y�E,��Aß�:_}������,�"C߰�t��}��{�?������c�4�yС�[���B_P}ew�W��7h���C_��+��������o��:�u���[�@�U�U_!~����a�_9e�k� �Wu�}�� !��S����R��*��K����r��.������}e��.�/���(�����    g�i�vL�����S�6�Ο�̆�=Lm��
N��1PL40D`e��L@,R�r��B>RnE����	d IX�$a+j�G�������+we�ޛ�����i�v�ۏ�"����q�S�_����(�l�����#�C���͕��soK�	�UX�Ta;�히��`�t,�T��W8?� +�,l�C���P�t�s唅�W9?��+�.l�C���P�t�s���/��}��������o��8�e�S�_���#��M�⿡�y�(���9K�U��ſ,ŀ�βpC���`�p��q�Ŀ������Yn�{�
�C�|�q�����'���;���#�C����5�\��_���3�g����y�0�:�u��+������6�@���!WA�8szA}ƿ��Y�m��������o�J�'�_�;�M��#B!@���5Ҝ����O��
t����G
C��+�k�9)п"�p
 P�Qg��&z�@89F������@�Qg!��.z�@0�2�F���+��@ЂQg-��6z�@89F�������@��Q�������P �
�iN
���~@F����P �*�iN
���~@F�E�:��P �p�]*���( �0�7�J��!WK�HsR���( �0�,7�K��A�����+��@P�Qwu��fz�@0�j�F������@P�Qwu��nz�@0�r�9'�N�0�7�N��!��ح�/}@�������P �
�j.��~	@������ �v
�C���@P�q�BL���?�U6�!�ax�\�N���t���
��F���
2R!h*СT�>��"M*ȩ� �1nT�[��"����(A��B���jj*�r���*�4r!d.�t(P���ҩA��=M��q�����4�)��w�i�Pq���� z2nԓ�؀#�f��Ne�p�xj6�����66�Ȇ��0�h��68E�>�{���sܳ!��������Ň������2M��{]��7%�+�����,�n��mV�s]����;")5��ؤ�5�[p"L�xz����|�l</��&���EJ�6쏍�_���xy��/�߼;�����߾���%z�K�<>h�����������6D��~�
��h��i��C��)<�Ss?q�+4 ���N�"`� ���66�Ȇ��0�o��68}Gi�4�gA}ml��A�Af����J�|j6��1\����{5!��\ukBS{.x.�������0�t�|�.��u�L���vA�vA��.P�]�͆����xA�Ƌ�Nfhj�����y4�`��� N�7�xj�����y6;/��q:/���ᩝ�d��G�E�l��>�����O� ����;К~���_���{m��KE^(A���F�ܣ�C7fc�R�`�t��(��ECVgG3���5Z���k�䰱�¹����F�LK�}�4���3�f��'��f ��D�f����xb3�`��C�8�#�f�l��>��i��=Om��`��C�8�#�f�`{�a��N{�Q�b<�=��=��G�h����؇=�:�´G��`�ft�=G{D�l����GP�=⨙7��A�A��#p�G�͆����Aݭ�M{��A�A��#p�G�͆����A�5��S�#(�#�{����٠�#�{u��7�dj{{b� �6�#�{u�#�i� ��#H�
�E]ֿ��Q>�&<<��M/��v�S2��K�<=t���DOO�S�`O���NO�2==d�j*t���DE�ll� >�i�P���Lm�``�`���f�������
Kof��/�LN��W�.�����~.��M��f�3$)��^%�r�+�o,�V�G��)M���%\^Q�PѺ�A���^p����=L��Am�<���P��/�UVE���c������� +뫴 ��`�`C�$��^P:8, >�D���O`�S[��'���V���0�KD|x���=������f"�	6�>A��(p>vn"��O�'0�0������1P�h'
�h�����1��B?�ɇ�E,l���DCQ�|�(">E���O`�ajKd������0�SD|x���E����ô�"���ci�ɑm(
���IrB���cw�{� ���?l���F7\�9l��>�p��c���ѩ�p�l���F?\�|l��>q̽`�G�.��N���)h4·��"��]Ĝ~
�&��q0T�!)h�·��"��_ĝ%)��|��`��X��+h4V��2�XA}+��XALc��X��X��+h4V·��Hԇ�����<E�S+8+�c�Ɗ��0�XA}+��XALc��X��X��+h4V��:�XA}+��XAMc��X��X��+h4V·��
��X���
j+��
��
�de�Y�@>�����>/�@D���C�@4�������7w�����S��`��CL,�*��l�`>L�m�`���Mm��`��CL,�*��`S�a��nS3MljSSb�`�T8�*�S�$��
6��B��B1U�h���M̇�B�M�4U��MLb���ESE�|��M̇�B�M�4U��MLb���ESE�||��|�*��T��SU6��B��B1U�h���M̇�B�M�4U��MLb���ESE�|�M̇�B�M�4U�iM$E�ADF�ED�1��"2:�#b>E6� 7��b��D>��|����$L7��̊ c�b�`�X8+�c�p+�i�`S++�cO�\GrH9�e���9�.i�,759�e!��,xtY͇�V��f!�6����O���C|<�,Bg��x��0Z����8��S;-$8-���N��1�����ZH�����Y)��k!�k!�x-x�ZΈ�b�a��N�����Ƨv[Hp[Ȟn��g����x���N�>�&&�,dO�EN�6�k��X`�$E�ddѓeLJ>��<x��CMv�I��Z�S��i
�gog�g��ʙ���i���6L���B���A����<=��
�z$�)dO7EN�6�'!{ ��IA�G"��B��Q�D��aax��"8]�{$X&dO�DN�6��{ ��-A�G"�SB�tJh"P�4��|cDp�$(�G	�� ��E"�M����A9��y$�"TO_DN�6�g{ �S/��#����!X�C�M�B9�̛���
�-*0�!U���T^�B���J��k�
�<����E'O�sx�N�t�0oN}7`�P�M,�"'BȦ�4E0�������)"l"�M�i��M
L��)�GSD�D�����������"x4EN��M�i��M
L��)�GSD�D�����������"D4E�M�)B9M)��SD�݁?,�����������n�Zg���r��}^��Ͻ�����(
�a���q�Z.����_�{{#�K󳣞s?Ak֣��R���s&��L��m�o���p��� ��'�	?`�O������SD��y��86�h�9�����SD�/�h�	�2`����_-�R B�XFE�D�A��$�?O��p,��"p"�Ѐs�������_8V�A6T�
8�?O��p���"p"�Ѐs�������_8V�A8vPh�9���A�SD�/���;(4��D����c�?���B6�'0:4�L=�(�˨���Ҩ.�΅���%xSo�2I�TbbI%f3S�ϜJ̒�~	�������J�X#PkJ�7"�i<dsD��ԣ;�;�wG ��s��� �		�� �PtH�΅�-�i������@�=E�D�\�%��.	}�� 6	��&�p�I�    �Q9���=r���S�h��!{%��+���#�,���%�n�й�]9���=r���_�h��!;&��1���0X&� ������@B�L`�e�x�L��p����.�Xq��2����`TLQq�cp��n�>�O�!�}���C<V��`��,$Z&B�BȖ	�L��	�	<�2A�e"p.А-�m��-,x�e�F�D�\�2�ݑ�h��`��,4Z&B�BȖ	�LP��	�	<�2��e"p.��-�m�`-,x�e�E�D�\�2�ݖ	��2��2�X&X�L�΅�-�m�`-,x�e�E�D�\�2�ݖ	��2A�C��L,c6��ebx6�; ��dp��n�>�O�<d�q�}��),d�e�G�D�\�2Aܖ	��2A�2AX&x�L�΅�-�m��-,d�eBD�D�\![&��2!<Z&X&� ˄���й�e�t0S{�L�L��	-�s!d�q�	��	�	2�2!�e"p.Ȑ-�m��-,d�eB��#B��u���3q�we �`�4�!t628]�c��q���I�8��疊qxF�s��{�	�bp�����D�D�9���s�� ��q�1N�Ȇ���BF�Ήk���Y'kd�֫l&ldP�B���1�@���J?�����u�mc��_E�w�Yc�!ށ��i�f�8�Ǚ�-�VM)#��d>�R�&D�H��"3+�)�!�}/���Q���L�n;PH��P\����݂��o���8
T80 ���&|ȈA�t���10�Z&�9˕�b �	j3L�0P��1���������ҧ�JP�WJ#�r@:b(�U���XqMC� N	jsJxI@���I較�1H�%�������H ���$�$�HB�$t�?��$x�bn .�i(�%Am.	/	$�0	�w#2	^�1��4	J���UA�Z7��?�:������}�ޔ�_9¿<>�/	x����K������)�9DJ��#�M��WT�+�P�n�'v:�n\\�Њo��R�7~�a���::^����������7o߽������ǭ�,���������}K@8����67���O�S?ܧ>����1��^/5w�4����f���"	�p��h�f
zh �V
f�RxI����I�l�@|��HAMEqMC� 6
��F���"`Xg�H��F
f)аN
N
��I���"d:[)�^
��R0�K��5S00S�.f
�!���M�ưS0����v
4������u�S�����O���S0����~
<������u�S�����~
<���y���S�a�����G?E�$t�S�1���ট� ����²��$�g�Y�OB�uE�w���bV ��
��(�xg+�
ļA�M+�
��#X{����I��x{��#�i����#�#X{����I�<�c�#��q0
���#8�#x{����I�l��c�#��!L{������#p�GL��l��c�#��!M{������#p�G�LBg{����i�#�������="d:�#���GH����Gp�G�.����:�#���G(�A��Gp�G�.��!���AưGp�=B��2�=��H�(,-�0���.
���M{U����98{xg�Ξ�❝=dg�:{���!�fJ�`��]�$�#B&��=��a��^{�2�dX{{�b� �0	(�� c�#�w$���daX���b� � 4��d��:$��,k�`�],$Z$�f��G���^�����aML��I�D�D�,��.	2�KBx]�L��I�I�.6	mA���'A��I�OB߁�°F	�2�E��F��Y�� c8%��)���daX�� ���b���*2��W���^�¦Y�i� )V�D��u�w��M>����e�g�Kyx����q��a���f3� IQ�(� �Ź���ai����[��T�=����@��),�?�3(�Y�x����Դ�jh�����=����FoOЏ���:��Gx�=��G���OX$D����Y�쑠cx$��#���daX�� ���b���$4�]t���$��,k�`�]l4�$Bf�t�I�1l�o� �M�k�`�]l4�$�f��M��a�~�1mtX�����b���&4�׉�6	�Isi�k��`��]l4�$Bf�v�I�1l�o���M�k��`��]l4�$�f��M��a��~�5mtX�����b���&4�mt����$�i��C�$HJ�B&�4���8a�R�a���n�$aX��Gv�����	���:{z�����0��ÆM�"�$!��$X4I�Bg��$!�&	f�$ذ&		&	��$��I"h:�$�&	�7I0�$��5IH0I�.&	MA���$��0IH�I��&	6�IB�IBv1I�h����$��0IH�I��&	6�IB�IBv1I�h����&	6�IB�M�4I�aM
L��I�E�D�,t^3ec�$��$��eR6�IB�IBu1I�h����$��0I(�IB�&	6�IB�IBu1I�h����&	6�IB�M�4I�!M$%��_��6�TS�|���ﶋ��ϫ��zr�����ٗ���������G�ف2��Sj��	����UG�N��٣���漅��-���ʓ�ϝղ���������/�߾/��/�y�����x�o��)B�:+%���ay�� ; Ly��������7����X�����a���c��߇���Q~��0�>lش(
,������g��/������`���C�4��B��⢆�����G?E�,\��K�1�k��>�&���
�
��Q���"l:O���
�T\΅���
�
��S���"l:/��1L�k��>\%�ú*�*TW����i�.��1l�k��>�����
�
��W������pa��ճ@�ge<���@���"{�!�����Կ��Z:)2D� d��#@�uQ`1$����ii�x��ݭT:����MQ��f������ �N�p��^}�ϖ����z�ٮ�y7�u��/���ۯ��<�|,G/]����#�5=hڇ�&JU����Y����������7�{Ub�x��xK�~��4>�~�����:�H:�`� -=$B2�7� ��/A�hP���Y"��GB����� �z#�4Fd�A�t�N<^OQ�A���~���!���� ��
A�h���"��EB���� �: (	�t?d�A�t�9<^���A� ���M!C�6=�p�A�F3= 0=���MAC��yMl4��joz`��4!�����F2=�k��W�yT�C����#�b�GS�(ƨ�ḅb4!+�ȫ��c�1j��AȊ1�*�|4��b��+�<*�AC�b���1M1F�������q���c�U��h�1��W�ET��� d�yc1�b�@1F�c�!Y1F^�X��#P�Q{�XF�8ddȊ1�*�r4��b��+�2*�AC�b����M1Ơ������q���c�b,GS�1(Ƹ�b��b2*d�{c5�b�A1��c�!Y1�^�X��cP�q{�XE�8hBV��W1V�)�c�^1VQ1��c�U��h�1��W�Q%�)��O��kا���Dc�^4FiT��� d���ק���tc�^7Fi��� d��kק�I��c�^:F(j�As�B���n=M=&����1BQ>����c�Y�F�	Ȥ���PT��� d	�x%d}��q 2i�!#E�9�!���_��&#��I{�#��A�B2��ƣ)��d�^IF8J�as��L����hb21����jr��,'����4@O&���~��b�e�goB��~(����l�i>A��}h�<�:�i���JbD����y�J�k��J�_�ݽ8j-�\�9oh�5��,G/��P��O:>��    �:��U�#/�߾/���y���"e�(Ϥ;���q��������,AE��q�9��D��\�0%̛�����05�tP�It=�!!���_&�������L�;(lBv�LFsQP�i5�DwP����~5������j0�9�!���_����(����L�;(lBvQ�LGsQP�i5�FwP����~5������j0�9`!���_f���(����̢;(lBvQ��FsQP�i���,���� dw��.f���(�Ŵ��b�Aas�;��w���A�d�AO�QO���L�z2MO��'�z2�zr���'S���Gӓ�ɬ��̣�6!��̯'���dz2�'��'́YOf~=Y��'3ГY=YD=9lB֓�_O����d�AOQO����d�ד�hz2=�uГeԓ��@��'3��,Gӓ�ɬ��,��#�rpx������@QfeA#	a���+)_�9G M�uД�$�MBЋF^Q�z�U#P�YUYF�&!l�++_��#���J]���w�<�����?i�?�~�}�M��e��@��Ǧ?,>|�>��{\��N�����˻��f��}��d���ݭA�A@D� `&0�(���H�J� Dze�Ϟ�"_�;sҊ�N}��2_�K�Hb�i`!�cќ��LD�����+�٘�����5���mg��o��q�#0�����
4O=��}�9;1^^D��؅P�
&��p�<Mʎ%�ג�=&�6HZ�j�_l�|��:Hs�n&�n�_���cwp��q��2�-���뵦h��_Z	����v�Y�������3���k:���SS �6�ʢ��l���	Ow�Up�z���������;@z��?M릻�b�`����w�/��/��{.���P~����{�����o&�<.(Q�	���h�R��p�'\���"X!��a� %.�%��Z'}��N�||�_�l3ɳ]FB�"���_�����j��j�Yǹ~����۟I�lg����~�e�ix�?L�F�'�aũ��?B����G�|���T�	:z���ay��#���5���M�� �j� �
� �=�|���3��Y>�h ��Dp��Y%�L�����A�dv0��`��-��b�3�`m�����BG�r1�-���dLR�Ď�I���T-{I���i&�L�1��V&k�X0IS ��"�cS�3�NeL6\�$�L�������O�&ଈ���� *��f�M�۬�[m���3�GK"��+�GډI�[��~��UkF��J;�ՆL���r�}��~�l��H��j�q�/AP���ɂ��(c����v�e���.4�.��.B��=
�w!���5+k��&�ޛd=�.��
����	��	�U�����Kh�5K�����Kr���K Q�v��h�	���s\��\��J�LVU.y�2.I"�2;�8�8���t�	�ծ:TN���j����3���62��y��?�`�.�׋��j=�_E�>$hi�D�Z��q��!e�k&
Q��Dbi���y�Lӄ���qPx��Z���F<B��eǮq�;~��<b��	� ��͠0�����L(��*�Ď��+���*w��A�!=�Ċ����p�� �h�		�ND�a�!A�/V��A���ra¥18��!�Ck9��.���;�����KM�#����a���h`l�V7��e���+WkQ���v+8�5p��Î�,��'��N��s�e��n�0�}�5Y����0���v;��E�t�W֨�\u�H��˝�������4/2޽{�}��M�}���oeqWb�n�����0`��o�ϗۅ~�n���X��-6�e�[LBt�O$��A���!�=9�ݳ��վ����o��{}����~�_��5z��.���y�x��Q�\������>nc�!�+;8��'�R}�U�D���s���G���Ϲ�{M�"�	(\N����C��i�6u9Ը�5P��N��p*���P@�^����U�ک�XyI�͋S�Ϧ$Ʀ�X:����J�h���K�%,$x���Ӥǖ��8���:"�XE�?1�����Ǥ!��s-�FO���H�|F+q<w	��>Y�gř�)5;�fVDO���G��=?�~�-qq� ٔ��&�� hM[�j�=�q�t�5I��1f��c�̭���H��Ƅ'n�=��A�r� �CM���\H��O��1@��àP�#F�1&TqOBM�3+TMi��ZV��J~��@HR]����D��'&0q��فi;�SG�BG�U��2���XA��
bB��ޮ���'��4Lt\��Z��d,�����t ��e5x}?�����秧9�u_n�>�
�0{V�\�[:�bKv�T�nX(e�L}�^�A��;��.�e��t�4�+��M4�&~���� ]��?Q��DxX/�����q�7k⇹r��~�Q�2P.��뇇�r���q���i�=LʦpI��)��H9}��`�F(�T��b#J?`�%A�,	 V�.,���(x-���)(�O��V��Ԟ�
���]x�̾����j�M{ۃ��ApE~�0>��rV���l����>��gw�'0�0�~�2Iڐ��C*�����޿�!�'C�XP.�����qDP� (IpCWc���ۦ�sy/�����ځ�ַ���Ϟ��֐���\�
G��"�N	d. ���(��\��ʘT'$(Q�u4Mx��u�z:�<��r&�g���R���BbO+�
<���1�u�,OZ۬��u���:6&����uT�RU��4�9rDZ
�����uT��P.Ǐ��cxxʄ��f9��\�/���.3�"��Q��ڦf�9��a	T�h�5�B����V�>}��iP��D��U6}����J`T�(RUmB���Q]�����-XL��b0ƾ30�o{��D�?��;�me��Ҟ�1j(g�[��P����1ĕR@���X�@���%{e����b�������Z�vbw��S�L�=˴鹻O�v>-��w|Zv�����h�^�O�"��e�)i��gH4���W��#�EU'�6�P�]-@ E~t�ɣ�|Q�Ĭz�=3��9�W��l��G���U~JZ.��*Kms��ǩ��e��6å�=�G�&%Ŗ��U�����w�g{|칏_/���R����r�冿_�>ϧ����������*���_��	G�	�r2�p��t�'n["����~V{S���<����<e�w��v�c��tʘ�Q._ӛ���F���j0�
��X��0���~v�VG�K��f]0b�";����%V�@sy���6������|���Y�.�����-���	�� V������}�:���j#Ճ�V	�J"Qb�"Ns�ʔ�.�!��7ˀ�D	m�%n���,��ˡ	�:�]vB�"[S��D���	e* F�_鍎�Ň�2j8AaXّA���5�kŐ6���d����&۽J��(�mPV���+c��Q	��\J�hL_��iG�j�%I�{�k�)���Z1优�MKY{��V3�Iud���V0��� �P]& 5*�!aڨ����#F�G9�'�@�ݯdS��kȺG�#�	F�$�r'�Y,���j�Ia�(N�ݡ�F=|sĊ&?jic�#�]��$�J�f"��x��-��2��sb):�aQ
·7�8��|h���U�%����^c�s�ދ�E�\.��'a=75�G�Tz�vo��I��ʣ��%�[Θ�;v��r�CD}y�'CN?�g!��ܐ���!iZ[����^��a�	�jC�}�h�rz��M��/_��y~����g�l�b3=���S������9ۮt+<N�Ϥ���	9�M5�7xԨ�*o��9{N��PS��5�dݔ�J�iV�Ȭױ�	 �ZZmUխ�)�z���ظ*N�Z�dȞ^��x*:`'BN;Q�N\��Lz��D;�s~Gr�j�;�����������==q�v~t��V
!z:޴��    ����T�E�E:f͔.{�x�������r;[�"4���)�9����p�a�	��i��esV�&U.�n7\N��{3�3�������Y�6�"L��tTY��Z���Fy.�L�7:��������0�a��s3�mv�z�0ʣ��U��m̌�0��]L���,=E�$VFն����,07,��3<���.W����pA�f��~?�����,/U�r�U~�n������װ�'.1\
<����cg=�
<���1]�dx���]6����f��l>.�V���7���z��v~nH�R�S�uk�������E���K��ܜ�ۑm���݄:��6v�j�Q�C���P?��<��A�hy3���n�	@ƛ$�����&��k��8;75N2��*7^2�����^N��@0��K����<,
͊�q`��sqǽ p
�/�.��F��_"iH da�f/������r�%3������tp�]�]���p�c� ��#N_dP��`��`L�����f�������4�9��+4F���mТ�OO�i� ��쩉��K@F��9;2��	0��޶�2� n7���V�1iX�5Ԕ+�Y����s�ҧ-wn�_�!��	��4k�Wm�{f]~mA{���t����٧�*4HeS�HW(���Ro�D�z����M��hd��74��4����&`b N�	cLn��}�o�:�)kY��$v6��	lV[�L=�*�1 �`� .��ۏ�U�/�B�h8m�EՒJ�� ���5Y�W{Yk�2�
�Cpc�#�0��!a���[�Ƒ�]jx:��T�Ϩ �z.D|���x��a�q�9���D4�k����?b�b��P��!����@Xm�2}E��^�� M!Ep��@P��DRM��W�����<�Ͼ����ׇ��~��3Ž�����q���&j�)5��hi�(m#����b�"
��$*k���N�҇Ǉ�R�Oih܅{Ƹ�B�����q�C�݂l��c[���l����������D\~&���,�>�%��Ќ$��Ќ�N���B�"��j�	]D�ɠ����0=��b�M�o��z�a˙�'=��
m��Q'��"�,*��{z�#mKYr��NFe$�2"�eDܓ����X{c?��ĭAD}�� ё�,Xm'��D��,^�e�z�qu?�>� ^����1��m/���&�4yU�R���y�>/�7��.�W�sEI��k_<�&9�(����e��Q�ͫښ�P�͌��/�YO>
>/��y`G�!a����fg�,#T�����s�p}��4�5�|�Qii&9x�_P�F]����f���'�M}�KI����q-ǦiQ���Dڽ^�4�4�uk�Q�ڼ_��E]�����6q0�nJ;�4��P�������C��ۨ��Uk:�/k��?�D�j0�NK�F�TP�VA�۟~�U�^�������,�s���s�QgX��sk,�_疂����u�s0��yH�6�؟�8A��=FS�>��{����{�j�
O�jӕ�1j��@ӵY��i�P}�`ȣ.Cގ��kX��D���	jW�������Q����óWma��ڎF�C��U ��!9�d�QQ��jG�n�.��i�[�eB�mâ�P���mL�sD�;J�i�pTU�� ��p p�}��W��ޓ�PS�UQ��� 6����I�T;��e=���Hw�Fa���c��t�j��,#e3�;�V0_Q�����Ǹ���Ķ�u��v�d��UƐg�#�8+�;V�U�]��:4�5�Q�Ms։��X2�h1�E+�5���6�.���J_x+H�<��,>��i
����Z{y%ہy�sy�r0�7 ,�09K���X�.��eY��}_yK���2J06�˓��x���������j�U^@5��9�H7;@ο����@¦i9���sTd��_:�ׯ�C�������r���o�����V?^��v�Nq��:���P��%�a�H��o�e��b��YD+yX�	��#F�)��u4!Z�&�o�,�A����H�b���~Sk���f"������c.O���!�)��@3�8�����}P:�zs8檭
������Ǵ܁���e`�b.���g��-�q�X�v��뷲���u�N8R�5$�?��˷z׽��b��b.G�b�=CQ4ulvY�}X��B�o� `�-X��0��fd�u��F��@�s���.q
&�i��]h:FY�/ȩ�Ӈ2��*o�RE2d#c�M��%��1���Q�d�^0 ��Rum�ɍ���+=�ݍ�5� �����R�g�;��F�/�`yb.������r��S �������z�'�UdR���`��+{o�Ɍa��"��7S�w��JB��),FYU�u��9b��9����&��h4or�^�����I�W������oR��o�ǝ
�Y��q�?>��-���ϋ�z��z;}���]$N����yn�KV����s0�q�Ѭ|6�DHOF��mG/�m��/���,Vm=#}���Ń�O�U�]���]}֭5y9����m-�.[���m+lv�~~��.��X�ݸ��xOԀ���|M&5q`A����:F����n��!Dk��8wِ
�������p$�8{�	`G��&�[,}����Ý����G�|��0�����@�v/ջ��#��g���]����tx5y��[M��u/]N^o�HS�H6U�.:��u�6�WEO�J�1 ��yj\�KԚ����Z@x�Y��/|*�`��.{������l7	{���O�����/�[�h��f�گ��6��$�Ҏp��ŋ=9��e$������p�u��f?ۊ�\8(Q艁#��r߃�^�����k������LQ	�ɋ:�r�T���I� ϋpy^^�z
�YC51�	�p��m&��Vs�BGZ.?�����Dg<{�'�ޮ���iJ���]���v�y\�6�:1qLS�*�"���I:�)vKQ�}�.`��hƎ	lΪt�)a���O�8��nC���
5�5�ˬQ�G���ZGR�͵ÿ��^v�?!�	���n�����0.��.oHy���k�:��]�t~�÷��8������1���ʓ��Q�|���"\�*�4����������eԜx��`v���J(�Zk(c^�F�|3�囩��"�a����f]��ڦ�"�8�SAّܧ��F9<G>.r�U�#�F�2�T����&�wW�$�V�q˝�H���� �Y�ͱ3�ھ z��y> |p(	�C���a��ݯ��#�!Q�VhK�j[Ǣ��yZ��j�:�*1��;RU�Ȥo/qѰ���b��)J$�2%�	^d��n1)��4�%t���Ϳ�����Y?����p����T[Ɗ3I����),�M�ty}IZ&<�6I՞���*; �$�����;o�py�;5lN�`:��1~��L�5�E��O��tT]T��$(��ɑ�a�R�KQ�\���\j�7(z;�N���~J�<��Yɜ����X�ft��Z)\�J|���vq�G�a�Nux�\���^�iڲ��:b�Ѝ����ng9��&�*�K���w�0E�����:�ij�܉�[0�J��������zabj+�p���ۗ��Xm�.6�on��液��&��V,��ĸ�٭/�ty1�׃��}��-2vn�0=\~��,��ǵ1F6�.3����Z)t����4�@J�� -.�^.i�@�+�VixL���(]~Ă���7$�Q˵X%���+/��yQ).ٱ��F��a?L�E�Z����YNM9dal��e3,d�8���;B��}ʔ�w|�^�JYm��&��<J�\��2U���6'�~3���n�Y^j:`^jޙ�`�R���祖�Œ./�����U|���kޯl�C�yf� ��t�B�x�6!.H��J�5�P�?����!]N����q�<��	<�&��+T��	:����~!]��tq�낉c����g�k�ΕE�	:�J�#���x�̾���������z�    #d~�;�Z��6�f��t�Ϫ:��L��K$Q���L:�R	c�]�uJ��?掤C�����1U�S}\
����=�G�r0<]`���x�Y��I��<bŰ`͋��Q9�0V������7��qP.�Ï�}���5
B!
B"Q}�����ΐ��3^ڬQ9�JU[�0��ިNa��0�H�	��N ���&�n�#�L�"��|em��� ��+G"�j×yh�k�h�E3�=odW��P.Ǜ���CVc#�諸�Ι򘎹�jT��
�mb	w+�r�8l�ۥ{�gx,\Vd�}��Y��W���bv�z=��(�G���%`����z����r��?��5"�FMXsE1J��x��L!VQ���]dV�Q.o͛�f3�����o���b���=5)Nx���M�A���:&��wP�)O��&��jml�����e���ej�v�'�z ��r%�8���&��(��Y���G��I����=?W�y�m�V���1d�h�L_�e�z��{�a�,�#���[Y�>"�=eM�[ɥM9����W8H%���p�c�#�V�U�j���&2��{��NI��譢1岈���Y��䘤4A-y%	q���Rq�ZX��dI���מ�'kW ��z@l��L��5�ݯ����V��r�� `P
"���K�׊�	:b�|��ׂ�|�e���N�=�O�)_�`�m�� %���@(�Ӕ˟�f��d���e7Fc���z!�M5�m6���8�����S�T�)-k���j۔>H�SLGwz��������}ؗ�J��.�D���ǠVk�j�������foV�m����΀���q�?5,��ì�#�T�'��:�dp��Y���\�1Vk�Q�$U��Z�U����J1 沂������wq�ՆәQ@;����ve��jb�QDj��p�2W��v�Qʞ,��d���u�� _.ӕ�W�){a��J�����b�RrU��<��9QUJ(�;� *ξ.��J�{/X�&T�_�T�.g
��J���!~$�6���3m��p��a8�ɶ	�����vcTad��c�b8�f*--yζ��������U.GP���E��oJ�hM�мiF��2����f��-s����H�Pl��t��D��|( \2^m�g��=`t�)28����3�.J��e�~Z-?D�u�������}9?mr�8�ȴ��,h��!mk,\�k[�s�M�]��2��Ȃ�~+ �e7�y���}Zmgѐݲi'��n�T3�J��щR�^���;G�jK���j������Q���毀Q��~;_�[�Y�|���\��~�0_O��Z�'���疀��±�׳�f����WM#�ӈ)�i���H1u�8���1�z�����%dE8D�Jh�@q�N\K+p�F��b/�`���J�~ʂú�V!pQ!���������~Ko�Q��.$z9�
J��J�a�[�6t+�V���W�,�2g���0�����o��ƌ�cҀ���?bU"�����W��qo�ְ�f��| DVK�w�S �����l_�ʚ�o�A%M	¬���پ.�[Gr�j;���n��6(��$C.'�����*n�az��;�D�cm��1��s�Q9�><���q���^ƾY�h�h�4�O߇��Ґ˗��3Ne����5���>��ܹlT"�ۉ�ӑ�LDQm�#j;�x"O��`dC.#���r9�l��}Xt���A1�#��l(��`D{\�v�#�N�:�'~���1WŰ��P�&\��8�q�e�{?��l��d�a���*M�1��W~�I���۲߳{&X�I�j��fMX�j���2,��(�nw��C.���n���0i_'�8��oi*�d]o:����	p���;��6��-[n��d��'[��� � 'r>?����8��I8Jd�^:MP���X�$<�*����5v��������W�* �j��9���17�~?���"�p� �-z��A����)S��q�eB�99�hJee���M���kS�w(o�֚���ְ�}����^�{{r0���A����]^-�wHp7sg��zˏ��˧vͷ���(�u`��f.�;Ы��׋���o?�s���߅]���ng���Y퍶�̴uᓴ��9B���źϢ���n�N%R��u.���UmbcÎ��I������R@����D�O[V��2V0첂�L�\�R�V���u�/��D���|=N�D�@����V�9w��L��E&��r���]�h.	��,v��V$�%�����/n�ѹ>OO�G �Q�1kV ��xF���6:\l�io��U�_v����X�/t�I��J��ʦ-���a�	`��~�; ��cY[5Ym[����cV�����I���?�Ⱥ��ov�jYz[��{~��|\~�GKV��\h$)�qD��lO����a�3V�y69 ����K�烍���j{^l��v�PEͮ��i�x����dZ��}Y�#&G7�{p"F���<�s{�[��y�����.� �-b߬��<�]�I���p�}�h��h�����F�֡���{e��w��������w��Ʌ���].̿�6Y�o�G�`���刲~#N�^Zl��ِ��,�`�3��2d�l>L��a��.;@zESo�*�ې�ב]�]��ݡ>͎����6���r97���i ��}�]�˿/6w��f�� �n�z��N��?�.����k/cwv�Ute⨵�A�#��J{���<�]�ɒ�h��dVM�����vDJZf��d`Y�NQ����H�? �����w,���� ��Iڶ�M�e+��	�I��k���͆5�xPR��HJ����G��~�l�o&�Ln^�`o�������I}I�^��ޥ5U	���r�b�_q̕�Ct Š�_]Kq�e#�8 -���x���*Ŵ�`�Abx�IRQ�z��3B��7X�?��`�!fH4���k4�}�����������v����/i��c�W�+(��O�S�ũ��f���SF���r;_/�_�2=7'���JX���[IR	�T^]��$�I�3�J6W��
�a8ս��˔I}D?�0SW��"ͬpV-�����S�Uӄ��'2����h�U��L���MWYϼ}
�jQּP�xs�[��,�[S=92���Ъc��_f�f��,O{����M��Ͽ��:R���:���^����3z
d�8��*E�T��J�?�pE%��STUڌ���B�D��R��j�eƛ=K��
�0�z��+ދ���#�����u�) ����ǇO��VY*y�Qxq���G���' ��������I�2��~���&�n0!L�%�;�9��c9y����Ա��fd�/�\�=�j���<γQ�X���������� � ~�Qq�@�y@Gt.�:xt\u�Щޟ�Ɖ8ѹ,tDO�1�q��k@�z:dht@u&�thD��aiO��1Б�ѩݟ�z���c��B�(X�i�s6`sV��ݶ�N�F1ڀ��K�#Љ�C���6��G�z#�(���N�]:�&°l�)��ѩ��F�QSi)���[c5��-���O,or�sJp�c������T���5�� ���y��p{�k��L��(54�r�'���@�T���W:�_dA�B_�l�j���ow����^��'�_7���I&�Bx�gOw���aw�X�j*��s����7�#}���������X�����5|�Y��_�݇*�'�DcZ�����m�߾X�����"�ll|��F|1[�2b��_4e�Ґ���G�#�4����!�j�a�a�qԛ� �遢�ձ����Q$0�.�����ȴ�1���M�O��C�<Tw����g��S��~��?5S��K*�pT�>L�{�kT�HE�T�j֮��©GH���'�F�TO}*T8e��
:����^�<R<�K�S�-��Q�-��̭Q!"�S!�Y+.�
�x[��J���˪�bkT�HE�T�'Bs�%d8*@f    e�:5*T�"x*�S�»;5�ס� �U+MԨ@i�"x,�S�µ���B�eb?��_��'���֍��x5{�l�\?~���|��Q�%�ߧp�c�U�=�w��q������}�V�ю4�2�5ٽ2�G7�6g�R#ţ;����r�c���v��ë�ٗ����(��Q�����u�4�7�iuc[(:f��le�J���.�sNr�1#��&k����G0ł��p&�v�e3�E�C�q2�ː��z�#y������~�z�2y����"���l�x��x@�~NdǬ�?�ɒ�%\��D�(Q�$y*H`�`.�X,����>C��Ƙ�KfX8J�%jU}��`�`.[F�8F�D<zRϭߪja%��r�\��2�I���#>}R�z&�ON�x�S0����x#>���O�/�/NxpJ0�S�x>��O�	��ߪ8�a�s0Ap�	�x>����)<O��Nx�7p�����ƀ?�̻}B�#[��V&9X�˺P|\�?�ٓZ�����',Lrд��������ͧ���/�k9�u,�(�.|�<k�;�E���KU��^��'T7M��\I���[|��ɘ��G2\Cɻ��W-y��G������K�����P��u�����j�\#F�"?��$ܐ�f�~��aP:�C� V�z���T��
q���7�Hw�� T�P��x�̞1�I�������q���� �Q�<�Iu��m	�%�mrn����-�8�T���T]��Tf��]H��F�k?2���P����E��δ�;�0�՟�4*n�@�܉����`�I���	�̥)Xs�[�]͇lU[�Ζa���n�U���k��uǁf)]��Ys��;�BA��j5�;�Hc�4�ѻ=�������}������9'of��^m����I�^vp
���S���4���A�k�kխ��jd�V}����<��������~��z���T:�r�QR�8>��7k)W׈g5�|�~�~�!�{�pV-��֐p�;H���$_ܾ�� �Mm�n��4k�9�1����b����I����
z�����Wd���J�%H�sKD8��HQ
��^}�*��k���������q�����;d��_�]�y��k�}ǘ+p|���p1�[ź]}�l�T�"�~U��~3���n5y�����,A�;:-����wPJ��8B�6-�G��٦H]��w
���ޚϛw�T�hXf�ws�����������1\����h��0�#Ǻ��ެ���HO�����>.��	;ynD<� Q�;2e����A\!��e .GځB�d�[�^�J�W����s��0�|6�0jF9;���}3�g�iv��8�D^���P	գc���UZ$&�?�q�A����K�p�W6|��X�b�FZ���hD)Ѽ~u#��������o3a`R9hɏO�����>���
z�o��[ X<�k�[|�u(�۵D#��p=�"��E~L�%`u0�Ƿ��2��!�L���{i���Խ\J<��*B�QE�߱r�X�j#7��,�a�w	�,%��Ͽ̖�,5��H�o�T. �Nw{]0&Yi:�����@!�(#t�]�gyi�G�lyk|8bd�́㓟�����pTS�c�h��������+�q¤�+��Nτ� ��q�ğd�[�����  �+C�W�ۺ������
��N�c��~��|��_�\]����F�U\�q(\C�Vy��-><@jOY���}/����o��q ��١��P���a'�d�<�pų�^B(�"	C������\?X"R�p��	���󧰅k�pt��t��S��Q �)v0�"�S�ڑ�v����tw�Od�Y���H��)�u���נL��8S�	��*d0��}�FaI}�慎T�t��4���|���C��-{�Z.f�n>נ߬t�򠿡��~�/1GH�d?�k(	ٷv���������vc|�����qڸ�Ķ��:{����F�5����Q���sI7�Z9ޥ������v\o�br��
�|�(�I^�}=�.ٿ��{��-A��w;ӿg��"��̷�7c�j�_Y-?U� ���������8��B�C X9H�2k4ѝw�( }����?�\Ҫ
��.�֟2z`��<@��������&��\�fiD���븍eCT��_Xx�9 ����v������<���5[�8��=Y�{��=����;A\ó����L��fC=P�>_nz��k�|S���Hj�����hv�q�1Z r7I�~Z�D�g[T��?
�>U�}{j�Zg�D4��������SDѫk�m�B^���zq'�z6F�9�X\Y��3�Ś��c��O*���S�a��B��jO��A��ޗXć��
��]�?hB~z�b��sL�r8��,���)�3�<qg�b8(�m�Wk)�����!.�tJ�yy�P�&��2GΫ'W'�5�J��vq���X"{��6���OΤm��qԘ������>�!�YE�l��&���A�:����\)�NL�rQ�4)O�� � 2@�u���FUKV���O���Wh=�]���:�jG7m6t��a>��o&?/��[�v�鳡S�N��{�<F��H���6����Z�;{3�)���?�h���a��!�S��h�?�o
"�&�g�d�-�sJ���������$0�B)�*����<�� L�4��O@¾уD�(r�ʤ2�E�|.��f�����4�h�I�-;8-��W���q�҄��l���� �����ʖ�N�!P�~�J�r����Z�6��Zg��첣S8�+��+����'��mh?��r���ꔾ�Z����}��څ}�
M�z��������2FJ�q#[��q�aZ-#���f3ס-)�C[%Ęo���%¶9����h)%W\�+��0B�aP�ST�p[��(�osNm�^�-t[L��*�u/,��(-���b�k,4�w���.z��N-�� �K����v�����7 �����XR߀�1���k�c2"�-q��d�\
{of�f��l]���+�f&E"u���e���A�Ο���x��n�Gp�Rr{�ң�<��*+O��=|�b�0/�)#=;6��y�I�l
���U���Y�8QH�%�h6�N�}���߿�0����� hk`;2������o��_ue�6=6��P@��Q���QA�MR1�gg��XA�
�����,���߾�������O'M=����JrQ:����(/��;�t�Φ��N�%Mf]Ѵ���1�T��~(me$:L��Q�J'Y�̒�7Ï���>�ŧ�v3��Z������e��}� ���E����${&���~K���A$i�j�n� �;)׻~ �TbQ���K�7��a�%ڑ����1���!WuBr\�������C6"�GI�2�kOFIF�v�%�V1:$�^��`���^#���r;�����fdD..�����g`/���X����g��l\8�������ng\6`eS�L#�qId�K�ix�ok�3.�����`�O�2C��vu����!Á�q��7Iϟ�	�!.1�ͼ���KL�p���0\c��%X/jՇ{���5X�8V�*N׸s����b��*!\�a��Vb�Ƶ��P��P��6bUk��\�e����珛�1u3N�/����vq7�y�0[On���|�a=��qqWFt��n���̌@��og� �{�zv�����-��k�<�,�ܜ��ˏp�9�y�����y���@��n�"�Ej�:7����E�O�g�wX�#��x��#�1�gBm^5��shzD��k���-�C�Þ%o9Ț��P�R��S �E>R.�|��Vf���B/׫/��ݛ�����rW�G3��_G���X��jt�;����/��(q?G�FR��#0²5F64�Lp�
�aܔ����L쯧k� })��G���/�GVb�����uk�l�63f%ȭfLO��|q�;��87��ei��?�    �����OjX$ܰ��o9�l&�f���mô��8}�������Q��VsF#snL�{�{ǳ��?��q^�;�6յ�Ű�HDS\����W�9:k\Wk�w�kXo$�>y�sG��89m(2L�V][$[��d[;:9`wQ�1�/)�Q�!l/�!��0�M4��pYFF�L��\��1x���u���5��	1�%(j�ac�"bx�a��!l�n��	!+rԲ"WN�H�K�x
[+
g��:�0��Q��4��%�p��aj_q�'�0,�Q��,��E�p�KԾ��NaXU��U5C�!|	!<�Trr[W��	�jVըeU�<b_D�?���}>aU�������Cd\��>���̬kj�55kj̲��#X���f�O�uI�������J?��^��������a~S��y���tw�׌��\Qqu-Ic�� ��A��=�ڂ�T�+�9k��pX3f��"xP��� ��&��t� �e��.c����I ��u����8eE��t�ȷ׾{���B��44��|��?e����ϗ��Ã~���f��~��`#��;h�^�-����^�Wy8-�&��������X�����5|�YK���݇*cL��V*�ooT��������߅����a���dU����Ɲ�pv�D�p}m!�T��1���E�mO4�N|b��1�����(o�r�ѮNr�/�y��nc��!�x�y�+��o�g�s��/������|9y�����ᤲ�Mw������	O��b�!W׌��ԏq�p�8��ꚠ�#D���B!�T��U�)�#��o}�k����=~�7�rs-zفǼi
��m��]���`��O�: ��R���[��Ng�UZ{��&Xٝ�u6x�Ά���\��"3z�{�a�-����1��1;�k؊ݵ+ࠊ�Ry��F�I^�u>����맖ë������~��hxi^=�y�[%� ����9���k!g1j��yk!���-�Z~����Ζ�o�ͻ:�'������^q`)N$�Wט��yE���t���-P:��J����#`�;�]���p� i�x�����V��f�v��m���r+7���ݛ���i1% �R=�SWH���zX�`�\���:�qR�>1y�c+.y�98h@(N�h�ص�Qd��V�ؿ7$(���"��ωD"�g�<���|���O�
Ot8� ��ScR���o�y�#�_o��I�^�y�~]ܭ�o��l��� >c,�q��²��V����)8(��5�6��`l?�	�g�X��u��žci&	�������f�N�UXT�ei�#)�����a��" �+��wp"O��k2�2�7+|f�/�J˲(9\��i,q��fn�{��a߿�y���&zm���>�!|�;�8¼����淫���|=�v�~X)糷!̿�?n7w��������z���}�,���P��iЕ ���Hs��B�f��e�ҩ��<�,���k:peؿ�m6��b�om�3}�HrZ$p���I88Փ���h
xz�����7��;}�eV�ʭ�@��Hĺ{���U�Ym7��ώ�!��B�����1����n��_Ȥ|M�q�9���Y��à쌒�����&@�q���	6��O%$W#"��v
��)9��M`�=ˋk<IS��~�]:�+�{��<}}��K����}f�E� �W�f�K�*�%�E��E���]tp��>>"��>���ڷ-�����4b_ǲ=�A��0������͟Z��P�Avl��⃆���q=��j��o���W�Oc3��Rgg�!2q$�*�G3�u @���M��-��ɋ��_�d���5��5P�Hb��>,�H��w6/�!&���p����@��q �X ���n�]A�Y(\�����lxaP	�nKh� �@�`p�������Nk���F?H��6G���'7�q˞@�	9�' �~W��Z{ ���@ڲ ��`�	�ol'�N���%W��SGK�' (~:G�"Jc��\�D�փ�ΰ��,�1�XF^�������\u�O�uFl!��\�����/��<Fm��i�+���9�����HYBR�8�9�����<<i�+֘�a��;|[��_�����t���0w��v�3�A	��f.F�T%�94���Ն�9��F���ϳ�/g�@�T����,֕��ɩ{\�����f�?��D
4w�\ܑ�Ǝ�sG��^�]�^	��֌4�gw�濮���6s�m�<X$����˚���V4?½�^`�q/�X+C��1mŇ��j�͚?Kwn�w�R�#]O�a��=��+8��R��'��[V��b�[���y~�2��j������6���l�{�ٗ/��&;�q�v���DG �����h<Qj�F��V�kB�];_���i� �"�gB�uğ��l�^ΎNQ74g����#��I<�uG�6Y�Y���A����<�&���Y��<����7�4o��)&�p���鐧�;�/c6���?�0iH�XOi���U�Ϋ*�C�*:H��q��E?��*X{3{\/�7��e�[�չ�*v�C@[y|�;nY����ݫ�?�A�J�vϑ�rf��Ü� B�3�� �#ж���u����ʚ-��$]f�v���gt�3�8��.�2�2�'�kS�����~6y��O{��lf��=�!��)��"�F� �g7uHn��;(zp���r��6��Z	v'�;y!���9:�������Ν8�d���n�ǻO_'��LR��K�cws��g"�T:�v�d���� ��V�DY���a�7�d8��U�Z�|��9��F%��J,��`A|NR���ٯۿ��M��㑤
#�<�	,�[����k���d��m�ub(Ҕ���#e��h`IW`�ـU��<G�f%�[�}�\W�
M*uL��P���Lk��s0]��۟F�b�����+����o$8�{dewT��G>�tKG�+U�ޯ>}]ԫBF.��]@z�S�	*��	E�B����2M��F�Iz~A�a�D��pW�er:�l�CEx��+��Bs|X;7)+����������v�՚��A�� �y�Y�m���+9kL��pCK�O)�����H9��8+p�)����)�S�IQV�ý>�S�<E�p.��Sr	��;�9��O�XC�����;EO*ܭ�p�9��ӣxC������*��5�Y��Uzt���<��k�e�>��_f_f˹n�W���|���+����]/����pq��U�[�ޔ�,���(��8Fw����&�������R��Mbt��Ol.j]?,��c��+m�n�;��~RSO����'D7��F���bt�Oi��Rd����&Q�!�Kݾ��Nng�W��X�u�W��}%e�[>�������^s���/�]!$�(��v� ��x-��ul8\#����:>i���M�D6��uB��d�A�=�J��
#�����D��|�|4���Լ�����o5!q&9&e��L��;�2P=R��R ���]�M��nh�M�Oi~�R�����2cvL�4�q8a��1u v6Ҡ�C��ӫǇ�G=�!i����,e��~���\�������4?V��K�;曭`}�ϐ"b���ߏ��g�U�Y`�����I갲G33�LXf�a���%�y� �>�q���75�]e5��es�c���7F�M������T��"�h���-�7Ψr%��R�z��sE�����Ӎ������n�%e?����sM��>w}�^�����k�k;�5���p�M�-���\v�wܣsb�>���,��q`���v�!�,yO�{pP*�RU{�^��l���q�^n�\�n����@������\wF����Y/��Tn�٥3ζ���	c����pj�UI�`}��<���Ŗ�5J4!����.7&>��Ce��Z;��l��gr�A��R���#���k��<��<��'�� �q/�ӈ��cc��al���; �R��2��0�a�@#D�F���w�k����ˊ�d������U.#�eU@A*;�    �<sr��b��=Ln�|��WY����=;��dRYMz%��J�zT"!i�pI�ߔr�7&��Z�GٹJ�?c�k�m$X�9F�򈑠o��Ƒ >b�E�sFcٷn��/	�r$�̈��z�1��`$8�Q>Փ"s-�U�: ���li6��S�sN�.
<<>x�=��Ç�u��@`E�ƔFfs���} %�t���i��o/k̪��!ri�����\��'�;9�B���J߾�}��8�Ӡ�4٪�
Z��y���I��4h�8fY�վ]�g�J�_K�f��� S 2L�_�<��}����[Ƌ����/�_�~���T�ª���"��n5-�YMofw�lJ�۰Z����]�3�[|��,Q$L�a
�Y��
��\����VW��@�l�P#��/�T�25U�Lx��ɹ`r��<rXkrjw99`@�Kη���,�s����c�eth`�z�ñF$��d��]���C$�R	B�G�hOP�.�#\HGP$�2�����qZ����r8r�̀J3�w���Cf��2�������z�S�b���Mw�J ^g�B����;4���uu �f;P�/�&BOyEҜ6��k�pCofK����hg���e4�Y�\BN�ҥ��b�ܚ�V�eg�S�N��>�~�2vR���,y�ϫ���~�K�uIK�L@f�F���l~\�6���O_���Ů�w'�`��d�	�Rdۿ��bvu�p��gjo���L&��I���J`��b	�Tp�=[m|� vɉ�.���<,��8�����|�a=��qq�'��	���0:̾�]��M�Q�]��c���{l86Y��
�v�]�T�?`K�]?�K���v�V��)U���G�983.�?��U�^ԟ?._�,��͎@d��Sbg�Lvj�m�X�F�C�`zu����5IR.�8H��
%LH�t��c�w~����y�6�7�6z�j�j�)F�~NUf�_��)�&�8�c?N8�t�8y7����Έx0��D"N����	'�Y��	�3�FL�8ш�e��7�����`�DΈ80���"N���S�8��N�8�������������M��w�]^T��E�&�:y�Λ�a7�A��^�`G���8��zl�!���.?�6N�m0
`K��"�Q���c�i�}��v)�el�b�|l�KP�6��|l�c�+�c�l��I�mc;��nZ�9wl���d��Y� wl����69��bt�������`wl����vӊ��c۫��
{�m|	q�6��|lw6���^��b�WBݱ-bl�M.��ǶW3�b��)�0wl���Ƕ9��f����]��uIu��c;d]�xuI<�.I@�$n]�D]2��&!�īK�tI�$q�$���vȺ$��d ]��vCK��o��b����G}��d���O�h�O����aGI������ܾ�IyB���O���3�	��f�q��"*��Ƹ1�;�Nd��2�_�6��r1�]=�/��$�C�d~�q�#���"��~Ǉ��Sv�8E�Kk��%��QN�.ߛX�+��	Y��M���~�0E���l�R��a%y-���z0d���ё�Mq�@��CK���ſ:�7k����$� �#�ݑ>w�cΒ�+"i���߿�IJ��g
|��gpC���5d�;���vO��d����q�Ѿ��+�.d!��	@� �~�`h @;��
�� �_��}�GC�z�p�!�z� �����.��V*(��i�v��0����i 4���p��i�L�wυlΝ�����#�Li��1��w_�(�����?�����Y�-���"'��|,�r���ɫ��fs�����|�T9p2�5GK�	Z�~\di2�m�|U~�$K�!�l;�ӳ��0�H��?a>M��3�5~n�PW�.`���v\�x���/# .��»����W�T��*-�V_/�v�!��7�l�Jc}�8�~wl�;6xf=t��]�IyG�?��k<�w�uI���M9�lUX�'`�U^Td!t�7�E���,�aX` K0[VG�N�E(f-e�-фf����H�~%l�� ��s����O���+�1�`�='���p0�C�8r��t&�@7����3�T�R��}/��S������tb�FN�Ο��a� NR&�?����q��@2A2�I�eP_gO^�h"dV�� �g2�ߞQ*�b���+����u�i0�$X�I�<�N�g/n���)/�8y����*��7N  �c���,�!�~�_�Ō46;g���U>v-�/E��?������#*���s���J�x�����:+�}x�j��v�5��crɏ9�`�r1+2_#�[�I���R�;�MKF���'*��_il^�����r�QP�~W�kx��C�M��3G�e��?����{}'����~�__vֲ��a���f}��.'FO<X7���3o W}R�!��U���zx��Ę/�e����<��p�l�.O�w0
0�w�=�xo�uy��m�N�w0 0�w�ƀ�����ž����G'�-a �3�x#>��WO�	oU�=!�A�g��,|�����V	���A��7�y��^�sd̀�5�O�a8h������l�XM�ܼ��4���|��D|���O�g-�c6��ѷ��˒pet�/�]~]�?� �)0���#�J��w��i_�'�Q�T��d�m#ܐ���
�%k5�_H)���y]l���N{�_����Y�c����;:?A��8�ψTI���� �D	��W7�L���ss`Ɣ���<��g���C�n�"a2ۯ���|H�m����ۇ���>�\v�M�º����]�M���k�.�K�̻W7/ғ:��G��f���n�{� ����@���f>{�i������>oV���+�O�_1�*4U���=�(������	7��s�qB���u1F���<⍬Q?k�i�ʲqb���X�G�ւ�Y��ߍ�M7��ܐ������Sû)��fjv�AI��*O)�9��t�p+����v�r^a�,k�x����'��<�$�d�`���5�?����3�O���`��?�b-lG��݃v�����^�sN��E}&d�VN�����`��k�&Hw���	%�C(!���8=�n_����#�`J�B�l��+���>H��U�dkW�P��~�5Α�g~3]I��?*��쉊�*���Q���~�'e��O�o�>�l`��N��8<'8���z��hL]�i���'���ʄ ����1:0���X�+���z�1���xZ�A�m����3�oxi��Q���q�����l�Q�g�f�0�:�<��h�3��w���{u��~���+ڼ�:����_��k(��a��
����!���������:����o�Y��
�,��P�����v��b~?����Ζ滳u��_H8BGl͖��V=��Y^J=^��	n��m���]/��������b9yv;��7�O���e�1SOאSfK��HO�\��279ќһovM?�������7Fc����1)�}���կ�N��a�������w,�vqE��B!�Sj�脶8��E\C��s�������4���Τ[��脛�Pk'�'����劎��k�������w��c���b����At;�H= ��E �$W9��U[��  أ� �" �Ӕ����k2t @���ԁ2�N~�}�o��=�H{`��'�_�zN��T�/�U���4$�KUɺn�� iBS̗��Xj�]�f�i�F,���*36�[�49�mI� ?x-�D3���_��6����q���F��W�J��`qc��V��i��&�##�ϡ�On^�t���#M�
i_�����rX��dtC$. 4�Rh���w8M��!?-~�:�Д���R�3��C�SzՌq*���P��D
!2��	N=��+�p�O~<��qC�(�ld��dXw����$+ �R�y�N֘2s�do)y�=�D���,��s@G��/�sQ}�}��	�l(B�#Y�H>{$�'��@�wt���F��!Sg$�4F�    �#�I�&�VI���@�!�;�Q��G2{RI�U[��H����#�H>$?��f�^#��	��2%qG2��|�H�Oj�'�5��	�B���H�1����I���u�">!i�MU2w$����5�&��'d�� WJ�d#�쑌�֌Ϛ*��fN��(�;�E���G�Ӛ�Ys@��ZH���[��Q�;$��5�j|��O��'����#�iM��>A�S ����ߧ�J��T��lt*����ҲQnso"�z���
y!��K�ĿQ<xJ�ŗѸ��4��1�L�ˌ�c�/�L��tOE��Ȉ�E`�/�	�b���DUE�����E`�]���D��	(��y1Ai���g����6��߯����x�����%[ֶ%{k��$��#F��B�ď��O7@޺  ������������]u�\��5rr�=<ԃo�N.�����9i<��ϼ��j��Y=p�'�����Ϯ�3�⡖�d3'$pr�\�6^6rr�m<Tʕ�p�rR<��/#WUPWւ:q��8m��WG�}ɤ&��.�w�@n��;`��n�5C*���_�'�O�-�4=�_�d]r$�*B�i�'��.�>E���8�L#kţ�?�<���{h���S#l�Op���Ƴ0RHNc!}�6�������O��fQ�^��u�HL��O�Е��K�B�vws���~���T�۟*P٪�g!��\�g�*�!��G	ڵ`��Vt�)������D��(�����F����W��_���oޥv�w|���W7�d�n}���b��0b\���m���o(����Bo|�������Oϧi7�4��HO��(�(��!D�����G�5���Fi}D��5
r=C6�VCp������7_�����o� G�8�5݈��m-fL0�܌�=6�W���iK��8dڈ�R5�i�1#&
����B���r��?���qvt�k��F�Z�a��b����Ubü3�f��c�mOl�l��4AR��
���B�qL���ݱ���a�1Z����-ڢ6�ldl��w#�TW2禺^6n�8��H Gz�	����bv7rnN��(�Fy�	�����bv7jlN�� �S�؋K"6׈ͥln�]Uѓ��6���QKB����R\Bc@���Pyl#�~u,,��y����z���CR���৫�fS=.�y*�c�c.{[-i���u)K��xl���D �@�YҐ��Jh��ACƀF��ЀBy�Kْ� �5B�l\��@�4櫮Ѐ>y��KŒ�T�UB��K�Ÿ���ѷ��g �>��Z����NlХdc\��~ؠ���@~}CK�׉��l�(��OH�:���,YH\'6�R���3��w��ȯ�`l�BB�:�a��E��o�36�د�`b�BJ�:������3��w��ث�x��� mXldwlC{~)�4�RhTW����U{~B.�B {�[��]'8�R��.�@?nN��`�`�F�K´���RD�%��	**�U	�'���K�a�L�6'(�0��W'��%��:�A��m\:�������W'��%	��:��g�	�t6ݡ� ����$A%p��\
3.�@/fN@ثxGȒ���U"s1љK Ћ�S�3�`�>�aK�W	����K��=�L@@��w�w��Bs)��K��z7��6 �n�Zh.�wEpB� � ����Wͥj�(���4Tį
���K�QD'hh�_:\-4�"@#�HNПP�" t�Zh.F�LFQ��v&� ~E@�p��\J� 2�$���4į	���K�@FQ��9��.��u�s��bs)��8:P�2 t�^l.�s EpJ� 
� ����׋ͥt���N�@A@�� ��<���KZGG��2���>�z�71]�!H�O���q$���ơ��d�Mu��g��h�W#p�e�8�	a�C%�º�:��	ܠx�B�J�A�B�q(���Dwp@+@�Z���p��.��V�'7Ju��ԫ�A<�x�Vl$�lZ���H��
P�V�ƴxB��Ć_J^���?!- Z��
�`��"`s���K��8�=��'�m@+@�Z�,C��k��R�6�@߭Mgh(�W)pcZ<� �5Bs!�0�N�3' *�U	���\)2��1�H�3'g4̯0�jB��*��R�d�(h�2'} ��ho\)4��>c��NȞ1�0�6�4�%Ϋ��RJ5le�	�� ��Pz\)4�"`��NP0P0�*�t�ͫ��bDhlU�)4� �W0�B_+6�"zf��N�<3P0�*�������RٰQT���a�
`~U ��L�b#.%0�,@�~gl8��W�>F�8i�b�O�F�q_H��TW2禺^�6�{�� �U���2��+�^H����v�"�A!��
���
g:�|!���K#�ܽ�� ��ޛ3�A�v�����]2�~ܨ�99��W'��%����F\H�4�
��Ft��A)��J��-qH\'6�R�.�@?l�	i�
p�V�9��׉����K+�|BR �ܫx�Ւ���Ubs)�R�4'�@'��:�����iW���8�L�3��P	p�J�=a.��Bs1��H�4'�ih�_#`�B�T�UBs)	41�B���� }���̈ې�Jh.�X#FQ�P��~m�9i� W	��H�(ҀS��¯0CC*�:��)�Ep�M�2@��L�#׊ͥH��(ʀS���«���7�����Ov����n���%_>nn��l�2�0���fE����6�_�~Mn�;m�b��ެXـ���6�kS����_?}��P��"������0���k�p���ɩ�v᭷��P�3����`ᢧ�ǧZ8�ǅ�<�3�A�;���k0p���ũ��l�d�l���	>�}�k�o�Ͼ��-��,�E�1S��P���e�3@9վ�>,����@����¾�¼Q/�>ٺ��+��ܟ	:�i����{Y�ɱ	�[�����ąg��}[KIzY��;K	eQ�-��L���g�$��5�%�����P����%CK�ޓ��5wd���ɵ	�K�^2d-��5��e�����y	�K�]�-F�:?Yf0��[�d��K�]��P�����5x�ڥ:վ�v)��˿aj;�7���Y�$'ڷ�ڥ��.�FP�~Oc��`ު_��d�ʥ�V.�FQ�Nc����~��Sc�K�\����=��.�ݯty��RA�Ryk���}Od��`��J���6T.��r�����.y�'����qs�x�}�_o���/�t��M��_H�5��N!�{��5
�G*��{�ӷ���o��>��&��|hy�ޯ��ի���z����Z���}�����+�շ��d�_�z��f�!�-Ha�^��l�1���O3 �e�X�a�̿b$��#�I���q���F��|���CNc����z����zw�O�HG��ʐ����#���kXl�xBq|��|$�RO�ڶ��~��o�?.�������J��4<n��K�Ug�q��)%������C�5�#l���5/%����5����icG����)�dGv���0�b�Q6v�9�!�Vg�:����Qow��ŋ�v�a�<�7��ן�_�իB��onޛ�`:��*�f`ZXz��"�/$ٳ��.����D���{*��*[a��#��a��E&"�cD����6���[���u�Β�bk&��F�D���A톫}ֳ{�R	�7�f���:�D�&j��(�)lh���|V����������C�n��=t��]�Pa�*�o�~����w��$�׆�tP���2��̫9V��;��f���k��!aN�Ԁ	+V����(�F��b��I�7ʟ�	���CTC�9�ϐ��l
+� QM�����:!@Ԧ�fs�yx��Y�n=` �L�M��5    	�p)\���V����âB�����(2B�=��Ha I)�3�oV�x�I�3$����a"O��S##2=�!ݑ9݊�P@'�ǾO>n7�\Iq� ��^Y�W��F�w�w����1�#�峥~:H�cS�����Q����������=���I�P0��w��,�X�c�o�&g�,�p� ,�++)���V���"�b���!�O	jn�+l���@�Է*�T�75,(��v,'Y���*�7���9$qi�+r\��V�ayQL�3������{s<�N��X�T�����X�3x�|�x�\/^}L֟��6G�|`���Z��/����1� 4�?���?}n�����F�r��쭺�����Y��E8]��碀W/�+��|{���!���w�M��W�m�����K#|3���0�D0=w"8k�3���{L�I��pɪ�$�z�Uש7��5T��*�(Ҍeg��9�����3]%�s�����YN�pYR�3�''�p��>�;ㅆE��&Y<��VR�J���>�,����n��q:v*�D^�'�O���g��GT�F#%$W#�e��J[�~V���" x9V�zX���Oڂ���Y��Sh�a2ĬwUO���vɲ�ȵ%=1��� ��ONA"����b����YV����Q�ٸ�	� �Hw~&
����Y��
�!2<!(��؄#��#T&���=��/-8�.�i1�����idno�v���w�_׻���z�v���v���{6���C gr����!�ͣ�6���/�1*l���?/L��^�|����WO�'�f�8���3L�g���x�����Zl�\�9w+�Zu�ȞǲY��̡��HA���+Ŝv�}ۣY>j�3�_��=;�������i��l�Z.�m��Ü2q��ү :Z���z���~;��_%O�������z��<*Lg.\�H��V�Zn����~���������ƍ �ظ=I��I�;(�lr#f��ň���=j���lYQL����!F�'��	�f�����I�4�Ot@x�hKb�y|��!E������Z �ɍ��C`��Wً���8$&��k�"��%f,R���0���{,ˣ6X�<q}[l���>����T=��d�Y�V�W��g(���>q^�y�����5A�c���H���Q�����2�k�t8��*b��������'c�i:v�p�]��99^V�D���^�0�ü?�{u�c�"�R$��ٷ	�ӆ?}sx#�R7ٽ��@ρxS �1 ��5�o���tY9�:�he�4X����^���F+��Y9(:�,?z���㚍#\<~t��?~\�t�i7FXU8����:�����|���+}��x��p��@L_���02�*��	4�c�H� � f�Uz��`���-����Ѹ!�@ p��Y`���9��h,U 9 ����․ ���(������2��Ԍۗ�E(5��Ԭ<F�/5�s����i^j]K�D?��xh�����ט����=X����@���܁�����@��]f-����q���*"��"���[ ?s�*?���? ���?3�;��b�hTS��?��j
��)~z�����֤g�4�0_��j��R��^��2�X19H�z"E�}��'VS̞-�b�m�I�0M{��S�e4U+E�3qm�sn?�)�?��!���_���I'2��د���*_�x2GT������:ÆJu�|=��+ U��JY�%�c�S�yist�	��|`�ef}��,���q�}�y޴/=�k���j�
Y_�K���*��HT]U��������lW?P�=�w�@_BЉT�@�P�}M	�T�_�4�٘h@���sP"�O�J���*_]�K�<U�2Z�JNM��&<j0� ��t�v���F�@i;E��	�v���� ���=z����x�N��SH�]L����>�,[sJ���o��������~�P�GqyTa���¬�[�֐�M�w����AZ��(3����3c���ϗ:�X�}P��a3 v ��������Z�&13�$O����i�x��:�t���U��*{u@!�"���eD�-��� ���Cs+.Tm�em��(sE�?M�� X��������6�[�rNN
��b��2A�!�wR'U[)��̮�p(!.x-�KYE��܆���D���?�O��B+���
���|Ǜ�Y�V���W:1t��N��IAOQhd͠��X��5���]���	�H�k���v�>._��ֽ~؛�Ѵ��42F3��i�����������]��"e>W������ǎ���]�!�v9�5KN:�;�9�A� i�q�h �A�ƣA�Y�p�ѠSAEm@�������'):$.Pl)�+JnD���z��8j�UBH%ח��\~���3�
@�#Lda�I��������fD<�x+x㏝���j���%��	T$��2p|V>z���M���z�7T�)kc�$�=+���<�f֠��A
�s����&������Sj���J��y��xM:}��{��n�Ϡ�|�@1Q�０3hGh�	Z�bՏ�`�P��Vt�y�˭��v�x�<$`DU(��V��7����k�	��'Q1ME�B�t����͜��oZ�q���:!����@ٮv���d��9f�z�۴R���w7��[�����O�f��c�o~�?�?��Ǥ��}�����Ay.Ov�Pk�y�]��B��/�h�1+.���5^�$ ;^R�0n���\m`�o�r��kT�pY�D��4^֌v�J�!l;
>�ַ��H�vKdP�f�����v�I�w~�h7c��h'��F��",�-e��u#bD�2�'m�-2��Op���w��������0}���%��@�=�9{[��6��@ ���~X�� 
��t����� (3���28@0sD?p�����#��B-��^�ş������/�RB�R庼�`^_^�`��b0�u�{{������K�'���e^Fk���-��xa�z��h�ӏ��̷��Z˺]���,��~s����ū��_�_7O��.n�\ou���-�������}!W�:�fe�1���fu��׬�5�u��ןأ����8�E)qI��(�0z��8yF��y3�"�>���&�''�(��5پD�|�1l�7.65��!a�7{�����r%�ۊA����W�C��x���9y0jΒ�����^�\���U�[�����qs�6���O���jx��FH�$FD�ZA�e$�"s�|�UD�z��1!���RD��g2Bze�9��C>�1;`���;������)*��L6E������t6MP�f��ڛ���u�G�p�y��%G����4G^���k��u�̥� %#���0�D�����M�;(����@��Hq��~�K��4wU��Z�$����^(A)�UK��=���K�w���m�7I���^U�?����z~{��Kn/�߮��>���̦���{��L��m��MhD�hs�H�溴���1�*��|V���ε5<��k+��Y���!���,�g�Z���?�������fD3�v�M i������,��9��*>�UuV��1�D�����8XʃM���0�}��ݍ�@݋��H�V�׻�z��O�e��'�Z?�u�����v�?���;�|��o��cfms���~����T<v<P�IS!���ÓF��$�?<q��;�KT����.��Lڇ����eu��y�W	��ŀǥD��em9%G�04qMd�]X�q��xG����w	��D��~x��~���S��@�HZ�� �q$��/��':�[
Q�~��Y�n<b+�4�2f�V�dmA��H����� r�5��@ 3�ّL���0�͟o���ֿ/��3�����Mۡ    %�BKf��~Y��������Ɓ�YG�h+�Ep�"�[������.ԯR;����8��j�VgLj&�Z�|l �?�����"`��^PV�\Y����n���^t���_d)vG�����yye^^e/[�f>L*�P$��X
�R�1�pe��@�+_O�W�!��E��o6������u	����"�h��d�?^�5���	!�)&�K����6�C�!+{�����mz�!���-C_��F)U���g��vM����⯿��HDJ
.�$���@3�Ei�����Μⱳ�^���t���U��%�J��{�{��H��Uڔ��;6���-��lc�*��v{U񸴚�jc��΢TwƢh��h��w��'�+����cr1���{�?��*��m&khJdf�Y-J��-���b��X���˳Xd�X��X(a
\kX�|Ɔu.�=�T�+{�Z{�����6p�}�������;��^���z����u�/��D^���%����&X��n��*���̛8����b�=�ݧ��yD^�y��шe5�����>Y����p�6� ?[[>��?�7�}��~������k���6�r��n�?����_���2�V{�X9�`���b�r�+���sZ('�D�^JũE��[�>n~ݬ?��4����~��"����#��5)cʅM}8�rͶx�=K7�~�-�������W��[H�Qf�M����_�K>�~���-��
3�[4��8Ҵ�:`8��AF"���UE�d��U�'}3�H�	<����[�B��rmP�ڎ��g�q���,�y�^�F\(�r9�ID�P�>h��/�(�����Ɉ�s�P(씊��Հ"h��3�<�_��CyHH��߬?���O��ʛ�}�)	 ���P#|�<�m �Hۉ�YLQM�S�pA"!m2��%�Tے �A�@��FB�3�7�a w�89.�mÓ|Ԯ9�����?:�������F������uUZ�	}i����6��E�uR���}e���j�_��8�`f��;ia���2�:��B4��sI�y��x��P,"5L�fO�L���7�L�li��g3|���ŧ}����<�D��r�D�ot�ww��S��Q��ԭ9���cc����03�Q�rL�4�f/~>sGvs�(�p��&�Ǜ:�i9��6vE^�mq��!�5c�8�{6Đ`Y�6[�#B)���7?��"[�����s���m����Wn����n�Ѥw���0,���_H>�;ڟֻ��>X���o����u����H���#Yv���lJ�2���M�t���f��CYRk�n�|
�=r�"��9���O�H?�b&[�-��,�楑gܩ+��,F��Kw}L[��;؀ic�P������f���<���.0��3��t���*���W&���	�Bۓ�*Q:��4~�|ΗW���)��!�?��1e��I�ʰ�+���?���<��˙t�0�N���d���~�i��}������W���z����lfim�Z"�u�xs�l)����~�aM>3�ߥ��D~�<�t��E�Hl,ؠt:Gg�t��Y���0c[6��F�0�:^;SAg�� �R��`�K�����9�Md�d}N�р:����)x���^���:�)�a�@��`�o�M	k`4ƶ�f�jmqX��e��k��e��7�NB�V*�E�e��.^%O�������zw<L{�A����S�y|�G�j�����oj4q�m޵b�𠘅��<Ј
3�Fߡ2=J#Ƴ�2"掱���g:>w�s�u/�-��wU^����/�}��T�&�Q8aS���10/��lwpD@m��a�B��X߱��t�����Q�U��Q�#�DT�"1h�P�U��9��:�(�_R�h�(+Ҍ�
�vUߕ}.v�;N?�B�
�u�������5~�K��2P8&_�"?-����^�����(��P��!��I��O����ܜU?Vhu��	�@
�i,lB缼�f�6�f�uN&�-qK���=���}2���M��u�e��&�p7.�<��@j�*�AkC^H�߷���,jv0��jN�x:^R�4���i;*�d�LI}�)�BkHԭ��}�q1]Z��;�mD�Dt�U^�����I۞x2<���1W癝���C�� �(w?�z�߯��Ý��"Q"B�<���a��m���c�T?Lo��F�X|�V��s�l˸�`�Ě��%3��B5V�.vJ����N>�P�9���jr�`����BqT���w�,�]�R�%O�ޝ�V�l�[�4��B�S�.�ʂ�N`�����j�\�d�j��Ry,I�_�������Hq�)5��ۿ��P/{�Cm�s
����^/���b��2�W�+��h|,�����ߛlE�@����ş�ݚ���Y-�e���{����jW!K����d��O7V���=�UG��^���5Y���~���]��*���ɣSL���c���<�7�n���I�]]���"yH�G����?F�價2�}��\tz�G�iX~uO<�����u4&�IuF��k�\(3b��s'�A�$�lj�d���<$a��F;��p�S����oP��FM��m��M+p��'�y�#�U����,��
B������Q�j�vd޷�]'�sìܼ����Ñh�9Ѣ���} �o���C�v��Ԓ4(;�B��)E�gK3�2&Hb��CE���T��
KI���j���"�2ł�����c�o�ey��6�Le���D��pm�(*.(6F1*�_�@�ҥ]WCWs�틢�[�Rs�K ]�R�=�8���È���cn^28f�tN:.O���?�b(���Q;3�*�1�?�[�`���V���z�U��ʨH@%�*��y���B?�Y���σ����_ַ鐁E�G\�����O_��Ǐ�E���������~s����qmM�\�o[��g�W����B�:����7�'��{�/��J�����M����P��=��A�5���O���w�y�*{��	��-��m;U�D�'����B�r�"%���ɿ��<('7ۧ���p ��� D (���Iī��/�}@bFH���~������0�s~M������S��h#B�� ��* �7�o׋��:�\�hS[o�vɗ�ں�O�=�}\��t�B�6_�[�t�C�CF@�
?���6*�d���� Lbn�|�ݻ�<�l��R�r�O?�U�3hޡ��Z����Y�t#��؛5)EK"/Qf=Cr�q��'�>CJQ�׷���;��5�
�L ʲ������	vp�,��ŀ�?'�@�~⯳g	G�ӿj�d���	B��ʏ�*���������o4������orcM��z��(�*���P�=�,1���*�̓H$���S�Km���$+���HL�h+r�Uj�_qR�т!�{?�:9��J��j�PG�3����m�,^|4��>�!��dsm�,�*��7���w��í^��7zj>�}�� *��Y׌�`e��L�7DM5�ثpO��{J�RmylӪ�fq
n�h��ҥjw��l�;T(�)��r�@� 9��P��+'�_I����b�Ԡ"���7���H�V����q�� �]x}��~Y'���Q#�l�I�������<xC1FU3c�72FEc�Dʚ(�hF���̜�#n����G��(����˱ �sEK\u�]"��#Q;��z�[r�]ZՖ�J�C*=�!ړ;�9;K8��?bE5��T$�N��
#��<e� ,5�c�TbK$�LV�.)�rb�%�� R���1�Si��k��J*��ӯ�Y3��ۛw78�EU���X�p�0201ތv:��9�Z��T����P
	$��l�>JQ$<�\�4�8��(m�5=H�f�x��>�:���gu}��Y]ExzƖgg��R�#�;�X�#Pf U��{��N�!���D�:�Hd$����s����w!A�b��b��X�N�T�N�TW.�T�r�C�n�bЊ�zc���[NΨ�XǍ��������43��<�RZ�p`ql�    �� lu}��2�=�U+���\�q�v���C�0y��o/~O*���$B,bE��t��{��3�5ǫ�cj�3�r��?v��H�xֹ�Jp��p��"լp�*i�a0vA�"�(W��� ��j�D�KVHT��'Wo�*O�թ�d�����JkG�e0qQ��upM3FH�.�BY88q<��Q�H���,qĔ*{ݣ=��`jA���;�=5Q��giLq5���Uy���.APm���4bUz��MǔH�0st�i����5���{M����]=t�
��]m(���~4kO��z�/�̚�R��o(f��ί́^����dZ��g�䚱35��v��w��ɵ��+ʛ\ǥ.׶>�����r3�>�I�3��	e�\�CX7n�O�4�;,�6ר���֣Pl�❳j�i~a�G:��"�ܣ�m�MY���;̰r�*n���O�=�����5�i��x	�H�g�[0��?d	���ZB����C箯�fI���N�*�����"b�:l)'�_� ��P�/��ԉ�)��B
�b�.{����0�p)��"OCM?l׏8�e�ԫw���S���7+��)/va䌲|#�΢9�fp�CT*
�)����/������s��[e/��$����9�\�L�g��Z� ���������I�v�g�'T�wMa�h�C�8sU�������n����" B$�ރ��~���������]�@R�����[5҆�Y�GM����M�0�&�Y���T�cT��p�V=���)}	(�wC��\d*.�WlN7S��-��g���L�$���w欶X9g�&M�Ÿ� ��7%3����_�7�u ���Qܬc�l@�Lկ�P�%L�e�sZ���1:�u?�$RoH�����z�z����	(BQ\Lx6����Gl)� ��!s�GI>��*�T����)� �����U>?ݼT�8w�箦�l~z���&];@F�gB�x��w��������(gvrp��%�q�1}�ĘE�gH�H!e��J�l�"��L����#��h/���<�{����)�� �ɧ���z{��T���d3�� -�ݤ�8�r��4�o�D
�m��������4m*���?�V<� G��hA�3Q����A�_V����h6ǅ����&ӄWy�C/��h�i�<ܠ������$%��f���]hcȵ�"���=�%�'�S� g�.9[��r��S��Pk�b�7<g��������W_��Bt@��*�P�nG��?�إ�^L�v��&&�э�e�[ɦξo�U�{�2-��ע�x</����E�%���݋:�mQWǬ�x���Ѕ:��6�tk�:y/�@�Es�i�z}�?����cf��eV����5��P9�j���P�cir�4"La�����yX���gx8Ǽ����tL����1�S[�#˰HG�k��!�}g�f7�#%�1�W3�4��#V�7����+�9�܎}�K�bz0E{0QL2�9�6��6��Pk,K��%��ۻF����W�f�H�R�(����p������[�xHhM�(:���*I�J��8ݖ(�X�elyj[���K�ef]�'�ɶZ*V�@���i�������@���k/#_"ۮ�h1\����n�g��f���������>�cpT��~x����Շ��\�F�s�w��(b�B����jm�!_��BQth5���3�w�"p���>P_�z7����u�q�ON
 �P51�]����!Ѵ76��9pZ]Y���-�3X��N�(_&����hv���/���o�?�'!�ҨEv�b_B�Qi&5����Ox��Y�ۙrko�cV�0'̖HO+ͤ��C�����es;XA���-vJ��7�y}|:��͇OPy0�ʣUv(=�:T�E�k��v�|Q��s�Ik�L
O�qH/�&�1m��R/XA4�\М����<x�,�]g�꠯�*�gұ>���*�,�������7WW�7[#�^0����ƛ������9l|�YM���3��5?�n��1dqs����KE�	� ��ի����Q"��xU$��l�=�VPӣ�%PiĲ�����sb�xrf�=�-�h�	Y��dQI�^5k��G��9�*��F�-��-C$�{8� Y��z���.�b3-������红��/����P���N�p ����^s�3{��m��>t3�1F�+����9T�g)�3����M����t�t����tF��|����/�/�3sd ���l�a� ����U0����*��V�W�=Hfx]2�&�hsa�s��Q���wZ-��9��UTxg;�i;6��w�`pWk��a��5?�)�C_}���у䄻:��0���?�a�?��'�p�QHJ^��Ql���>�%�;έ�c3*�y��f�{�I�qN*�nk�]��1h{GR^�b� 2��@��Ѣ�FcҗOO�sR�#�(6�"S[A��*w��������?����dK{(�|��'�\�w�Eͅ��kLZ�9�3��w&�*_�}��]�D������j!Y'�B	c�2	gy����hT_��Tfs�����o�.36^��|8�ao-��.��^e?6�{<��.<@+��������~x�e���#o�G�w[��X�~��~��6!<�D�G!%�a�g��n>?=~4�,!��̟�e����������N�����~��3][��%�%\4�� ��U�n����������W�5��ng������|�����w����_srhz^Փ�8ǁ�lX�ă���4bQ� +5(���;� �qK>H����·p�4J|�� A���r�A�Ge�{�|�|���8|�nCT���`��K�^:�t,>@�!�i\|���%�!/���ć������Ň|\�����%)��G۟�D4�@���$>.~�}��m*Ѡ� >T����?w	<�|���� �-�Y�3�� H�3��{v�5��[��q�Q�*�ظ��V�֯0��~l���i"���«>�m4��K���L��
B�B.�A���>-V���L��\ܞ�Fz��/�5�2=�ID�ED@菂�����=��S1r�ςQ�9��ڿ����#&��Oy�� ��ة��H.H�,@zet���C�3�#]b��0T�?��^���pB���!-:5�њ��qIJԐb���)��|H	�WJP�%��?(33�6.i���T�h�Wc���?�d�5���.Nx�='歽�i��?be�vl2��D:yB\�g��:�W����L�{,&;���)��{��o�=l¹��"+#�Y��#{Vdys���-9N�Qy,&������-$�Z].���n��o�]y�2���<Iz�I%��h�p����� �#GH<����>�hL���,Ab%��#�iK� ��঑p;V;ܤŀ�Ȥ1"fz?,����В|�m��;R�}}0H��W�U�3����y�n�<�c��00[�n��^.�bҧ+�C��6�j�ڤ�}���M�.]�;����̩��aY��u��L�u�L9����R��ee�	.eҧ(�f�BG���O�:�q��T]Ga���K�I:�
U1�buE
x�2M
�j�'V�!�@jR9�FU�Z��iL��i�\�s��_[5/B}|M��_��@U�|��*�a��������>r����[���
ٷ��5��ju������Aѧ|����I����|6>;��p�Z)�֪��O��>.F�qI�;DYC�<�e��'����c�rU�vY���$���o�?w6���!�0�r���
��#����i4j(���J�%�Y���/��U�s(����rh�;C���)�
�]z��n[�n1�!����8Y�N����dy� ��N}�c�\�d������r��h�$,�����!��6$t�!�$��I�p	��8t���	-��Q|g��j�ڲ���+h*�kT@������Z��c�U���4K��o������Y��9�՘lﷻ��6�ޜ/�    ��*�Q��nEu���s�8�����1�$��lZ�yFpd�{�ة*�P^��PR��К�Ϙ-����C~?=�5J�B�
��YXO��������D�ة_��A��KO�K goG�#Ρ�<)��/~�����Eq��b{������El!��ES`ګ�*1t@���Z��aա3��+�:�z�̓��ĝ�Aqg)�ӜC�<��P�y����?����Vgt���j�JL���Kp�U�ذ������mַ��ۧЊ}~�Sm&Esj!`�?�)סj�|���l_��c���0�3�Gv�v�YmE��^�#Ƶ���u84	*�hp��z�l	�zEh9��az���f�#��E�ug��|t��������Ӟ�\�'�%���ɤ��h��B��F̋��0m�rL{�9Aջ�?���oy�@�|z�#:�-��	�tY����|rο;��\O��h�Ȫ�OV����|?�Y��bW���&�$jd�"$l ��a!�0��z _�@�w8���򩞊�X� ���w"i�{/�'!�>�ޫ�?��sl��۴�B-,W~��ò�>&'���m�O���8o&����8Os�n�Í�b�B�':���LO������u;b�U������G���).�sk+�zǲ>� �P�_�)��D�K�³ǟy�xZ�O�� ���h�~��=��7��	ﾡã�N@��|��"D���. u"�%m�ԉ �%r省w�w���O���_/~x���Ż��~���ei��+M-Rt���a�f�"&��P9�|rX�=�c����|~z��mܕ���*T�aP��,Z��ٓ�����W
�=��'�������G���n�t�����&$�g�H���/7�h. _�#p�+���"�#�`�Z`���[��\gtH����R�ŝ��$1̾�n�tEt�������L�u�骰KX�0t��D�sW�X���|��fG�d��mD�
½�V��˥����;�U��,��E��?]l ��	�N�p
�+PuWio8K/FƁ���p��
��Wd�텓W��7��N_L���*���n�)�I)r΂��]\��s�8x�Pا��������TP��
�rz��RQ�Xc�f�ء�kȒø9J
�+)^�|�L=����|���	��K��W�m��mnW/M��|���+co�fK293���/+Sb�R��g@ܱ:ܢ���w���}s��E���/���r���}i&�d:�e>������5擣D���H�'
QbpH���f*ҌcC����<q��#������v�	�Y�׹���>͠æ�T�����[\mr�U��عf�lH��ObU�,���[������> �c�2����ګ!�̗aWH@�E|�,@4�E.�Mw�4���j�V�I^m�j���[�[ħ�*1�`@�'�J���'$NiWOs���{с��^�+�z0lhK53,E�l��f�Lb�*kwS/~������\�/�,y�Y����_\��������x%_���d��,��e�c��'�N��\
�����AΌiM���߁�x�`8Î��Q��u
�j&�Υ+�V�;l��;��A��~H�[|���K��9��<����wOw���śB�V��9R��V�ZN���d��������������;��9�wPL��d0�!�逍^p���h�~�"H��*�?���!�h�?�pDd L$^ab�"���O�a���?�p��Q_1pZD��"n���h��{6?�Y,8��?��42�HC۵��2.m���>���0q��\-I���C
��w�#�*-�Ui��aT{�JF���f�R`"_똇6
Ϊ����AF�0wL<S�Q�q�4�x�q䴱qC��'�Ig���U�ǞY0�8��ŀ��n���b8]>W15Qホ*ʌ�z�b:=��ɾO��>lmg
0Q�&2� &�c��Q�=4;�,[i�-&�֨.Y>���29�rб�iԧL+��n�v8hAf�}T{��q��jR���A�F}��a�;S�e�:毈𥼆Q�ʆdV�G>^2�[�v��k
WW��|Uc�c>~}�w���������|�D���t������u�N��tz��O�����a3=W�E���/}?r�6��kޙjꘑW]�B�m�FU�an|�d59�ɩ�l����;�R���	�%A�	� ������?����y.��ڌ|����lwK��Z��
��]�U[�ĵ��I;�^2��3�l��l��d[6���@
tG9�d>�.�:k]5Y�ɺr�C�{����%���G��#�ὅ�f�p�v�WmQ����u⹈3��AF}"�2��m�Ÿ�&�t�D�ۮ�����r'�@C�|��O�}zZ1d�g�?���v���k�}�^�c���7;�}6s�ǪK W*��W<L��0E\p�=<4��I�*p�ɨ�����̡�c�9���db�'˩��G-�WXE�q5�jCl�"_��zY�L��H�6G�,2X�ׁ+���O�UA08�@bw/ŗ:]=h�}�T���Zo���z���=����^�V�Z(�*B�y���GE3�0MR (�׼3�TA�@A�|
�2����x)��i̻r�3���L�m�9�_V�#')��I��g ]b>�R����sV$�$	y�%i�)F�9ڲ�@Rv�5��W�@:�|ҡ����f��x�W�T6�fΏs�^u1rO�n���Ho�Oz���Ϭ�9��t�mR��{��qr��#�ؒ�_�}DOL�Gm�������,�kĬ�m l.�5�*B�ם:5)��g����#����,==j;6�U��}��0�3�7������C�����UDY�e�l���Kt���s��o�2.�f�u�֪.@�Ġ�8h�xE�e\�c�ѧ��a3׬���6yX�L�>�4E��da>=Y��m�ױ��	�)FD�����{�ix��-_;>{/��bf�#o{>K�ꃡ髌Ig���l�粭�?,�K~K6��8g_f�#�Q.^D�W��9�/��'����d��GT�L#%$W#�߸�q,�4s�l�%Ӗ$�jD��b�g��dy�A1c�E"�q��%~<;v�y����12�bsǰv��w\q����OƝ}��
=�����6���$��ا��bV�	3@�c�ȹK���\e���4T�������ϫ ��'��f�g�k�dm�
��/u�@��i�h@k*����E y�p��N��*�����y�9gm�b�����</׈|��`C(��KU[����[���8��4�ܐԜ2�G�M�@�7�)�ٹ��p�L�����&2��̚C����̛͍��8���"wI�:Ȳү4�/�/_�UX��{��~X�7���>��iKfE5QI-,� ��"���;ݩ��!�Jrs�П���}X������1����e?t|Ħ�GITr\؟���I��y���a���SD��ӳk��ឞJR3�=�&�1���̚{K۟����MOOr<hخ�r<^��}���ۿ�(�fV�m�4���O�����\������ӹ�E�Ή���
��V��>��>'9�xU'U�޻�	�O~���c���7=}�����X%�}���������Y�
�{A�,����\��9���ޯ?<����k�9>�-n�I�1�q`Z����H����t�{���������M��?�>��rBd�X����%ۇ��5H��@ͤbQl<����m+���i��,�~ȧg[IO�G��I�f�|~��?�<�Y.����L�7٥y���>�4��!����i�X��0I�a�'&em��|�O7��4�m�tƖI-��`� 1��0�y�m���Y�;�U�� ��QR��v�vx��"��_~O��~V���%���6+�p8й�̃))�)
��>|.�Y^�-$�*������)u#!k��<}�>�(_C����
���G�Ǉ5�Q�V�\6>��jǑ����M>9��6����y���-�1=    ����Ty�Xj��� #��7�n��*����M73͖���ٳ�4��4�D m2�����z�]B�D�O������!��l
���h�؉V��*�3�>%i�cp|dG�Gv
y
�푷�1I(:�� ��cr��R����č�Ĝ�`�D"}�3���B��С�s�"D&�!�s<$�5No`D�a��/�l$}S6�$�}r��i�~|�/^�CO�YKQD�
eQ��?bʢFv��f��_�'i�����U�+*6��l��8R��I��:���D{!�v��t��Opm�k_gG��Q�4��v�,�wg�빔f�ī���
vR����Nlu�:��5*.���nNu�TŇ��W�"�Wo_(�Ty&��z�N���l���ֿ`�v����]�^$��ژ�+�Vj�쨍,z:Y3���evVf��5>���?���8Rx��z�f�x$Ly�͈���$Gg�!�y��O}�Zb%8U/��g��o0>p�<�6�?)�P�M��zђFĝ���O�����7�	�VW�0�T9�譭B�2�JZ�^Jz��T�5�88� �0�"�%���H��E��!ƧB�8R?
Ĭpz^�����a�kI#�i�2�<?�E������R�V���Q��jo�O��;�WWX���\]���C�O��T�H�����Ca����
�"ds�g���1�d|E��r9��U ISUI����7i��o<��w[m���a�[��=J��m�X!GkW?��EIv��Oψi��+{��}���YX�iTW�����umׁz�i�	�����%%�Ʊ���L׬
:�mi>eu�SVo5��������+Xhk}�����[��Χ���.�z�|�\�5'{kP�)�Z��x��&�=?G��lw�8B;����7����.���iμ�^�<m���m0*�q���Jl�H: �/y�j[��9y���*)v{�̠�S^����a��>&�j4_\����\�z�c巑VE#�-��f�N;r؍N�ά\aC������~�9�D������ Ɛ:�)�2���GA��A��X���nT��;f.\:�n�eF�����7���A��
��ذ�)���2�N,���%�fGz	�:R�%Z��Wku8A�������ߗ/��9C����F�U�
�6��q׶A��@�L��)h�ʓ�Tq{X\}�6xL�@P')�:�Q������;�u���(%�.��aN@)P)��(������.<�&�<1�Sm���v�)1���Q�c�jQpb�%�gr�}3�E��[��c �/���O�M(/�9��qO��'U�>hC���^�9���H.N}?`6\{��,����n7��w�[�<j�w�������A�B��
5r ��?����৴rU̼�͊�zr믴
8�F����cN���:8����lP�r��lr��{���0f#C�$���@RH̊$$�-�mAE���ONOq�T]��Ģ@Rz��
�@$Q �+|�><&I`h~[�p�)�'ypcN��ă�����9�M*�5N��<3��[�D{���1eh�o૑����HM~<]�t�X.�U��V��c���+7qo׿���5ms���D��';Q�j�g��s��r- �f��|}
�0�8�ͧ,z��O�!H����h�I�<�[4n�z���F�ɥ.Jפ0ܠr��V�4B:'	8�4Fe�Bq6P��\n�)�ŏ�tEZ���$�R���x2�B�}:��!C�䱈�^��,���\B�*X����Ul�,��3,!?K�-ެ���vx�O��nQL�z�F�b�?oq6�V9YB��T��s��;�h���6�l�d{��¹�t~�m���L��[�p�	��
�K�w���g��~a"=���H����(d�ŉEz�09�|Ĥ���D�;LY�ɢ
,��:��9�l�c*]'��6�����^������I��rn��B>u�ٷ}�|����1����<X�U�}D	�~�_5���X�Q\8R����_�;5����O]U")8� ��ֆ=4u�tXȧ�2��1��zsA�Ȏ:�F)�M?N.F�*V#��$>���#�T!���Op_x�����q�OK��=��
�ETP%B��!֢Pƫ���Sc{&�h�X���-���@ ���**�)����(zm���x�<�Ph��BsI��@��m0��P���}�Y[>��Â������B�q&"wo\g�)-(��a v��,Un<g	����^z��
��_@.q�V��Oϰ�f��|cD��F��1#�qS���ݧ���v�㔶� /���#��Lp�$;v֊�<�W��BG��g��N����E��,I�X��ˬ���Y&��='�1n*���s*s��X%Ƴ�c��*1����9���
�
Ÿ�P�B����n�z�<|�ͯ���s4����ǣ;-
���5��P�.���.f��:pք�����)pxSxo�����ۇ������#6��ot�މͣh:�9��"Vo�����O�ڎ�E~��d%.�nlT]V���s]���3�����Z~খ)�='�"})N_��3)�v��d��-�I2L*���4i����+HQ��\�&.	�I�]�&��"^-�Y�ŋd��߄v�3N��%��)���h#ބ�hw ��yR�"�2��d7m�(�p��R�%�.B��S��*�Jt� �)�;�g��O�Y���;Ɣ��"C�YP��Z,�e�i��d	ώb*#�5$"��k$-�Fqu����bE����֩.�ʢ���y5Dh�+B��F�@� :��6�1>j R�xC@�F���"�7ۧ�N�H�6%OF�J����?b���
1�]����	�VW��.Θ�sī����m�w@|��{#���xpW�<�S���q�;ڹ2�"�۸k�LTGle������S�'
�{l\[�S��,��O��R�Rw����.~�&���AFؾ�5����)�~�t�|�~�߹RIx$���������JecGə3��L�V���0��h̡����8�>�Q��P\`� �0�r��Uϐ�z-��d��$K�m�og
,�p���$l�ŷħ��@�Jڥ�b��%+��+3�����ʼ?��y�]��iND[�0(��O���n}�}X�����ϟ��Ù�)ذJ
�Z�Amf�ᆺ���:DKy���^��*�1�Pf��N�&Q�6�@٫�/k�Ҁ[ܲ!�,R��?�Z�	R7�H��y�v���@iD}J��!i;S�Z(�ig�=%]U	M8��]P�����u&��a�4�����tDE.�Kp��3�8�}� ��J�dhXHӳ��EA$D�"��֐��)����3�hhP���C&D��:"�f@�P^dB�+*p�h��W�'�}�"Y�	O�E��a!ͼ(����$D?�����'y��lqE�b-��#�Q*߹���&��W󴋉�5,�n�]�n	&"1�ȏ����$EuBC�3���YW9�]\4���M#��8�֙G�h:mt���^Au�+\��ev�Qm=A�P]�¹�Z=����� �y{c��hnl[<3Ȏ�Ov�����:��[{PŲd�Ť����{R�Խ�����L��(�M����tEE���4iT���՜�|\�s�^g�r-Q6tO��@R�|��,*-wg��f�K�g���˿�4q-�#�9����%E���`�B��b�'�Q�a� E�'(*S���hv�;^���DS�Yu��!b>Qhh�;k>M���M�hDK5�6
�ns=��9ed���jT��5+� �<�Au�|,(��OaT�6l7��;�l�C�4+�-Y�#1���v���jmR��*�{%��Ν����KvH��rT��8:���~��o�9���O�T�6������)s�`i^d׽2��i�ޯ�����@��h&�.�Z���+�1:[��;�{z�˝��lrڲ�+�!�C��pA��}�$@2��@f?2��Y�ܦ���KAm�}j���    ���/�)P;?j�O�o�6�P��[��Jw�V�Z�ʢ�Ւc5iT�k�T[a`���G�k��"�և[��A��}����+�G�c�Y���B�$5����O������ � ��TY��g���6���Y����v��^��~�Ϳ��C��n�Zc<"�U><ҵ^�k��x���{����G��{�Ӿ���E��]��BT���,����J��`�Xy�}��z%�Ԅ���Ƞ��>�U��c�Cp���9���0jU3 z�,��W'��z��*�SVe�I�<1#ޡ�v�h��d����,���ܡ�pg�OՖ 4�'�
"h�V ��R�'�*������<r��V,��ak	����aO:�.Ӯ��Olڕ)F:l�����쵑m�i��(���lY&�O����?����K����A���:F�U�p���t���L�Y�z�����R�'��@�r`yH���s3�~p�Ӹk� w.ԏ^�����~��>���9��zV�1/wkQbsNf��v]UmQ� ז�;���L�Lf	�Z	��
��:0<$�Y�*��D�K|qS4�۶�Ƥ=_T �-Ѭ�:���>H᎙4,#ҭ��Qc{
��{oz?�kU�Ȯ.�my�V�p��������������;;��7m�\8�X#sNJYs��i+H�+_������a�	s��
:�Q�1�Fq$���O&6�=�n�yt8���iCQE�p�0�t����'���1	�y��ueW�丛$�Ȯ��QCe��B�,5+ᘂCy9�[͵e�����EW�B�'�O<Y�4�����5K]���b��)�"���e'�1�7�S��0��q�R�G�;RL�bVAހ� (�$t�&,/2��@�l���7臌t��<D���'�Lq��R�"ѵ^�n��x�H�,�l��}W]�0ae��DMQwo������%�rzC�� ��t�*�f����sV�x<���b,γ�����)@ˈ�h<@~�ȼpZ�L�K��q� �(��0u��Ӗ��K�J� 4}
���<�7[�6�q᎛q^����,�~����YI�bW����ei
�{������>�gNi��g
�SM����3����_ohn�a7.:�N�'��ě�'�,sb�@�y���t��m��b�A�lI�wJ���o�����c {63G�S�lcF���ƌr��l[�c���A������P\���V=��ՂK�$X����	#�f�
U�[xBť�G�'=�h:�8�t��	\�ު���DT�%A�%}�2�!r���!*�B��|f�@:�Lt;��Yҧ��C6x�x��]@x$�?�ؤv+��"ڐ�Fz�U��kW؆:J<?�[�!Ar%}��2��O����ӞA>�h�7&�e>pk>	�-�=g���g�}{��O��Ԡ]�Q�Fm�r5�v�q���/��eU�$Љ:�_���]��R��R>�U��������+?~_<ټ4�TIo�29M�dJ�$S��Vy�_�k��u�3̺�&�1�Q�}��.���'`[]5`��8%�-R�>NDT�'��r�p�wP|���"�Q��I��J��V_�C�y����9Î��m�7�<T���c�_�<*]���p�DpAӡl=��xU�;)�ܩZ��	�6���FED���#�{\�fΟ�%]u�
REjmIG�-�D�b	�*��V��B���B���ΏҪ��F���^b�9G7+��LWB����_N�hJ�DS5 �v3pؙ�6�\��N:�VM��e��'�S=嘆=�L��J\� �M-��4�Q�8{��h5e:��f�F��)��h~DN�'r� �j�v8n��n]��t�����0_����-֗�(}�k�O�C�.p�j 7?���Ù�ߙ��;e9��?��#�%5T�,�qA�P:�`9~=�{�96Ƿyr$+b�x��o?�Y|��0�2Ph��oV_��D:�o�O�_1v`C�B��v��)r}��Y�}��"& ���_�(�:.����/L�큳��"툪ܽ�(Z;K�+
Xy�����~��"���h�i����Lm��02wkag�䤈`㭺�	�\.H�[9��3�B�>ջ��$��Bp��~z�f����z��ۀ�\pjJ% ���9�o�����[��>�
U�Gm��"�b����~������8X�Yc6ࢬ_ج��y�K�~������`�c��k�~i��N�9�Ə����]���O��_��3uMƏ���;L�?�E���=D���/����e����0~�g o�x���_��ӫ
{��=���Wu ���/���*߃���E������e0�2�꬐7~f3�N�+��~�*���d���6��L�D?�D?j��G!�Q�];^k����#���v����$�G׵絧�������gsn�8��%��u�z���;�.�?���;�̟� �jߋc�����^ܪҋB����_]��[+��G�C��*��P�$뿪�/��zQ�Z/�Z/nU�E��{A�/�jߋ���n3+��^ܪ؋B���������Z�E=�����U��r�Y�ʋ�~k��(�b(��V�^�d���v��r/�Q��P��y���Z_�}ЖH�6}m��Wr�/^Vxq���[������ ����R�&Rj�V��L�hՊ�-���ɱ׺y�F�Z7���ֽ�(B�-usg,bmSx��#�h�l����P�-��/��\pm̱�C;�즲���xx��x�Sc�5=P.ƾr�7���s�MQԦ/`�n}��J�+�}J�0�i΍���^\�X]B@Q]�|�=(��,C��j�)������������b�CS�㚮�\�������XT3�iLn�:�N��(�0(�z�8�����u j^�0JT��R�x��z�Z��v�?���;�|��o���%�?���*��-�!�� ���Fw��9���$M#9���E�_5�� �;�{J�Q��,�AB��oli0��H��3����D��U�`��u���ܹ%1S�kRI��XzM_ѩ~bA�#�M�b�ʀ�E�9D��Y�H���C�����Ҧ�r
W�����%��6��]��˭�^CO��843���i����3׬�#�MV/�ǧ�z�n�8/k�O����Ԟ�#��X+���0�UF��>��f�ϓ��������Ϟc��(i�v�^��y�)��^K�BVs8�x����Y�v�ֈ?9��H hz���yI�(i��d��<���WG��y��vJ���{̿}]�f���y�m��5D�׻�z����@4G��l19=[��0�ZsH^��C+U떯�a�0������zO�!��#��7�3��oL�7�?i.�y�vI�vaو����'贷j̠i�VXQ9Ѫ�����6u�K��T����i�no�v����������ӹ9CO�������I j���#ʢ .�UqQ���m��ޯ����{��뎂b�V;u{����>7{��S����Gs;
"Z������.��������Q{O���(�Sh��K���삽��ޯ�}�7q�Ѿ�� �V���ͽ޺.������v���-=��QPa�jז���{�s���_W�:jo�ңA���娛{�9]0����u�U�c8zt��P�վ*us�w��>/s��t�>v�G:
\ZmER7�z��`��2���9G�c6z��cPYe��Ր����_�yf-��H�0���ƺj����گ*1ìe�yUU�WU�%-$Ն~� -��a�e��](HҲK���_��m�xI͢	�6�q���f�d�BI�Y�q�V�z���%�2̺n��bq��C�j'm+AҰT��DҨĴ����_U�d��r)�B���ز3<�O}0�#��˔Y��:�>���U�m��`��p�?���3k̩�(T���ݢ#d@���p`��\�^=�6�j��U���2 7C����Y�fs��H��ݨ�W�nԯ߿�VJ`�4��q���]�ymRr�~��
�U�Bv�}�j�	�ROth��3|`^��bֲ����8�3�K�Ѣg�h~���!�v�g�~��f��O����    l6YM��c��q�ؿ�OƝ[fk]Q6Ҧ�΋Ә�Yo�]'�k����d���b}Z�q��p���;�y��y��4qW3�ah��8(^xU�����MI��'��k*p�H��:�������cF�8��]�\�[5/���j�n�d��W���n�,��x�̸d����/���jָO"6�0�b����3�ʡ^�c�0[�����U5T5��;P�����]r�x�&��}(S�Կͺѷ�#D�7����+'�	�����/����ؒ����-�|��T53/>&��ϋ�{3�r�b��}�<.�wA���<bZ����:I`j��a���ٶ>��̑?��0�F�)-)m�z�2�^<hs�$�s�m$P	��킹����B
Y����'X>hEx��N�ō��&�׮"7��`�K�������r�yM��0� ��<�d^Ү�%�����Cvk��sOG@BPEF�*�:��<Pxd�"�ͦ�\���"s��p�~f���Exh���)<e�*e�ZH�I��C�D�w�X��5��Umxu�ˁ�d�opQR��ش.�7�p�Z pk�ң[Q�>���gk������6��Ih��K�^�>?}H�!����w�nG�u��F���([�8c��T*]W���Ӿ�`l��GJ�P5ӿ~���@�����\�Z������~�c�%�타��'�s�����gSF?�6d㈏�f����\I����u�I��KA������囃����p���xV��Y��t��i��L|2�H�ij �P�^]m��2�7��O���la�}@��6^S��0~�h8�����K��STc�1/ߨ�^K�EQ� �����6rt�ݗ^G:yG;�}[���/ "@�D`3�_=��^<"z�_$��6_�!4��Nh ��5|��3J�����H���(�^��7�a^�DVl'���stb�Ⱥ� �+#N�G���<+�q�i����2�" ~z���g�x��o#.� ���U�k��T3
���w\V��x/��-��R�9���v�ERub�I�M&�o��{]����<	dx0q���4= r��ͤ���A�I{!�`�
Q��I{ ���?�)|Q{�)|!�ऊ�n����S��|&�EY�u'���*�[	d�wէ�!��zK�{FS��t��S��Q|Y���S��: (d�
y.kY��V\4V���(���!(d�
y.�	Y��-YL4V��r�w�G!��F�����lV��C\��h,0�en������bf"�L�3�]��(�Α �짓���FÑ����6��q�%c���W$#��Ԉ�C���5NN�ˇw)W����b�6W��3��<�N�1-顄���v�s��t�����zv��g�VIDJ�$��O
i�$����r���`�9t��IZ�ٯ\�]��cc�)y��}:[=���^A�����������W�#}¯/M�t֩'���`]R`��?�/���t���Z��j���|���EO�|�Ǹ�D�eG=�I��
�=Q�b7'd8�~�u�/F�.���.7���ZOȭ�gnH?������#R�F���}���;��bQD��2 ��I8-�pUڧ���o���^���\��H=J�����~���?�/���������s=Q�ã�3˗�w�~҃���W���F@�_
�V��	����:d������a��9�]��������t�`���ыT����kr?�}�<�6���c�ԯ�_��V��Q��]m���=���������}��s��M��M�����m}/���H��(�/jQ��hJ�v���[���G3h��h�!���5���>����a���ַbJ_:�J�!�`�woޚ*�O�?�4�I5+`_(~7}���c�M2\�_?M��������|9�jH��D�$EP�~���GO���_,��Uj?w�c=�ѓ���6_PN�
�66.4����f)���d.�,�>_����m��\��K��*��
�F����;�Yf�7=`~�g������ҭ���U��j}�ySz-�����M��k��p��k�z+��l�t��va�A&�����xv-�b!@D*g����׏�ϊ�M|ٶ�`��Fz���x*r�����vF��`^�������C�!�C!��|��s����^��B$���"�R�a�:�-�(�I}�|�*���|a����^����ڔ�s������g?݇?=��*r�7��{�s�;�ʛ�\uo��Pd�++���ON{�?�#?���e�f�P�l�(+p�;(=q��o��P\�jq�v�1��7}�w��xL�-�dyI9���e��7����X^�U
�����h�5g�-o�����*T�P��*���zГ и�"�!��g�S�X�EŽ��Z��R��6�"��T�U�͍���P��] \�CTpUD���z���=�Htե�X�W�^�;��	����%��at�Ѓ;�J$"��v�JG
�^uX�H!�r��qD!�EQ� f�*�P,����"U-��8rQG�Kí%��lUd^�(f\�N�Q�W5w~�M�H!@�)�fS�fSx���6u�d���a���{��i��%��\!������Q��l�`�-d��~���-�c��F�_L04�i�_[�h,�D��:&LaTЋ~Ou�*�e��8g��NWa���f�����InR&Ճ���5��T����5���0��5��ا:��ՑB��ӗ�X}��5l�R�װDWz�[9].����u��"=L�;�b<�{���{��1�^��Ji�So�+
�1w"w~նw\ۡi�=�
so� ���/~�����'������O�G�����"��fc7�����s�mv�E8� ���(�R�\�g������ō^t�i������L/Z�D5�Т�`Pv��	�C�NM��;�_:38�|��+e��?��i)-���l��|��Z3+շPt��P}�h?a��[A�t��۲v�>����׸�O��.�mX���%�cX��N�Cg���F_cW�`]ج��q��������aS�g=���;ig���g�����^k���Cx�^�&wWK X��7Z����'�_}���\N������֣�Y��>Ŧ-�습��0�\����7&�I��1�^��/.U�8"�{���
��9��}�ڵ}���
ˋ�2�.W�f�=G��������hH&l\���>��dgs�e
m�mld��WO�� zV������s=R��I��F���˟��d��تA�w|^z6}cbޘ0i���"^.�.?3ۮ 1eJ�t�jxL��CT�#�'�
�#��hL"=�K-;}�y��K�V��*�\#ʱq�][�����p�эK��c��.ڽU�J8�����g�Y>,��)��J�[J�ԓ�>�-�]/�����kB�B�{O��A-p����VE�/�C
0��o��aN�ü�hH�j9�9��|��i:l}^t@�0���>@�n{c�==.��MD��\�_z��=,�+�<�[�e1O���x"j��)4uN�Bx�ϝ
����;�
���JU=U�Fĥ�R}��[�KU�Ī���N���BQ��3�il���]Qo�:�m��N',H~��l�DX<l%n+5�����7�����Q�(8�7$^5���+���j���Y��"���Ȣ�RdY��I�����)�BhAȃw��a�
cT�1����#�hA�B�ڻ��T2CX�)��o'����f�n&�)����sZ����i��u2Iot�#�ޏ�^y>�ވ7�O����i�+�ai������K�I�d>�H��^.쪓S v�y����_߾�Q�j5�T4c6z��F%_�O�'��#e{p�~�o�+G�W�C�	#�[�B@�;������Q�#��¹cY�x�K����ڶ:�\�v�#?�m��95O���@y!�����Oƌ�)g�|���.Ү(�#�롱�D�J��������Đ��%DZhB$�(�ρ��    ���/�Ȋ�*<Gz�U�c,\��)B �V���]�-���X�HOܒ�>���0*umT41Mȱ��,3+Cǯ�c�ɱ4�۩���^�;�}z���朢�O@HU�'ïAQ6�@NP�y��A�c�}�$�EԲۖ����+���selO:SFzv��� ��E�UCP�`Ԁͤ��S�S�4_}Fz�u-�w�`~�h��8�BKTYjHO԰9�j� �l�~���N����6�$b�m����^S2��.�v�S0QZ�8�OV�+�c��Ɗ��onGV�xs�Ш�l/m�[b[cx{��dD����v�W���n����c���n��H����4�=�R�ŝv�� ��ƀ��Z��[!k�k(�ȑ�v�<���G�����P���/׻C9��Η��]On�G=��x.8=9�pG���Mw��;�3�I��Q�6�D�Jz𚙻�������>8�T#3)�w�Z�^c`J�ܔ���g�o����������,[$�e��8j�T�כ�y��.�`q�G��d�����U�:� b8�lQ`�Z��Q`�Q�g��旡�O�?�)�S8�y������\��H����.���~���?�/�}sav3�&5�|<ެqm �G}g�/��l��4���ϫ�W# �/�<�������=��AӠ7?#��[�\�TCa�>A�<E��>���?*��0F�OsA]h�(�=t�K���#qJx�@�N���ĩhC����c��ڃG�q���@�4�S9%;��hCt��N�q@{�h7�̀���&�E����]�ڰ46	h�R��>��oP&6��r>Іx5!�hӀ��Ѧ����F��x�mwM�hC �PN�Y@{�h7�ƉYh����N��#�-!�F"'�"�=x�Wl¢���j�Nɦ�ڣa;і����8��>��V��v�yvN���F:-,��ݼ~���Z6x���,	��tZ6$X6�G�y�;҇e#���N�;r,�F�e#��	����nlِ>,�l�mِcY6
R�T�����g�$¢ۼ��Z������eAS��;�<Q�=U&�v�=�V���W�[	��
�H*f[��viY��c9ٖ-؆=���V���ͼ}�ϊm�d[�`6I��I�j��؀;���|7k����n��o����J�Kg٤yU��7���6V�s̥3�1����C�KKjȁ�^��rpc�i���C�-�!]s��V���ɡQ�b^ejy�歆:BZ1?�O��7����%;�0I���d�L�>Lm�A�#fJU*��X",�Z�v
Vr�Ӗ�Tz�Z+�>��
ܫ��r=���(o�w��b������|��(�[���7|��2��wE�5Q^��>����-�V����-߃�4��w�&�Z �ͷ��o�7�v�+�2�=��b
�|�`�k����|���|#����{���̦��b5�}��I��wt��ξ�7�q1�IюL���C~�S査�/�(�^���J���e{E`��`�1d�X�G�������#k��:�jb~6I�+��)^|N�"8�6���j=б�+����nUH[]}if��l���o�S8��5qYZ�����5���w��?->�f��D�A��u�j[w��GE4���[E��O�^�2��i�妛ˏ�k���Kӽ��^�Q�|��p�*�E�x?/�U����g�أ��ʌH���p�gD�
wv�;����Ve��67Z�`��ٖ��#c{�ͫ6BO5e�T�D��N( \M@���|6Xk�^D�¶��- R& �Z@D]�A@'�& ZI@�k�^D�"���- Z& �V@P�CY�8���%���}2z?׋��N߽��|������fs���'��
�$�x�Ǧ]�nYԴ�x��0�0G��+�8����փ���	�ڃ�Uz����s?�� `����=h�<�����x�	Ī	�W��nk�^��b���- ^& �Z@dg�:�$��N( ^M@���D��H��m	[@�L@��� ��j�h	H�P@���d%ɮ$z�tH����d��DkA���S��
:��d5�JR]H�" ����l�2ɶ�&��j�EA@'��$ U�&N���C@vG[@���dbQ��T[q���|
ws�J�m���~��X��y�Fs'W滸���d�2���/pǒ��Ӌ�
��o�t�r5�ƾ4wO�4�27!�����E�w�S�ݺ��W��x�����w~u���1?��4}�B��_/��oV~�M��s����cg�4�ď���^���\��^��0?ў�n�nMG`QEJp잜���]A��iR��i���)�Tudw�=��WU0i����x?ģ��S��SN����N���w��R�*��Q͢`�Me��p�@_]����Wb�v�%�U�Iz��#g�9}�9�����+�pt�>�A:��)�x�+�������j�?��{y�5�iIe�~�������?��?�$i�Ed,(���X���36V�T[\��k+;���?(����P�ɜO_�m��aON�{.���6w#��ä4��!���ば@{�#�O{o��r�v4wD�5�Z���>�CD�@�SԺ�27~�����JBz��!��T/��'"���[�Tv�St,�D���T��T�/~�R)*�u�3��M*�� U��
R�T��X�T���YR��Iʳ+�<�]I�n������<K�F��M�^*jT�K+j��@rL��ǿ9�?�%D$Ʋ��z|��J
ש����h�^��|�>����A"*��G�Gk�%j���v�z��ppo3A�B��;�W�H!�id_��.`�""����]�C!�T�nŜ��xt��O�7�;��[q��m�
w�(9��7[�{��.�r䝿����WW�y�4o�i.|	��h��ͭ<s9����*q�����x:�e����û�j}R�xg�k��X�6孪p��{>=T�o��+(���/�n_��L��w�����~^�3�Iϝ���O#Lz!�y@	�iu��P���&;]�����k/�ɋr��8��t�;���1zx��a7a�>qW���k:�%� l��bFS"�2Y@��@���t��I'e�e(�ɖ�}u=҃�����q>�
��b��a%��^?�}�$=��G:99���7�>Џ��ѭy`@�=�.����e�|��yUE4�b��h�Zd8����A�G�+�,�}�(x�PEQ�qF�`ަ<�w,
�@�D!�(�*�vM�#
/��N�G�2^E8
��(p��sN��o!F�6��$����(��B�y�!��B��������B{��x&m��}:l�ydQ�������B{��x.mw��v�x��'ڃ�3YhsK��v�x��4%�.b����mk0�$k�ɲ�����i�Ԃs�c�4p>T�1z&�c'�=�8'>�Y�|��w�����9k͹�y���-ן��NKs{�b��ӿ�������l[u�dnnc܈��d��7�$�H�d,5��4����.�cLO�3�C�m��p'(Mc�z.���le:[=���%��a�0y��������3�ca�sfX�C6���f075��x�������#y�������ɽt�^�h>�K��HRN�����W���͘Ƅ�Oe�%��|��0z�ﵾ�&gy5���4�=���O�w_?%�Ī1��l�5���>MF�����x�_���g�էd�a=��ϟ�ɴE��Ve������ӓ�l�?gb��I��I��C���ZB��+�X�4�5��8�>�A�W�u,�{S�f�A.����jP�1O�}٩��>d�����~��?�/]�+�U>����d�^����	O��^/�_�x6��,�r�p�G�ZLߕ�7.߉g��9t<�+�Юd�����5Ļ��U��.�HT�A���A��Ƕ�*�S��H�W���� AÖ��~W[|��`^u�M��=���
���5;�A �H�:J+��a����UDSe    ����~�~y7b�f����ow�j:���3��v���<�c.J�p�j�F�(�G�Nۅ��e��S��گgF�����+(�,V�Z�˥�_����%X�|�#�B���Mҟ�"x�)Џ��$��?l��6��n�#N.�>�tb��/��]�����{�p�(���r:�N��O��� �82O��%M�ZƱ�������a��˹���(�������u:��2��='�ͧ""�"�1�b�C��� YM��+�R�/�O�l�F�sts��rp�W7h�(B|���| �\b���\-��)��r̨�SE�HE{7#W��U�*ʮo;��^H7� )\����x�dt
MN��lu��+#<��#��S�^����sp��p����ǏB���y�upmt������3	��%��\�_cp��T�s��_��~��7 N�Gz���}%���Y�ֿʘ�79g�1���z�9��H�AOÄ�T#����
I�>�`b�Szdp�{V?�W�c�>�8R4���{n�s��� ��m��Z��P�-��3�=>Ƴu�)E��#Z0svO�b8:�*u�����)��u��Be V4����l�DRac���*�ȴ2�LrU�3 �0�B��΅�wy}��0x�0~N�O�}����i�9�D�^<PXr��;����LU��H+�H+{�o�f�:�� ш��I��?�n�?�&�4(�$�/����TP�D\T�����=��W}JGM���-��ޑN~�hH��d��)���Y��i8R�k�p"!�B����G=p�.�^��\gbQvT�Q�ofyT�9�=��q�OO�sqm�04��a`Q�A�,ür�ϣ �@�o�m?p�5~�ő�G ?r��`�����e}yl�b��]g�4sv���tv�7���kmTVvvi�a���!
�!j(CԳ��j�*QǞ���8�'������UV<��<\s�L?���~��̛|~��{sm�-82��g�m�@�P�o�8t��{si�-82����}�@�@��|k1kn���@�p�/�C����z�����~	�K'�2�?��3_�z{�[pd����?��3_�z�xs�K??��x���������kț[pd���G�|�䇂?z��^T��GG^�"p{���E����{�*ؽ��_v/r۽(��C�?z�+_T���R��Ny�?]��|�E�f����emX�J0?��4}�r��_/��oV��M��s���w�@�"��X�sh�D�ެ'J��˖V�D�
�Y����STd�� ���+�*g"�rfV��a�L
����3Ŧ�A��e��J��_�/����h���S��N��ɐ'4Ed,(��Tc���%fl��ӛ�:}z�C.��=�\�g��_4����~������ty�����S�4A�Y��trx�L��si�Ry���oa}(�2���zB/͍J_㗛ۑ	�R�ݧ���u�?->sn'A�bX 8�߬B���O��̵�(~!�y�˔�ћx�\^��X?&������AP����yc�[���E�\��\~�f>�}&a�6�$�"J��e����Р�K!˟H��Ŝ�Nٗ��Q$���ȥ
�Ն���� �ϋM�aF�����sCn��m K���^y�=7q�Xn�m���~��-7����7���E�2`CQ�")�U��y���|ؒ������S
n�-(�Jx�ٱ����2-@�}j�ݿ�ț�,�{��EV��k}��Ѧ��jz?����'�d��-����ߛ�?�fK�_V]&h�v�C���@7���C�W��:Wyi��H%΅nI�0c�0�6��0~�a�y[ʸ���)Xʘ8��v��N��g�O�;�'.��˘:���'Z8��yv1�(��T`)c�Ԃ;�8h��Zx�A׸�\�R-@�1��Р�Aj�g�2�K� ��ݢםy�pr-<�sGyȥZ��,�Zp�D-�Z�<+w��\���ʩ�й}�Zx�9ʸ��2-�� �� ����y/�IG˥b ���L���a���/���K� �3q;���A'��^>����K� �3q[���A��3�m&�6���gBf�ɐQ6��2Z���P;�C��˘Z�v�e���$����5��� �~�,V����~�i���B�����x?�>�����g���_��fI�MMd����!��p�JeFrL������HT�g]1�şp��ݳ*�F���루 ��+��g�����߭<Qh���*ǖ��& ���CR�5�x'��=�R�Mi��6H
rH�N,�g�QJ��(-���Bvع�}2�-�=�Ϧ��n�^}
)�US��Mި����G�'oD�U�ɛ�����I$�+D9'lJ}���+���lwpC35ܷ�A%6���,ӫ���ks"i�Loq�찧�M�������/�٣^~=i�2{R&*[#9��	�;��ԟ�k��N�JD;k�����rܿ���b&Gs�r�R�m.il]SU9�	;��<G����U<��-L[M[*�����P:���Z
%�Ky�9ŘOM7[z}r�7@n4Hu�v�T��e���׬4��`�����i�����zi��5�����軶�&_�&�=�-��=,Ř~$��jJm�f��0�ޤ�}��H6��"��ъ)"��%�����e�:���F.�������%R��)%}���"�\�GҶ~
��>�����;~Z<hݾ�{�.�Z�}x��U���o��o�e�'����׉��'w�t������d5yg�0'�������=,�I?; �] б���j�,땦��)��t�[@��@��"jO�M�~���w��j��i�x���@E?�Ph���
t�k��Qs�rAN��,��q
"�S�����I�������E�����Z�\Ͽ|�gSSuڪ��p��0G��l�,f[Wo'@DJ�p�&`�K"�Ȕ~�s\�<������Ч��ד�'�
���$(@�
x���	Px���G�����y��Q@}��I�ӞGzzzܩ�i"�6�y`3�$���Hpf$��6l��v�Cc�9��-�wC�
l���p�np<4���m҂m�u���4�=�U�𒡡��\A��B(e�Y@{8h�˦�҉6k�6�JUm���y-$�m�m�����P|��e�&X��Qܛ�*�.X�9U�� -U��貀�0�-���e}���+��F��F����.��ҹr9��t����������γb��a�[��Q�nm3��b�R6�e��Ʋ�ѕ�A�[��\�n	��[�w[�"�ם�_/�+Q^����_9��x�%y�%�2xUmxaoX�j��(�;x��p����mq8�UM�/��*U^���uB��E}����ޖ���E5�Շo�5��������z���տ���`�N���غ�֥���t9�=�.e�����~o��,� ��Y�~7�u`w�6o���^[m��nmj	P�7�4�j�Ams;�j��jC-j�~��VjBm�݅>���i;>pmjP��4��j�Ams�j�>iC-j�.��VjBm���>��:h;�omjP�ϮM称�-��>���gQ��p�֙��P�m���n�՚L�~�lnX��A����j�,C`�!�ef��a]6p���=��*fmVf�2��6����`�����2�fq��*C��2D��l(�6�y� �k�������9ݲ�&p8����n/�!M�U���us��9��2�CR�@���!)M��eX��MJc�4�t���i�`�y��!;M�U+���Nc|5����ija�qY�C���˰�F�MRc\6�t���ja�y�O�j�Z19�n�C`�!��V�0	Ik�`XEM&=�i�����0�����`�齕1r��pc+����Ɛׅۉ2#�3�0�p�iÕ1R��0o�pl�kș>�9õ�08r��ȕ12��pcg���Ȇ���N�$��ǆ���Ns���P*r����jE2���L��    ���"��u�Hp�Bqc���a�a�U�
Lj{u�:\׫#��
ō�:҇Y��f�����n��u�Hp�Bq��v҇]��v�nt;���a��p]���n(76�H����D�cGj;v;\ױ#��
ō-;҇e�+ԗ�=;R۳���ẞ��@(ƍM;ڇi���r�v�hm��k��v4�vC���mG���p͊���oG��#u};|��P�ظ�}w�B&��������u�hp�Bqc��aݑ�iu��wG��#u�;���PL{w��Tȱ��;Zۻ#�ݑ����P(n���>�;���v2EimwGjxw�0�� ta`�O�k�� =ɼ�4^7�)��v�J��|��ۇd�H���T��M~O��>�����$�-����;���HVn�%�D��������[�,~�_e�~����~���*�ᬚ1F�1f cL��>������[�	�*�a��*��w�Uȉ?��M�;^*��|i�w �6��_�#m�/�������	�!�m$^�U5}�)�រ�Q�w�6O��_�c�_
�)�a���C�w��G�?ױM�Q
~)��|y�w �6����ן����F)�a���&C�w�t��$m�݄�CJk8��6'8�;~[���p��F܆`pGi=w44��C�Gi���6��)xo�����`���!�oԟ����(�o���zN��A�����8p8ZρC(Xp�!x�����Ƅ�`��z&\h�6 ��l��
}���p|8ZχC8qC!�y.nW�alc�1��X=+.t�C6�Xǝ �q���p��C��8V!w��!���c����r@ْc���VM-xr��'G�'7�����Ap���6�O����B��<dO��=�V�Y�E�|/����Ǒ�ΐF��������X8��M�I��������,'W����I��Qy��t�_�<Fn�_���N��/���� iqr��� }�˖v�X��H����$v�����Ww���?X����5�^i~�/�>ޫ���KI_�ঞ�2���o�?G?$��ѧ��Q{# dU����M�g9�?/��r����7�8�2�)�0�H���l �^ n�J��(Mý��;���]�況�ͨ�ٱ ����mσ���+j��G��e��X�ꔪ@i��6�x@}T��9�N�rW�-�"��L)���Rڼ�j�mE�z�;}U��m�(��2��S��}R��5�}T�������זQ
dBT�J{�������N+�1b;�vW�-�V���
�~��6�y�},�?lg��_���PU(ݯu �6T�z��K��%��x��x�wW�� .5�2<!�K��x��g�x9�[z#������ -�+�S�&���]�F�+"x#`��IV��Ky<��vH���/�Q�'l��J��	^��!o��h�T�V�w���6B�_�Cޮ��
۠��	*+m�$B��U��Zz�z������:�6}��S]��ńr(�����?��IeGG|3z�ח7��l�G��׋��$��}IC�'H����q�|B�qO��e��?2��m���66�sze��ᥭ>�GQs�@�h����fa?��]��sw�,�n.W2�C�!gE�]e�� k��6.2�y�z��v�<e�TV
�EU��*�ga�b�����6;��2��(��֐��+��K��V8�Y�4p�u�U8� k��PkH\9���Cފ&�V� ���"x�yUV�Wz5k�#=��h��vE8R7{Ep��ae��4��|!=d�h�j����I,
 �� e��l�^am\���۵.X��N㥂��2X�Zd����Z�#f���Ӣ	��Eꦴ���W�a��^�W4��Fh�
؝�J�I���E9e��_\�X�K#���v�H]K�6�\Ip��ŵ��Ez��4B~\m����԰�5��p>V��܍�,҃�%*��)D�:Y�Y��bVe�'�_\[Y�+KT�je{Y���%���(�jU�k��ŵ��Ez0�D��V����Day�\ip��MKhlg�>�*u�l?�����Ε(�sU�k��ŵ��E�0����-Z�т�W���U�����Ɩ��ҪP�j�w��iA�+QX����i��kcS��aj��`�f)�ڮT�����p�V��6�ID�p��e�v��ڮT�����p�V��6v�h���L�n�-��jA�,QX)���V���/�C��)�%����P2K��*�TN{崱����ks
>���c���s:���m
�
	��g`Ni�WN��}pZ/m�6��\�",�4�$���$���m*�H(
+r���i�y���>8��_Em8���.a1���f������'lS"[@uBQX���S8��Ǝj����xN�S��;j����˽j|�����*�R��-eʾF8�ګ-�<7�R+�Z�6��%�j[R(
�TϨٔRҬڸR
\)UەBQ��zFuȾ��XEm�)Ɣ�mL!��~Qm���ҫ�xS
�)UۛB(�S=�:dwJUH�jcO)��Tm{*����!T�۞YB�C�j;T��_T�� ��j���6&��J�6�B���Q�M�*�S���T��O�p0�zFu�N���J�ª�QfU�W�Q^UϨج� �Qm�VI�Y �U]TIp��E�y�_�"�@Z�U��������UW@��[%1T�ͪ���I�)���&��%��dt�o�|?�l�G����[&���9�Iw#I"����#	�#�K��c�XM����/�,�jz?�w�w�\���C�x�|�5O��i�����cn�^�Kb��(��2�GL
�O����d��	S��n��n���e6%��Ğ�r@/K_��+S��m���?\i����F�?ī�����n!�l�g^4����z�&�|̾�^�\�mi�֖���ܥ���H�G\�d���ƬL��>c�rJ���d
;����}�1K5��,���VBC;i5�e�d-����C�u��iA��5��l�x҅��������7�cc{ꅬ���Z@�2�1�!�<@>��s���8�� �(�^��zq�{�K�!���%�� ��@/�z�*;�V�̱Z�U��|�W� �?�;�9��<*�E����`�f���
��:����{�?#��9p�OKDr60�e����q�ρ{�k�;� ���{�?#��9p�O�$rO�{Z�=ܟ����g_������(8����9X�ܟ�١G����e-
&�9q.-��vh�r�iy�M��O{Nܟ�Q��I�:��Z^�Ԣ`՞����r�j�f-�����(�����9صܟ�ڡ_+��e~-~�q����^�w��
�kE�_��_{Nܟ�_+�~-�Я�׊2�����?�Vx�Zܡ_+��e~-~�9q~�����C�V�_+��Z��s���Z��kq�~� �V���8�����9�������Z~�(�kq�kω�s�k�ׯ����ZQ����מ����
�_�;�k���̯���='����^�w��
�kE�_��_{Nܟ�_+�~-�Я����2������'���J�_K:�kY�����W��?�^ERs�[��s�����_�W����|�Ԅ?N糥����۴~�_�̱�B�"�N�����/IY��h��^?��n�p���u�8����5:���+���%f-g�8+C�ć�8.k�t~�3'���e�ˀ�P�/�|�s'���7d~�.?�g��u�LFo�-�$椧G��_���跳U��m+�k���8�R�-�D��dD_���#�/.���	�'�d�i�t<�f��9�d��������"���}86���E���m��(~p���>�+z<���r�xsk��L;�����h#�ы�7߅"�;Jx?��;=6$��E����ޯ��#�`_ZTG���_����4�+����WKk����ҔzY�Z���r�����n����@��Ⱦ��D�}i�}y|�a�Cԇw�������E�1�}ȁ-_]�K�|���u�    �6�����+,Lo��l�]=}�7�jXe��[U���\��x�~eԢI�;��k=�}6i��o�VE|L5�t���JbD����Hؘ`R�&���ڶ(y��f�j��:�@��$t?�f�P�,Ll��!����1��<�t�n��I�5,I���G	e�kC�v��'���B�A��ye�@�2H��9���zs�N-	$с$���I�4�rJ֢V����?]��|W.���\�g����Z#���E|�͚��$�?��}K1|r��9�W*�xRi:���RSu����������SR֨qr�U�r-̧��`���9AWP��BQf�W%M��*���l&=���g��
�&;��;�K;�҇M���Va^�;�[ѿ] �����&}��*�0/�e���.���p��a�>��C����rS�oW@zi�@��I~6�!�Kzg�(��70�ʺ�ԇ��tx3�yY�ś��`/o�`8��/h���Y�@��1�^��-�>p؇_�0懽��������[�}�� �a�{g��� {y� ��a~@Ø��� �_�)*o�`8��`�"�i�]�6���5E�����|S��M�kЦ=���A[�}ట�u���iw]�����we��spO�-�;�Oا��[�}ట����jw�������k�a�~=�c^ػk��=8����Z�}ట����jw�����wZ��spP��A����������j���~*�;���TӿT\�S-�>p���A�~��Fj�׃������98���v�=M�zpPqy�� ��a?���Z��_*.o�`8���b���]�4���A��}����T�wP�k��=8���9Z�}ట����jw�"ࠒ�h�a�~]�c^�;l��8��y>g�y����&ޔ�%���i�3o�?˫�2����2y!I�qA�#�4�J�/��)�<���@������"��0c?��,�)9����2�Pf;$Laq3So.��No���_��YnO�mi��ܲcp[����Eܲ���,ڪ�a���\å��v����zʰ7��G��M�u+JK䟶"���x��� [4;�ae�Y����
�X�6��?�����UMp+��y�P@������l6�zX��a-
�aU�a�P>��y��K� lXre���w�% O��%׻����i�����5W�k.6�"���G� ��I��5�����A���{�K83��b�v&���"���u�(����f�(��ܕ7�D�	�۱�P��:��(�ngx�\8Q���B츓�MЙ�]ɜ;6�`Չ"���v&r`>�ԣ���j�`���/wq\ɬK#&���&��^�>����Bm^i@��o?���8������e=�Q??.�/��|�A?f9�������M2� 4���/�~�W�x��o���/�������~h/��9΀�*��832_u�0�9 ���<'���FF��z��HNߊ�!�?��S��9�ԏے`���|�6l�}�>�@V�m��4��\��t����� ���d��Z\B�� ���kc6P��)?����Wml@9�ƒ�)/ڡt������*�q�p�t�},i	�[���>��Y�@��Ӏp0�%�,2�즌� ��J��*6r�J��E�d�+L����ˉ�q(��+M�[S����x@|��w9?����xk��i���l<`>P�;���
tᔼ%�*�c�����_?��<z�c�X̿3�#�����s�9���ۚMf��,�|�_�|67�hz�9��MW���x��E��ͦ������Iu!��墐h'e{6�H���G����8�\!�P,
C����EY4D��G�W���3��6_-��X��G�Q���9��2Y?�'�U<{�����������Dy���}��4W.�ZJۄ	��/���>d�gI��Q@.��)�[%�My�T�tS�:~��)~yp���U�T�*=�zH����_^�n�+,��{����Z�o����û\��[�K�W�Dm�e�<r�.jE�)2�ٔ<��Ρ�%�ΠZE0����O苶<�|��z��P�z3�y�s���l{Ӽ�	�D���b���b:�%�}�Go�-��R�1y�^�������5�GH�h�)"FW��^ꋚ��K!X�1�L�p�Xj���)f??.��Ú������i�P��B�Ρ%�&�>�CR���z(��@e��P�觺l9�����:��Fn�_-�
)�;=�a�t�L�|Ho��.{���}�Q���H�1ՓAa�?D-P �ۯw��R�@}z���{����b:�
��J��D��UD?.�X�)��RLD���b�d�W����(b���8�9�`��@�(X�'��K"I�z�v�8k!آ����/X�3n���u۔d��)L	����/�ף7��K<�6z����Pf�Xe��|L���|��\��'�jz?�w�wE�\,Q���䞏`� R�gQC���5�xE�\�Ԛ�>�o��^������fA%DS�M%D�B��N
��|O�ͫ^�'�����,��~���5W`��k�0}���Y��K=��2I��U��iy�u���뺟暥d��ǧ��U������A�`{DsE��R�,���&'`��5�g�O��h�4A&<������������p�uݿ�70�'�n<P�:qWyZL��ￏ���|�|h��5�&�'$˟�~�}���wv��O�28�������&���˿�_�'߻���8Yd����l��h�M{̼�&;�=al�a��¨�c��t�x(�h��i �z|�a'�1�$p<@�ɐ9.Z���8��1wq����㢰��c�ǰve�ű
���\}p\��s�:�X���1Ł��qL��s\��� p��c����q�̈>8.�2�s̎�1��1��ǯn�ِ�+�i��g��׽Џ�P <�@��d��������>�1���q�>||������;��;�V��f�����pL'�)�7�z���y�~Li_�0��X�|oZ�0��tqoN�#�����-^����m=@ěo[���=�m`���9��&�0 G�B�xO�> /�)����Ω=� ǵ ,C���7�}@^TRȽ坝S{�!(D��A��!B�x7�> �Ƌ��g��rN���s�*�6|���o�\��X/�Gȯ9���1���a�6w�/E%�K�[��<e�������&�}?�0�#;���X���>e��c��7v8�roЎǑ�Sk���.p9�_V����Nfv07en���t�u\ª�7�Cy�X7�����Wc���K�\�?}Z��U-R�Y�:��T�w�����T�Eݪx?Ƴ �!�B>7Qx�梩��t'XJ(�țx�1Xy(����gX�����N*v�
®~
B�P�s{�T��o����N�렄[�|Z�/e��V"h�쑴���9�ś<qp���T(�˻��1^�X,�9O��7�#�P�$�v���]E�ޮ��ޮ�̍Ws����ޮXA �R��}����l��Tc����ހmsѽ쳐(��6���H�ď�j�)y
*�J�CD�X�IߗJ��d=���5`�<��zy��{ۯ'�DE��_믣���VJXBV*z\e%�J�^6���НlȦ :B�&lNX,z����X�JD=���X
�&����x7`��h�w:,=3�x#(n@wja������_�~Z�U-�/�N�x��;qPEA���&�����12`a�	�xn��M���N�Q(�a�W�!�n���o�q����Flzzte�*0xՎ���귺ś~�3��yӎ�X�Ź��/�$]A+��Ex�{�B�y]�Zٿ�=���  ��Z*�d����!�f������(qp:��@	T(�O-��U?d�<o_U	����B0�
&��)�6Y-�h,��\��7�;���$�w%����b��X	�\����ʵ�\�-ZҮ�J��$��G�    �Ļ1y)��J69�N��>0L�p>���z%7��D��j��l/��ѶOo��́ ��EO���v�%�55��wml
7�X�9��1�߃tv6�?����{���/��:�Ǯ��Y*l������Yn��k[PY�TY2���``}���
̻0�ʋ�ۻ�*�%=<����:����O������[B�F'�G"H�;	�#K��#�)pN���F?��"N���k.����U�|�_�rr��&�=/_����?x�|i�N�]���}�إ�|�A�T2�/�l
WO7̩�ͽʄ��#�r8� �����C�N�`����wɣ��F/����<�n^�}��\A�G��ެg���$}�}����r�<���h#)A�#ƴ���_,�NQm��@T�4"\��JE�HNHkn,#!�������LpF�в���+�Qby��2b�?e�3�/]�嗅�C֎�v-��c޿�lE�]�l�?��ڑ�ǔ3Ђ���_������Ӝ-p6�2��ͫw;F��֗���O��4��Y�ܫ6����Y&��$���x�1-�ɷ3�w���'5�⒕O�5C��3
#�X$�~�r����R��K�w��e�(��1���.����ͧ���r�c��eѡ�$:�A���eRBN�@|%��+��I��ۇwi%t��r�l�ml��b'�L?��G�RkB8��2Z@�[q���ET/m�SV�i`C?�iC��x�f���i�B���D���Ċ�\�4���fU���W�2�����~))n�)�6�<����wo�n�6���_-�]����/�:�?_N�5�ɶq��[���Ǘ���wS�ϋ���By��p���V�ݷЌ�T��2�v�^�! ���H��s8:�qo���i�*p�=�s����9	����==�PӌU���9N5��!�r/�4p>x����W�f�
�v�#u�"V�Tx9g���s5弇v]��*�G�Gj�E(��Q��·�9k����(�����]�X���N��s8<��܋>8/����ܮT/��9�u(�ס�n߼���J�����m�gZ�ρ���&����O49=Ѭ�t��y���3k�j��G{��(�U(�%�#(�e��gK9wQn��RkP&��r(�s��팢֔s��y�����7Ww�ן�OI�nħ?�l�7���������;�r�:�9� ��O�����JzgK9vR.�S3��X�o#f:��~xY;������|��'���M�6���X�$u �'^.jD��
�t��O����,�8IӔ[�v�{��m�ײ���~�k�d@-�%��`����7%'��A������2}�PD}Q�p7��s�>�p7`B%�3���`=GƉ�qܞq��H˾Ok�'��۹˳�kߓkqz��A�Q�\WgڹQr�ɵ�^�2�����C�u��)y�. ~:�e�v�dK'٢yi�!�Cf��]�<��}l�C��%_��N�;ɼۣS`y�$�D�YF����-�&�ך4B&o�r{wF��/�	76/!U�`����˳܃��9̴߃U�+���1>�κ��{F;��S��q(�4�'�P��*�'��S�;b!��U���vj=P8������F�r�˘���(
jEQ�z?_%_����N6�fovd�fG�|�\{ǂ6�Oҟ��_?ŋ�f��yJ=���j��X	ɕ�H ;�OS[3�q�.��T��� N_։��]���N9�.!�hL�;8w}�d�w���Z��w�0�4���V9�����#������n����fC���fs~����M�M��CN�(@����֋ Ɠ�Qy�GƼX���`��S�;�p�OebS���o�_\�E��q�q�Y�fV��}�l��\���W3�#K�1�ç_�P8�c=��X�B�8䥢��6=�n�l��H��L���%�϶���6���n�-?sG�6�H��.
S�0UIa��5���w��
�JE�`Ls9�f�S�)���}Q���:�\��1�]J���j�W�"{�4��������Aj��Y(#��ѻ����J�TWz�1�Gyd"��w|?�+�:�ۙ���]���]�U��͡�����"~\�]��m�E������Mq�j�8�����ZǊsׇ?�/����*�m:ɂ��Mp<��Zk��p%ͅ�� �Ƣx��Tqzq"�>㤔���1:Uv+n����o�gn��{@��\_k�P�x���� ��3��Ƙ1%�C����`����O���ƣ���w/�^�:&���1��F:y� �s�'50ʝa�y�I�^�&wWVE�B4
�'�[����z6z3_<��ƛ�w��o�7�>l���������Ç���G�1�GR0�yaq�	W��!$���:5����Fbq�)ԕ�
A�9�7�4԰�.
�X_>�K�Hb�][�0aB�1����a��� /*�up�������E�����ɂ�v ����J?���D6	�V��/��F\Z4i��?;ܼ88�
3�L6�L�w:�~��:}�z��w9�;=��Wae��`W�mR���$gc����<�+��\olu�m:2��ڟ���#`Q$p�?}�7�|�O�䷭�X��%�,����G��J�1l��_���}��!J����Xǘ�	km�Uߣ\8o�%����收���ѱ�H ��wl�뻶J/����"x��ݾy���{w��uc������rr�ē��q��y�o�)B�����8���k<w���eQ�.t�z�Qb49K�	� �+��_�� Y��?�~܏�����;�PFL�LqȔ?�T�����46P��$#��~�Z���#��Zc����Vե6��U� �Vm��6ު\m�7$W[�Du�7f��v@���L9��>�m@z�������ҍ<RAo�8zs{M��*������l�m*��7�Zo���
=�z��{�v,��5U�����}2\�_?UY]���"��C��uXk����a�KM�Umv6{��i���靲�wo�~��n�X��I���O�I��jOU���j���!o9�q����2ٔCv�?�����L�gQ<�O�GY3�ݪ�ig(�4�+�w.����gM�ϋ��g��ټ�7�L�����l��%��[����FL�?'���*������e6��-'��B�=�-��&�c?�C����bn�N4�T��v�P�xp�cY<���3��^}2�1�zlQfP1v��L��sr'd���29[I��D���F-���_o4u(�,�����gOs{����M}?}��<�m�u��Kl��=D�@�$I�$92c�&��SPgP�`�Y�]Ҭ��:%�3ϖ�~��0����x�)�2z�|���r�.��	��j;�a>��zLߜl߄!�c9�o��3�������PΡm�D�TB�ەJ����%�
�X��+9�q�J�3{��ۯ�F��@��@5����@[t��lL��f<f"��1cT�c�~p
��k(ʏTJ������Q�Q�Tp��`^eRy��+ө�\�4����������1Yl�Hs���A���jy�)YN~��_W�d��^Β����)9F���Er�͕F�5wcL�����)�N�����FC�^�=����(6�HI�4���|�|��q�E��.BZ�����чw#!��
�k�W=ě�/���~���1�h����UJh��� ugϷ�Q:��� �A�o��(&0P�h7�����c��iO��18��?q~k�/Ƅ]������n\�"q����	.������1�������VxE&GT�_DD��GN�*��[c�W�?4�N�c��{{5`P��U�_���z�u��mwjb�N|�<0�0�z����׋�*�Mc��q�>I~���5ߟL]bk���ع�!
V\�x�(�g���ϰ�f�98��?��2%ԣ�pj ϰz�fөzt50P�5���atͦS��jࠆ����|�H磫'Â�nr8���3nޛ��M���aQ:�?������[ �.W���    :�N��,*���'f�Y�;�����;���TDVf��O���\�:�w,SKX�h(�*�L˧e�y.2�-���,3p�Y�y�L(���w�Ն`F��)� �b��u<�I���YOgI���g��?��� �ў@�s�r0g��G�~��!�, ?T�㊑9o��I� y��� ��E�=�}A�4�Y�~����]XB�����m�l}4e��Q�b���3���o�w��"#�	�j#;4���E�AuE~^�������oZ�t����m�<�r�����ť�M�bjc�I� �Ƃ�B�������V�Y�����;v��C��K{H��l ��.���sԱ�Ɨr��C�liQ�9�so��i} ���8�N�q���t�T^	�Ω�sb���8��Ϊq.�C�l㿔s���˹�8qa3Vߏ"ίߍ0z8����}`^ԟ�==�r���"P>8ʛ��{�\ԛ�wC9��pY�rB�C���ܼʋj���Q��V�2�U�|p�7���AyQ�!�ļ����EyIE!Q�����g�}�J�����t��U��H�j�/����6�_�A?��O-�eG�g*��i	�*�?h��aU���T{�:��T�tR�j)F�!�O�z�x�D����a%�]@1�H `�
��Z& 0h4��GQQ�zE�%D�% �^��{- � xc�>��d�- ܑ ��NS�L $`�h��H�;{��9] ��
�_�@��2���U~��X.�p���������o����^owg�#���No��}�6�C��^Ƿ��	������ �(�?h��o{����7���g�^Y��MC���f��l�k���&��5�^�>���ƛ�}��5{w�:;b�^Y��M�:��f���o�v�)a�G��<7W��R���n�?G?,ֳ�����n�,���"��iz?z�9�B~�w�}S}尚�9�K�ᘟp
���ǧ�)۲s����f��$��ajZc�2޷�wJ��c�{��|�2�8�����F�P����Y��C�m����\W�Z�mU��2!d��v{)�[�_��:2�Թ�~\�Fo�GSfc�Mx��������E�������Ln�Vd�)ÑLm(�<���7��}�0�NM9��8�3�Ga�����R�9�7V4����L���xr�)eT�.�ٝK���g9��J`Ψ[��m�Tɢ�������1��9��D���B�Y����&���`G��?d��_���BI"ͣG1Z�/�{��<>��}�_��#dfW?&��ċ���i5��.�����u��q���wɷ��0���8���%�P��V���#ϦZ�Iy��K߉�s��j����ǘ[}����;���1���U�IV�IV#��Ʈ'�	yaY8�|�b��W��㷻�r��#�f?x�̇G�G���-�˥N�7^�
�"k~vpS�����ɘF�	�5�ޙ�����7��ܼ*�ɯO���kj9�Zظtj�2��;�"�w�E��*�܈\�+>�*�����IxxA��ˡ(fuW�9p.�k�ͫL}�J/L���_��?ųdt�ܯ���Z�=����oo߾�5���d��D��r��A�t�E�|�����i�����R�"�L]n��
���Z!�(�3Mi.X8W�<���+f��ލ���*a~h�^/�_k�f;���Z�K��Һ�z�([�����@S8���^Xۖv�q!̱7�4G�Q�9�m�M��� �|S���?�dew/"��^���w���u���폻 4�#I�1a�m����޽ ��=�	��؊KC�G����S��C���E�W��b��y��������9�w�ыח7������!F��ļ11�1M�1�FĈ�qD����8���4s4�,��L)��b$��H��Jz��\����ܭ�M��5��Cǚil>=ɬ�N�7B�6�������a��m���U$��~���3'Kc�7AYW��|6�2_/'�ɣ�?-ͷ�^ߩ�����Y��m;�ӻ}:��:m��NK��z������S�4ѫ'�<�`S��+C�}+���� �	,k?�\2����f����K�2a1��h�1�v����{ �=����� �c���?�/zV�o�����I\��1'��5��x '� Oi��<�yP����n�8�_ނf�Hnܾ~s}u�X����@�&�&�rz�zr���4^��b�w�7�O;O�d��Ja�w�g���0�D\C~�H�����D�=�����ݾ����͛�����t�ir���3�ߓE2�O&?.�/I� ���aoZ!����O2l�q�c�8n�q��T҂ΤE�<�䄷w7zqI�F��۠���'��-'7�j��ѳ&��M���8����]�hlo�(���=�[��0�W������9[������7Ww�m����?ӧ�0y
N~��}�4ݳ�B4��L7��7���~��R'Oz}��s�;H��AG�zjQ8�\G�M�(�K񗔔!Ϫ���7�j�Q����Yi|%�4��؎w�* ;���wJ��}���pe�!ާY�O��û�����`t7K�z�T�zj�M����8-w2{��/����J�fD���?��V�(#eEm޵�=�I�ζ>M��Z�b��ѿN����P�'_lS8��#)XY��s�>��;`E���������D���d�e>[�^����n7}__r�9�_�1?}��C�T�O�Ǹ¡9Ųx�iD$�&_��U���1�� �˶gec�M�#Y@�^�;CaeN���Zgj�y�nF/����u8%��,�R�9v6aﾙ��э�]7��)Ρ�*/���=�>��������B�G��?�W%� Ag!�.l���{Km0o�H���.�@�}Ő�qs���A��О.���!�{@5�e���Y�^��P�:�p�-�pw��ŝs) �X�L!~���@|�?u�b��u48yqQ�%�����H f�(0⛲�az�����q�[���i8��3����⧫ۛ�|���Q�V����������z����IV���eQl�L�<��۞-�=YaՠV۞եt�� 3��=9�����(~I��{���Ի����qb>շ�;�� ��u<u!:���k`v���*���yZ������4����g�]��
^�M�?;j���]\Re���ʀ!�K<VH�2�^\"4���;}:�à��4投�5tI�?"qǁP�k5���sO���dA|Fu��=+N�U� ��F��Þ�h���J�hͼ�WM�:պ�vWG��:�S��$iR�F�-������ihإ��k�ӗ��p�$ME--�Z��9�@�b⬞0ʟKA��3z�-��<e*KByz����ل��h�|&W�|�|��l��]9��,��^�H�6RD�1bFz�ɰD�՞F�|*������x{ ;��>������R�1E�M6�jsQ�l�>�{��j�M����J�i�lӚlS��������p��ܴ��ɷ�3�&�@[�ul����4Or����5��_.~������?���W��g�i��=��`�r�}�y��m���vg������c�x�m�9�� �Cq��8��G����,�}2��������z﬐Xm�Dы�l�ւ(�`����Yc	o��������p}QZ����-��\U�|fgPav֣!�@��:<������<Rx�*�#{�!�S��p�Զj<+�����cz�$��1��W"Di�C�cP�	��3���>4��U�?����Ƴ���s���ܬ^D��Ye�@�ȣ ^���\as�#��W�z����,'?�믫�E2M�?/g��?G�������Ѕ cqA�c�0��#-�K<��_�c�TA�/w	�p�v�gP'���$�.���5f(0�%��L���޽��)jD,��S-�e�id9�Z<�[?���F����.W����lYw{n󶏥sĂ�!j�X��0b~�z>+EoXL�J�;b�_ !B�����g����6����u�����"��nc'��    $mZ��8Z�E������g `3 A�F=��$R&���=��w���=gt8�O��h7��E����?�s�O���чL`�"'�E_�^*��jTzĀ��X.
���:���/7�	g�b!ŋ:`��%����U⠪?3'�ûs'c|��Խ�ھ��_�'!�*� K��Oa�gs.�#dP{-�������8Z��~>�]9F&���!�)� [�v��Ob�gs��cd4{l]Li��#h����m1�Z�"cNR��������-�|pe����G�!>��$x��$D����$m����s�оc�$�1�Ǽ�>�7��F��h�ϕ��7��_��f��Q{����~�D�Ҽ��	���Q�G��X�O�q���~msgi�ҌZ#�d��[}�|�b�W[��Q�Ë���k^\�_\�#Wz�k�� /�6��?�����i5�3U�����ߖ�U������#��7�AB"�i~�(a����^Z4��%Ӕ�<�Ih�����-p:}�]x{sAXB�G ���;z��$MVT��鯾�S�%��_(�#ŏvm������������h������-��\�xs��l�8�L���J`�?�X����R�t�V��okX�� ����N��m��:�f|�͐M�Cx��%��Jt>�m�V�%Z��4"�ԅ��iM}Ʀ�~:9�����tS�	�$?,�OM+G�8�l]�'�o�z�F��lF�q��B��,bmp�3����M�p�����mu������ڞ�;ni���|�̡�O��ÔQ�S�[�/�Ŷ��n�z˕��-��0D^6�ȿ�̛�1m͗�������4��i���//o�O<�=�L�I����>z��!��%���Hڞ,f��]o﬒H�*(�_���+��d�Z06v-���:w3݁�\�ض3\,ެ>��z��Ʈ������I��Ȉ~�'CL��1|�;�����ƭ�M7X�4GFB�Fm��$#'@�8ˤ����I��i� �Qk�AEN�~�P�4X#�H�N�1�
K�N)�4�����)֠f>�k\�XF�2ׯ�]��^�r�������/~X��q�z��5���WSq����]���jzu�%[g����й�D��m�2�1�C�H��#!����pz6�_�����/����y�C�W`L�_���0�����l�&��Z�� �/�g�؍:������w)�#�[LR�Ŏ~�w����^_x;dڨ�bV���������{�����/ڥ�[O�^\?�{���:����������|�|Y���E�]��m��/����o��_�>���������˦U��������7�R�/����㯖����#Ea�rj�EIG�!e����=4n������	ފ��0k��z�,� ����ɗ�BD��G��E]K���Zn�}S��Ͽ臌K�J�z��V���N�,�����V����R�����YÐ��>��\?�\�~]�?ks��w57����AoJ1c�-��_��襔����^x��(��a̽.�����������g�o$�>���.c	\|�MB�_AJ|I7�1�aI���#'�Ϳ͈<Dǂ d$bq�X���9RA�����PP����F(N
�����O����X0��E,N��ߚ/l,��ł|�G�1�hYmX����X�["�J����9zs+��*>:���ћsYJ��G��s���j��������߲/��R/^'M�?�@i
�'��Ϸ#T���>x�x֞��-�̐?٠���tC���s���L�H�p?�%d$9�2:<N&t$��c�Б8� 8b���8��ڟ�]BH��q䏆�CH�ǩ��H:;���7� ��e%��G�<�����Y�R�E*˯�	%����B�*>:��������Rq\ƣ�9 r*GsbWs�c��95�渌G�3��T��Į�D�Gs�2H�q��g ��͉]�1������ ����h~x���ܮ����9��U�:lt~��x��/��Z�C%�9�c1���f �5{�'q�lq*q�ͧ�V*�b�r)���1_Ǭޚ_P��9`i�2�ӺJ��Q	ɠ}5;=�7 ���A�@\ڄ��!�M|:O����0O�2q������|0L�򩬜��b'b�r��2���L��dz7�{�G4����o5ľ��mc�7�4?u���=m6wq�2�y�����a�4�ła�)��y�J/U~��h�o�ʶM	/�#˟&����c��t�n���h�Q�In~TK����$�wd�Øiҵ���΢�m�>K	�^:U����Li5��0��f��W��" y	�HF�F`/]v ӄ4��@�$ͻ��P� �}@" $>>��v)v5��u>��U���eg.i����8�O�F>�7���O�ΓOGۖ�D�ک��'>��Or�U��h|�¶k����H!��!��&�m U ���@::�ع3{t�����-�d?)hY�GUF����}��֬׿�m67���r�ӟPՔxy��:�\��>X�V��ȉ璍{th.9o�	�Gp$(�����_�LB��Npt����X	�	����*Y�$��D�16B�I��M�>�2�Fȸr �{	��DC*8��(�`	ᔦd;��y۫rO�(�@z|}��:�ק>#P�)��M� E�8���߅b<O}�kv �څb<.��!�H�3#��@:O}�qv U>��K���@vAc$�x�$���$��4��+�h�ż���L�t| y\���:�����e&�6�0��'-�k�4�1N�����|��m��'w��OZ�I���Rܯ��|F��3���"]��O�RjL>q�'�O
})�GU���{% �W�GmUY�8\��cz�^#����U�~���<�!�v��i
8�s�p��++����z[�cpK�ǿ%��i�;��>�w֧V��s\�K����{P�q�M��ύ@"{	�oO@�]���D��q	��������F �W[��z' Юwڋ@\�-�q	�����q�r0筓&���PJT�I��Yo{`��'�Ѱ���^8�Ws}�]h�95"�boA���z'M`�d?7Io����' Юwڋ@R�z�@�;q��IF��1	��dk�E�@b}ٌ����S^��ՠ<>�v��C�g{���ru�z�zD�7����~5��z�g�'�m+$O��O�8jL>������R��J�z���r���n�W'��֫/���Q}x���q����_r\~1�|,+��p�U��?�����]J5bQ>�6z��ɧп�x��i���$��3Qx�X��M��W����뤷�Y�,��#xǯX��`{T,bk o�ER7���)G�sJ>�Q��_Q��8~-�pH����
��2��K9��SF>#�ƈ��Z��|:tX{�Y�ߛ"���� |�����s����Fmw��$��xJ�P�[�%@�%h�$�����%�'��!��^{�{zA�%<���}�Kz��w�;�7���������j��;#�N��o ��A�M�xd��YS����~&`ͮ��5El�����K�&�r&q��%><��٪Q�uZ�$>`ڂ�S�����������΁�ӆ����s�=\fX�����a�	����].�M?�����B���	���j�}�r��3 ��]N�%��	�x�M"�tv4!O�X�'��l���n<I�-I�<�O*�t~<�"�m��9�E��>By0���>����$
��6��#Og"F`�-)�
�/F�㋅�����p�@$qM8�tv4���g#s9��G�"b�c�	4<�����GJ{+w�<��K��f/%kY�C�]��<��F�0�b��y��N��1�><U�܉]��	t.2D�y���������<��Үlً'V���]���	�,2D�B/h�E�!O�w�i0b�Ilz!�.ݻF#@�"C�*,fr����[%v�/���)k�I�+߅�����jB��&X��>���Y�	Xs�S�5a�`42DS�b��    ���O���G�)k~8�5z��`E�Ν5�i�5�jXu�g�i��a���C��14m����i�t��g��:�3�'��~�@��B���9���Px��Po�H[���;FH�9T��C�#$�O[��3D��W����c$
���z�}�R���^���i*������^ �?�y�`��?��/����J����D/�O��zg����������U����v٭��v	i�e�>�x�߿)�<�������u����r�m��r}�=����"� �]p7�������6���2�R��� >�GFaS5O���rc����B)6���M�7a���FB�L��՘����2n>�,ŇP��;�TϏ�y�_E�?W��?��U�Px�3U�D��kH����@���@ny�6r���E!�p�Ў��m�o�[P�)���Rche5��Ɠ[�^fY�A:y=6�������ȳ�dH��j�JB�z�����?����Iu��[��4ԝ�RUj���A	�R��b˦8�:�sl�y���[���TS�/�m���:��Jߖ?
��K� G�M�E?ǳl��88ǂ�6��c� c�1i�y"�c<��b�f���v��>���	~��l��f�(UQ��6ϸ�K�& �.�ۋTe�
�*P� P;��3���:�f�����+�*hP)����9A�15#P��y÷��>���6z{�g�����{��*T�2�>Tc�)��B5��-0�.n���jJm!��Q�j[�ԇ���FT���~�:��p���'��iA���F� P�b''��D��|@��ژ�>p�,�5�WT��G��R	 ��4�1�A��*�A�eI�f�� �
d{M�� + 9X�A�)�rƧ��Y�kα�0���1m
�Fi�c(b� ��x�U���c,*��,���Q(X�c kNϤ���>�d��G��������A�Q(X�/pQ�������YB�(L�����^���K:.���B��(�*��FT����D.�9��h����<.��
�(��ҠFuTuHI�e�
m��Z���Q�V �(2N���X��?�2H���um��W�W�)��~(\�5dC�K(d�j�#MgB��DH�u��ڣ}h�6jG�@c�BF�FW�HәФ��7s�p�슠}p�a�78�'����qy(�:G�.<@� ��)��NDQE�d}�H�r����l���e��<��Z~R53�_�D����W�UaZ�f�������:,����W������?��UgܾH�PȌB|��l�Qops�
�HV&$�z��0��ݝ�r4�t*�N`P*�)������O����Br�ǧ��^�R���H�pȔBM���;mz�_��Ȝ 7G�1[�ly�#o�
�!s
I<,���,ڨ �����Q���;�a;*�p�@��C&�8e�y�����XH}�@�/�^	[��D��� �h�����G����ކl��� �c�='
�0�üz��Z*{�5�0��Q��֫/�����r�^n��i-�9ul�f�Ǉǂ��y]��I�Y:�?9�Ĕ�[9�!������Z�����â����ҟ��ꛫ˫��Ʒx���u7W�Շ����e~�پ����>[Z.��|�-NyB5�4QBr%1"R���ޢ��@B%T��cB����D�p�����k� �{y�R��%?�(������p聠r�y��Ӕ"�(j�Z����Z=���T�Iģ�h�<���HT��ޯ?�aŊ���"���&J�H�u"��N������^����č���뫗��%L�Wޔ���?� 8�D2�'z��5��G���������8Q\?�I�ۑ���7��X�uϖ%5����� �BԞ�Q���A�)B��>,����3]~�SMե�
�T���AU�w���D�Y���a��,�5���z����6A�؁�L�5<���<����F���ײ�QڞT�(;k��`J����B͠�ee�����Mv����)[\?jZ������C���E��}s�Z�����lPS���f��׾O/S� J$�\�?P��K�)��=j�ʵw��)���~bS��&���8�{][o�Ȁ���c�?���l�\~��u[q�V`�>}���-�	����������z��Н�i�_��zq�=����w���7e
��5w����s��8FZ#�*n�7����E�1�f�7�?p܀	tjH(��Co [A����P����f�zۇ��Q�]����E ��D��J ݙ �I�����ϫ�x�;��❶�E���n�W_�y�N���5�"�Ճ���������,�Y~�f ��86�����`;А��h\�Nm��L���L�a�r$�~�m^o���������h"��>����og��,�^F8شW��^�^�����i���m�B�#b4:��/PD{�Ǘ��f��J����uw�:Q���C/���$W����FT�r�SI��__�D��S�b���Q��Iy�飬~�&!�����ʹ�����ڤ[@����]]�A��E�SQ�Su*b]~.Z����	���r@����Ic	�K��6�@�z��`�7�@ cKp��|���y�b�m{�X<��o�����@#ƭ�d�\��h;ڊ�0��~��y��=��T��
ҥ�[�w옧ю�f���ؚ���UC93�r���^�}�^10���1>�����0��Vsύ�T�����F��}d^���3��k���13n7?�1�f<;3>�}��C��e���c�$���̘�S&S��͌ۉL�0�v���h�s3cvN�HB�͌��H�S0�vK�n�(����؛|8)3�63f!f�����軱�h�s3cz^G<f3cbƐ�"�A�3ьgg��u��63!fZ&��2u�XF3����:�	��3�D*�&Rcuvf���gM���Q	�Q�7��bu~v|^g<{�hP"�B"�։�뷆j�*�|�|�$Gͦr�N?�j�ó���ԟM�����N�Y���=��O�*rB��T��3�:mSkB�dT)dT�7��bJuv����y�ZS�($�J!�J�9U��s3duVnjͩ���*��*�&UQ̪�Ύ���M�IU�U��U�ެ*�iչ�q{2ډ۱5��BҪҪԛVE1�:;;>���5��B��ԛWE1�:7;�uγ�UQHb�Bb�z�(fV�f����y�~�!�U��J�\��6����!��v�]��ϫ?�uy�^fmy�J��Y8���z��EN�r�OQi>e���~�����aF�$[fU_�|��V:�:Tp�.G��?�=
�r�r�r��z�h����K���k��;V36[�v��4���{���-��s%��߷�q`�[�޷�q�������oh��[S�1�o�)� )�+���c�<��O�"��Ow1E�O2\q>��G哊-���'�'�+=���6�9�Ç3���2�RP��/�w����h ���@ڇ3:���ԣ�:dx�j�5	��Bb���6y$�y���'��a�{X�@�w$R�̕~q���}���G���%i��J��C��s�&�!����ZFb��s3_���e�m8y�{m
�Uf��r���ˈ��Q��#ڡa��w	i�?���]=gIZ[��Q�������@����u�������߿�Vam��]^]��_֭����T?=�D��Nޞ���t�ٶ���C�c�_��{���9>��s{� �:�Q�6�BI_m�R\�񭝗�����	8�A�=�t�E��g#d��#O��O$�3u0E��]b�.�b�<�"��q��Y�Y��]|Ԯ�b�I�2��I��yY�y�Qq�,i�{�C��,�F����W}�7��c�� 9�H��E����Uᕰ�&h^1pp	d�<����*���eA�"k��CtQX������Ѯ�vc�Cb�b>1F	�~Y�������cZgw���akB�g�s;:뿯��f����Z�)+��ō���]P��2a��$��	wE⅘���q��N7D}�No�Ҹ��.D���fԟr󩍺�    6��Cl\F����9۸w�m>���6"RIBl\E����m�'�q�qqx���!6��h�33�|ffFN}F�K_m䠄�,��Q4�y_�qr#w�k#'�7rP�Hd�8�܌����]�������-R9�F>7#�K�Nn��k���F� ~����e����aQv�_T��ŕ^��Vj^��뫗����o_yS���4pK�> ��NpGd쀻\@�_�/������U��F%noh~[ �R�z�_W��|�IJ�/<F�J�� t�����	�}˓Ju}{q� K�����6�A��_��B�H���_�g�OYl6�g���͆X@r���&9�FC��>'�HQF��4� i�!e��}E��	"M�U\R�ݹE*v�⯫�|[��/�w�~
ٺ�5�k&�F��d������W�`� ���P[Ӽ^�>��z��p�Q���������[͗_��O�<預A����,�}o��������߲o:kR׆m,�`�|��{Z������ϟ��O,��TO1�#����A��U���x�&uO��ZPۙ�� v�z���I���Yz_��$,�^kX:���!��\}�MK��fg�/�w����ҽ-�Ĕ�s�i�,Z��,�O�t�.C,��g�TU=ڋGU���~m�p�.{��]��Y����ry�@8�n��'ޭWA��r�m6o5����n5��o5*�V#�t�4����G~K���f���C4M,���)Kwu`7-]FK����xH���B�����)Kw�27-=�����	��U�aZ��7$@S��I�w���ԏٌ��fP�y�>�2��+X�V�v$���wg��l~g� 4d�V�bP:�/
|9S��;�V��ܮv쨾��M�D!砌��#B�����O�a��kn���e����y���W�>�)�p�0��b��r�ܣєDҔ�{ID�E?K��0��w�F�&�k��-���{7 �>��I��Ope�ǥ��$��LЗ8ġ�$�$�9���3��<}���f��3]l~��l�3� ���X�����șG^�\�Y�b��������U��&��+m�Y���x��v�t�,2r�FX���UX��d�_{e�A�e�B:0F� ���y�y����::�`0����='�g������i����ǥ)OOF
�%�j/.>�$����RI�G����'!7��������S���aJᮊ�c�񓉛S���]c����G{���"~z����������/�6 9�Ң_����
�O��+��#aiu����E ���2���f�p�l���]6B�;�=�֙ ���9��6�� ������F�ϡiݢ�h����1�mTo6ĭ���)��Ɣ.��>������������p}���%fuV�E��W�^�j�)}c�����T��622�e�3��^��6����o�|�D{H~x,���|��g�3��a�H���s��N����rhQ��4�r�P�]��0 �V\�%4HȥAj����i��\Ad��&�;Ne{(�~����h� �^��v��B.��A1�#��y�G�v��$E �B.IW���Dn*�eBV �H�F�1oE5�ܶC�s��ʎe{!��r��oBT3�nw�AD�]"�tсF���;!��j����Ub�a� �Mm�B9��[�"��L��Q�_B6׈B2Q�jJ�8 �^C\��r���.�X��
#['��B�}��Ձ��4em*cکpd	uo3]:�Խ���Jv�H���sh���h(���PsӉ�^nta8@�.���] w���1��ER�Ҫw�~d���u���ߞ��m�jz�����`]����t�fF@ ��5� ġR���z��&I�t��wM��KRx��C@"
u�sݽ�Ń�e�[d{��{s����V���n�8TN��n&r��������HP_a��ju�Zg��pj�U���C�A��+���G7bU5����B��(�X�By5�[��{T��Jԑ�|��FG�Q)Y�y2.����'ă���)�m�h�΍	ؿB[���SC5�2%�	��q{-���Rة��������I�v�v6���;$�S.sz��.��,/�^Ā*���&aq
�tF�!=KgJ�Ҫ�c;��%��"N�U�qltr�Ȟ�`Ud#�����%1V����B6��N$[�)�j��l��<��C�uhl�q���"N����ay�xw���O�C��i*���Uo�E�nǷ:�β�Y�i�%��N�.��(4t��V�Y �X��/��6s�K��"N�W`t��� C���iݦ]�u0+���s{q���Eĥ/z���~��X�s7<w�"�����z�t@�pXD�s�d�B����+�!�B@�C\��
�語[�Wz3��q�Jہ�Z3��uB' �!.�̷��C�'N@n��'>�$�RC6$��D\��:��HT�Q\�~�-ĥl1q����P1{w��u�#3�{Р��B���w������E���B]�[��F\�>���-E%��C�M�P�C�����.�(�A�KRa�ZS�� �$V	Vn���mQO/�ɡ��9�!��@���4��1�K���(��"M�ȴ⒅�t��uH0	ZwkGA[A]ڊ
�8Z��Ex�c�����|�(�
��(�8D��l��{���q��9X@Ae@]*���j��.���Hڤ~X�ž���̝	u�AR���5��G�#�����	A�#ρ�ٻg�0)�{��SWֿ'�G�H�1��p��S��τ�= �O]|��=�+�d1�x��Õ��
�)�RI��{���d?u%�_�~�=c�a�����BC�)'�Z��с�m�c�Y��s}�Bm�v�fG!�O])�ѧ<>��f�Y�a�i�%�fd��+ӿ�)F�N���ֿM�5}��ll�Lk� ��a�^��{�������ۛ���}�75�m��녤K'�۬L�E7
� �oN�i��k5-�+���l; �
�U�������k�AJ��qc�9~�@O�\z�-e1zy
x�����T7�bJN�p)*��a��B���ȁ�O�
�RU�PD�����6f�p\=����	�
�W����{X�m��s���ЦDR�I�l@�z�L�i�rgˡ�"����j�0������b��y��(I1+���/<Sg�h�IW�C��7�K�����)S���WG;���9%N�:�`��y0�y0�̣AKtM�C�Qܡ�L��S�'Y�*$����A9P�0�*�!���$}
���dM�3�}��m]/H��]��\Ґ|Y�M\��kL�osL�ံ�=��2�9�!�	=#F�i��P���1O9 �Pd�ZBDQ*1��|�wJFJ���h�|�$��_j>���"Ml��o�f�A�����胞#X1,X?$�q@ܥNؗ�]���S���=�#ړ�=[}��lܬ��q��_�H�z�U��O%@Iߚ�q �e���YHh��^.#�[c�_~y�2�����1�9p��h�N,BUa��۞������c�A�Tݨ`�Sw�(rL㤷)�D�'5�4��&5Ro����k˸s��}�bg��I��֙q�[p��؊.0"���J9;<��&#�K}qPdp�"����&��#��(��p��%���ˁs�Uo����9�r�YL���^�z>�k�pi٥4mwi;L�'������L:ow>nQO�<
�\Ta��Q��߮^�iN��}�?�g�Ż�6��O��zqy����|>�Z�j�?������Q�������pb99��������H���7�Їӈ�̲&�UDB@
չ�vk�!�O�%x*�O�qL�vd�� ���b�����������t�'�ޥ���,lk��G�(�3�����)ew)�L
�0�8��]`�m���n	;?
��n	�v����{���G�LʰH�P�e�Kv��P���;o �~�Kh��l�hK[��-u @&\"�&e�aF؂`�}�;�42�;� #.�y���~����!���̆�0d*��ۘ:����    ���0d��2a��u������������v�ClQK*\b3��iF4��9P�6���ώn-F�� F.1Z�q�N���I7X��p��8��Tv�jW�u�l/� 2M0Y�C�pIך$FW��a�xm<o"wj׵�����0�
�7�R�}�z��U�1j;%ȸo�k��X���	(���dK�w�����[{	��B�Cy���:��&݄K���,��H[m���Y�n*����T9
݂H��@5��9%�i�B�*��Zq[5`��uМ��s�}��Uh�kc��IS�Zwuv��.EO���"S'����=��ӥI��H��Mv��\\^��<��}�m�@����W	��!3��(�������ZkQ��M%#A%#]*���ǆ�SX~���3�"��4z1����tNfj�G�Dq�&�6R� O�.yJ���`��L��L��ٗ��aH�ܥ�z ��01t�y�t�C�LD1���	��D��1��m$8�(����Q�Y7�WH���� ֟'2�E�F)���3]$�"�K�%(�NbW5p6E�Y�{ڵ��"�n�\c'�o�X��H�KrP���s%&���tN�5��0Y|��K\�&[�q�=|�M�aQ	e��mE�b;1p'�?5i�U���2C�^���P3&v�C%!�/]�����"H�&3uZm��Ս��c����t	�d�Mv���f���Y��D'6{%th'T�`�K�����3o �b���A���*�������[Х,:����7P����s� 2�)�h恑�'�'|8�[�Pٞ�ю��]�8��4eo��YD�={kS�=T��?(Bg�)A(��F\t�<?x��-��S��\�7�Ot����'b/��fèڳ���|��]=l�u�{!��1����gX��H������أikt����)�y�Iĵ���f��m�rj����}��x{b��B
((M���I�ۅٛ�wH����/WR�Ih�.�謚�� m�-ݚ���-dR �RNYT��|�7��"�%K�JH`��$�qĻ�蘒v�Q�$|��v��V�)��Ȍ]+�Drx'7mm=�O+��o0�u w�r~�1+�բ��f@e{i���[�`��-��o5؋>18@�1����q=����!@�?�r�?	�rJ�*&������O1V�?�]i{]ޔ/�IX��H��c���c�%����w��6$$���k�z��}���n��棆�&�;ۺ�;4������Z�f�d�i��s|Pwi(�V9f{��n5t�Qv���X�v�Ƹ�*vS_OA����_��}���3~
r3唛U��f3S:�ޢ���	��ˀ���ΐt[V���V�S�G�9���"�Ou�r����}jD- \S�<�J������S��l,�ق�w\hs;��*}�?r���ܬ���������;��3����|#i�߫���Y?m��C 3~�i�F��zԌ4�J�2�T�2Q<Ҵ\ִ\^��n�r�=d�J;i9(�tgP�?«媰��ۅ�4���������=_��C��}���Rw>���}�Ңx싄�"��h�&oʹ�,u����KE��VY^�SD��xz�"�TE,� �S�pƴєLʄ������3�K�|�^�$�u���š�k/#p�^,����)I�*�k罋~��s���E�A�|�C�t@N��v��*�c�zZvoU�蒾�]��ݞ��tJ��e����,T�2v��8J���M̢����h;)'�?���x>��n-�f��ߗ/w����KS�
���fӦ�V�ҽ�$�ԹXm��2�|5�O���Tl�>�,��[���!:�gB�i�Ն;&:��e�������o"@G��ǲ� R�!�h����U�.E:� ��B%FW��ں=kP�U��DnOAl�;K?�ҾqO����#<�1����ew\���♳(��C�]=*0V���6d������Z2���gl6���]�M��b{Ow&����"6���� ];������V�����#�!PF �2��"�N��v۾���lr&\��z�HL`6�	P, �b�d"=��o���voV4�	�P�g9=�Q�1%u�5�鐡L� 95 ����!�4L��T����0�Qэ�g��:�C���H�Z�jTh��$R\��7h $��G���XqIi4J��M������J��c�ȕP��e�m>E3Y�f 7����i�Փ�� ��R�9Sت�/ހ(���w�ʽW�Q��W�_�K��^~�x�����1�b�R1Q����Z���~m�Ǻ����A�������L{�k ����9������I�i�jO��ȕ���O�!VGO\��Խ��-.���q���ԋ9����Wx�/�=P��_�y�_�̡ę�J�����۶�����o7/no�������]>��Z:\�3�;��l
���Jx�3Mri2�w���~&7��}����N�=p�7v�õ6}���> ���$%M1�6W�X��-�^���`�Z��H��ۈ�3zd�&@�� ��.��AEt0��㛮��u�>3�9O�h�SѱE-GS�?%�.��%�(�I��R%G�*����8�-Xd?,f�-w9 ��.��AEt9����r�����ة��N�l�d�2��f�4#o��/��}����.��D��H�d��Q�(�>kvE��:h�fES��kX�ow)�� �.�H���p�'R)�����\-�A5�ݪ���?�?"D�ݵɁ�g���DO.�Ů��Ũ9iHt�T���\얀TD��<h�
#k��9�W���9i����D�����z��j�_�~�e����Z�>,�no^f�O��)=\~����/B���2��2v�_�Y����*�'��!����-��=�<S�vf���%�Pڕ?����7�r�ĝ;Rb�x�|�f���T���.�l��/q�M Z^�Q\a�׋k	���w޸ADt�FQ>�o�;a�L��ŕ@N��s� N�ϒ��[�ڈA�8�$S�Q�3'lRѺ�
T��2��@>����"�+y6``���=�g"x7nv?�@���~��Z��.��R@�7�~����U6y|�8S�ihl_��TF��Z�H������Ct+τ
�S��|�?�/qf}�C���G �K�2�I1���\�'}�4I_I_җ��Cy@�9�K�������GU���ﯯ^�[(	 �����j�_n�y_�]��y���?���P�<\�W���dn��ӿ#wc��n�������&O�ǻٮw�=[�������%MA ،��(zGaM�<&�2��O�^̺]Ik��=��㣠�	�	�/H����_�TDbx"*g�����"h
zڧ)Ѝ)�9����!%2����� f��}ٖhx(���}J`!��g�BT�9��K�1;'�((B�S�/��2[���b�勇~�m�[?ҒQ/��T^���/	���a�f��8���uV
�T�,��j^^� G:�ԙ48��*��ND9����Q0��;Ŕ�
�>ЬP�f�@�e�i��m��<N����	u�ĺO>Q��4�I�1	����h/lD��#y�!�0�)��P�eDԼ��h�u����]�lp��ɝS0�c�Y/S�L�A)kl��mG|�̩wο�ib�i]�M[6����:�d�/�^=��dnH�#{B�V7��Xd}ٱ� :�Ӵ��Q{Հ��⌲u��:��`񔷇�95�!r�l4Yԥ�����U�L, �CdDP�����:�W�Pq�b�� �$����抺4W5_1�1���2��STu,�a�)�O��ߔ������7li��8}�R;a����=$�Wd���ȱ�+�X�=\D���C��g�n��b.=�����V�cB{j��0w7�M��~�?o~Aə�7����z@X{���:��נ���@��\�&[��E�|��ۿ9\Ǡ��ݸ�$[�����彜���-��=,~����w�[�|��֋���O�k
� ��˖z�;��I����HE�(j=ch�    ��.Ȳ
��%�@���E�C(�Ki�#���,�C�Dy�iؙ���Oq�fWv�D{��ose�߲����ԇM��-xV;8�2q6-�
Pd1�"������a������̩��!��
�Y�(d�'��;��Nϡ��E�P3nu�1��V��g��b.�T�����E��G�T�U1��%��|�QUQ̡�F1�N�`m�j'�T;mQ�q�)�	����+/)*7�m<�Kr蝠���N@W{9l��W8�Y�މ9�Na�ME̼�ݓ��^����C�4.nEg��x6
'�T8m����)�����ȡ��C�{6�P9Q@��Nƾя��8蜸S�d=[���(�8�D�N�x6�5���ֳ���#��.u�Y���Ϧ�97Z�O��i�7m��V=�C�o����E�ˇ������Fp�"��W�ȁՖ�[��v�qvYhnW
kh�H{a��i�HĎjxzA��vY�>+"�ܬ��ܮ<*��B,�b5���iT�i!�]5X�jAN�::���4�U3J0;Ǽ��"H��K��e0zň�yHGϸ�(�xKgq�8�'mT�Ż|8v>槻��,�7IDuT��kI`EU���Ԇ*j��&>T9o��މ1-ꪧԍ�^�� �,chg� �βt��U��~�a�%{����2NR�$(���4�sCs!�S0�ߋ�&@v��ZȜ Y�=�Ѝ&��K�e��χ���W�����P��M����7� ��.����L\:C�&��h���c�ד�?<����%�u[�����eȝŨ�v c(E���Zt4�����X�<iM3������ή��f�3ve��; 
� ��3�@*:��4��p�(a�"�{��g�>�p)���!Fӓ��o�I�&������l�=�|�p�۫i��kf��;�B��ݲY�T¥���Cá�:�%ګi�1(��K�ՠ4�>&�'a����D���#&����tH��r�}�.5�
����_��'Ay%\ʫ.��OF�8oG�fMĨ�S�:K��Y���&7���$޷u�5���o[Ć��%:�_���_��h��|����� ��KPpE�`l��ή�:~�*)�RI�_�_�Y\n?���D���;i��	9��5b(h&u�FT���ru��>[�
��X�Y.�T������TU%��#M�eN߻WW?�z�[~�f�7w���Oˇ�W�Y.>9dI�3d�������n�����˯���տz!_��>n_�i�p��w̸q�7��n�+ζ�޻��4o�����l�co�v�;,u�V�'�7[˞$~�%�3׷���@7�W�~Ҹ�X/��ogطKY^,�M��~бha�'�9��u^��|���c�9��T@�(~�͎!�˖Y�b�X�)
3d7����7-�v�'�<5�z��]>24��ܛ#(��κ"v��]�#D,"3I��iQT1MCCw�4�!�1?@��᥃�(�%K�����#_Q(aݢ@�蓤K�d �n�,W2�j���_m[YU�ݦ9�I���=�+�Ho
�C�=}�$ȑ�K�dBC��RI�7��	r�;b�a�!�ۆ�:FH����7���;b#�Rt3B8�G�6I��I���T�2$]������ȅ:&���ӆ�S-I�h)8�z���ԃY�ż�0 3�F&��%&c�2u�B��t�ch��I�C�����b��W�*b�m7��J���iy��:{���67�F��ҷEщ�o��rx�V��L�5gpo���x�|���a!��a��o��M����y3��5�C�:�_������>�&=��	��2!�:K��4l<�v�Уlx������F������	���@%��Q���D$2$h���:q��!�:0������DO�%z�i���zx����n۽elM �ϱ�[���NL?�Nj�f�?l���W\֖��c����K�T�|�R�m��!l�󲴅��ƎC�萔K��mt~�U:�H�D���Q	�@���9\�pq���������0�?�"�Q�7%*�|��O���e	؋E���!��@���gUj��`��g�((P)�b�I\��E�B�C�J��_�7U�rH�Ff3i�wR$phȍ��a]��M�;�hM�}�8DH���H�@�:������!FV\�͛��K�&�i&=�W��DK�W4���#��R������ki�]}�r�_�o�«7۔K��d1n�"���Π�C9:z���pעB,�b��m�~\=İɔS������]El����d�4q�g��RvUg��������hnѾ��[��R.mT���/#h~��l�\�ev�Ԩ�Տh`6tRʥ�2��G�)y}[K;�lp�g6���6����]��YO ��j@c{qp�#h��K��&0:��p��(���鮎S��J"�.�����c̵�ٴ���!F�x���(��^�o��Z
=�sQ
�c���R����i�)LSM]�-2��ErN��:O��F��틨�j{�Y�{�XHq�����2��e��嘞~��P���)�R��y׋��)�Drx�f��a%H��i�|��P�Wn{�5��?�1�� s��,��mE���ټw��q��)`�&�|��]=l��z��/��m����A����k��bS1�����Z���~m���y����(��F����4d�����jޓ���۷��n�\��|�
�������F�o��p�Ht	�,$Fw8�){����	�Gb���8 �Tp1<%g��>W�� �W4y�@f��J"�|�H�0�/��Lsev������5ы�.xV.�!/�N�o� �S`����d�$J&�ڻh��3t��ګ��ר��S �S;Ԅ+z���i�;�H�8�����~�>� ���z!�����o�]=,�m�������FsCM���tH"�۬X�$uY1��$
�a�"��gڈ{K���w�U��M;�i�M�����o��1}���C^]�M��;y1�̋������"����a��bmզu����k+�'�WFCC�|��B�m7ۈ��6�s�u����흛v*xvO2Vș�� �Pφ��qk��[����y�l�&E�e�V���~��!���Qș�*!�U���Q����#R%g�}X0��� #w�>�4BΤ�F�:φ�1�<������),˛#��w 1���!�x��-_�L������H�m���146� 񂜉 �Ϝ7��"y`D,~R(ȕB��1�Ú�N���Q�n�)r�WUi���y��Ϥ[2G�LI
Ջ����2�Ӛ�b�吭�Ap�d��r�*��PnJ�P"�gh���ӯ8>{��_�-��^{U!K�^;���0�%�P��]���Q�3m�	�{"��ج|��Q�sL��W�(��v��^o$�7(��B���w�9o�����klM�s��C�@N�]�h:5�t{��B��?��w^�=�`'``{�/O��qp[����3�f@eInIjx^��z�b��&_�����jj�-�5#M7�����=ԜlW���տ��y�X/��3�ð\w�F���cb��e�&[��־�<���-�b�"z�=<J$eR�X���P@��]�3���1v
��Y�n��}N{ǎRڱÅ�����!3�0�'�K=Q#�1�x@���dZ�u���:�pVM�`�Cy�v�5�`d�9�$GfX�*f�5�_x2��弣G/[���1-�����%?���������n[��ڤOLj���*�'u����$H6���+^ ��?c\�h>��9v	H:KR��XcL���:�sRܖ�ب����R�[�� *��Sq�(!��1i��(������F�������Ĥ����ӳAR��0ؐ5jG@�A�B	4�pl���]�O��f���R�NjW@&A�2	,�pl�0����h��ۍyL��w�f�}�9hG2@�@��;&G�,rf�� �du���a��U+r�"    �� m�DE��o#4G���և)$���'7���t��!N ��X�1�f<;3�V���3��3��=i��;f����̌:��u,G�fn�f���H:5$�I;���4ꫧ���M�eq��m�ov2�7�5k9�f�ň��Q�_c�?/(�����TW��|���J��(2N�8����m�ַ�g�_��L�P��_��/*3nٽ�T0��7�ֆ}y��?-H�w�ջ��d�[8�*A�i+'	��n�����ž� �%
��J"���C�� Px�QU��k�20�I�?�I����t�=u5��,LEK�p�ݮO�������A����*�d^'��v�2�*i���}�?�gzo�ny��=||�h,.��k���Uū�z͋��w�e��a�Oxz���8=:�� �?�߶��om��%�q�^���r$uE:�r��Ni�Ļ���p�+/k.A��-Uf�?E�=����z���K�[���$��n�hW������m:��F�.ڛ�!��Ϧ!���Ib�>��t�4]�����ˌ]aӌ[���I�f^�a&-�pM}�nD�ӱhw��:엎g�����������1�<��+PQw�^��+!R!F*�w��Z/���JW�´^����d\����wR��q�����ߦ��=�4�5ߟ���z��|ך-93�u곹q���nA�-�@��f;��b1눚t�k��/a����CM7n&�]:g�uM�3-��c����Ss����iw�9e�����WNYBtLڢc�H��Vz0+��w�YՕH#rf��]����  �l��^I��	���y��U�V{%!�
!0e���J��Nh����"G�Wd�א�=1/e�y��ʢ�Ni�^	�I�+��k@��H�XW���ן���js������ϵ�n�����*P�*��tl�0n��/�{ x�ƚ�á����ϡ�N���h.�F����;']������a�l����{���,����ʟ�%�[>.o^�=d��n�����B����IG����S��^����f�u��+i����T��J���h�s�S4��m!��Pۧ�!���P��Pi4Թ*��Q̶��i�*�ưY��^��R8na�p�LY�{e/�h�{ˈ�K����.�W-��^{Qj_^���-��$t+S[�1����Uٳq�-~�|�\����i�Rwy���G��r,�����0:=\���e�)��n�l���=��tt�ܽ�J��ӣ��KZ&���v{�Ұi���nƄS���=���z��|�ɒH���~�gG�}o�����*��=���Z��+6�\�({w��W�_�K��.?�)�2GZ��� N�&�d��Gk�!�N�t�Bm�8����Q�)�X��9q��S0|�c�$��߿7:E÷�q&�>�g=�O�����������y�྆���y���h�s�uu��zk[h���uP�����.������r'o��P������H��3m}��~����%Zűjoc�Z[!ۣ�.�w�x>	������a���r����>wfu�Oo��\=�K~Z=m������r��+`Nx,ڭ�\������ � J��.����$'�e����<&@8Kw��0ǋnð��!~Z���"�
�`�ǯ����C"�0���d�dg��ʉ�Rx '$O�m�c*O���iN��Ĳ=+)��	v&œ��9li�\�	���3�!�V��!pr��AK=DX<HD�ܐ���p5>��C��ޭ�������ϙ>�|���o�d�mj�"��;ϲ0�����{g�bT�(�H��YV\�1�i����-�P&�Y���S.����~��9 a8.8�#�~0�=V�������P���{h4#�F3�@�'�s%aFnB��p�&@�m����O�[~��������a�����e<h����.���r��/ү��gm�������!��_! �k�О�d[v`�bh��oKt�7�1��_�|�ny����;ng{E!��ߊ�GW<�<O�BŜ�*A��#�*rp�lm�]Q���7�l�7H�v*߶����0txz��ħ��4�i�"U<�L\=b��^jCV���YfO�F���?-oޮ�������R�	,o���qx��\?�鿇��m"�CXqp��lg�?�Zؖ������˯���տzl _��>n_T}Dw���]H4T[�1�����7ϭ;���<T[�a����i��t��ݓ��!�o�	a�F�a��툵���ʅ�ml�B�$l{�[�x��4"����O�ϒ'���wm!����{��y���~�<�88^��`����3f�L� rՖ�ض���+n��Q|�^K��k�<E��)>��i�9A4OW�N�Uɴ��<������C׸�Zg����&�&W�� q1&	".N{��M�������cSRܾ���Eo/S��%0q�����|��2u�c����_�jeZ;��'��+%{�~�����~� #m�� F�Q�@2'���{4�Boǉ�����_�Ż;�)/���,3��7��M�P��FH������*�p����� Z�_T���:�gm�F7�@�L��mW�&+{�'ZTa�Y�o椗/��4����wVE�蠕�N�?c(D!S�y_�iq'x���3veA�ԮL N���Y��|y���r�!f�$ ����B��e<���u��J/����_�)�?���\�)��N���K�~�Y��>?=�%��	�zy�x������G��M���~�}ր�Y���~xA�'��U#$�^���"<��sv����� ��V� �i�믋?�>._���
����p#�s��`&1V�I�̙���E*�����	��PLK��F2�����Ķ�(��4"�C�5t��L0���D�,]'��A�8#�ē�����J�U}�~T�׾�G;kk���i��_��F�����/��-�UV�w	��ʹ\=>f�����?�C������Z���Qt�m0#���uPsiB��M�5*8$��@+���q|0����	q�R�}.�\F�zdD{rUƭ�!�"�"��}3�Y�]���x��G9���G�xy���"B�М�s�4�	tA��)��ӯO�7هuK�&����}���wz�GS7��(l(F���Kgj�@Ѓ�-N,�S�y�0����>wEb�����y������:�n�yx砛�=�\���H�_����?'w��hs0w�AE��?^=}\>�D��$4Ã$f�U� ч�Y����i��h]w}�Fl�`UC��y�w/���e�Um����������o�g}��m��v{柯��Z�0n32��ԕE���g��<Z+��W*/ ��v:�m�Ҹ������(����Wv���4� ����+���?O��T���d��r��K"��Ŝ\�Sq<����b4%�x���>{��S��BM�Zkcg�Z�J�Ǒ����0���u��xjy^����8e;�������@�p�V��[���g���C��A`O_�A^&Br~��ɹ8%�s. ����$��6�e�/~�֟�_�z���n�Z @x @��ɝ�SAa"�]Ȕ 4����{���pO2��e*���n�)�L�bp���JP�)S�)_�~w�"7T������Sf��ﲛ:���������'v�?Mo���7ۿq�Be$� �l��	�e���ʠmA�QvG��vĩ�9�n����x���D:΋��l�S|q�-���AwA�M/�ˊ͇��<�3�>>Po,f�!7ĩ�0�@�� ����PXo��6 ��x��h�q�+�Y�yb-�4��;��s�z�t���)���$�xBx�h��n�sr N�á (��������nOS^?^�鼫t�SȐ_�AC�-ݭJ��p�x�74���f`F��ĩS�Ѱs�.]�n�9��E:tM�s�N����@@�M�i�W���6���dw�����6д6��3��_=�W_������z��<��6��Y�c��/�U�_����Jb&�6}
�aO�O=f��>��
9G4x�    EW�,���F���;�������I�i|����h��)�w���_���)�9��½�z��\���L��mѲkzMZ�a�2>c��北^�.(/�t�]uN�������/T5%Ü�Q^I9�|˝�!�k(6��a��Z<dG�zYێ�IT1~�8�R�$'	CޝQ礚@�p=��Dc"����;�&h�9�����zq�<c ����l��M������E�"`��pd��-��%��Ç��~OwS˽�Bj`{�+�S���[��|(WSZʃ��P7!��iC�eϋ���Ea���U2yaF�P�!�C��POG�s�{�+Ȟ�Oq�g�S@NC=}@<JD��И�#q�j��H@eC��? ��X�5��Xj_��CrX}#�8��=��HkiL	����(2�뀪�z���1�g���QdK�s��R�����TY9���3�H0O�!�)����{�n���R�-1=0O��AN)�s����1w׊I|�����z�b��q�v�e�Y��E�u���)Џ�no��AXu����lR�a�����P#�ߖ�f@�l���)o�R^�����:eW^�����h�OA���=I�T�҂F�ރ;29��o�� �ѫ7�񀜀yex�Nܼ�n�N��x:��!�t������y�1O���b@R���8����9l��Y��A�'��yj���Q�4���W�1I���d���0�0o��x�y���h�s*�%h�Q$������-�a�����8%G�;�8`�>
�a9kX��l�)�]��^���,�\̌�Ǟ�oӣ���" ֛���p�������3���|p0���0��G<�D@��]�S*0*$m/� ��d�C�f�Л�ْq ��oqH���i?Ѐ"�N"�q�9u)��H�w���qPn')7��Çl���1y���AyD�s�%��Ǡ�4�%��s���'F��L\��#�La��X�	3fq(��կ/�O!�!Ǹ��`��c�D�.6�0���������w��Uu'����˷�9�	�F&:|® ْ�eK�^��i*���cv�GqT��a�o��y�|\޼�{�>���f�-v�˛퓎��[߽��w����1�u�F�g�j����&$ґ=���"\mJ��w^�����M믪�q��t� ,�b���C!G?)��9�cX�K�Ӳnd���a̐v����w������aq�]��[a��lo*�[O�nB�h�o��e3�f�IrB�������+c4�o. lEUj4�p���������_���S��~�����@
9��^����"Ғ6��ȉҏ׋���?�?�.My�x�0R��2��!�xi�Wgq�^��X�Z��v�y�\���*���!��|�b�d�	r^č�Ñ����<���8sTqÕ�6]�[k.�-�fY]쥷�i[�TF��8ũR� ��0���i\��C�}��_δz��nz�h }x0}hl����SG���:Y?uh���Զ�A�E���Va�H����Α��������BՖ3T!�e�U>����({G��4�?��� ��m����u&0��M����o�������֟������]���=LU�(����rf'����|w ����9��E"0�D�'-˥�G�γ�>�yJG�jl�l�Ϋꯛ<��?��J�l��ӣv.�qё���ޯ?��z�}X��Z7��S����O)��ҫ�c�R~)7/��6{�y�=>3�ɑ�P��S��P���Xވ��p=J��9�G2k����^�2U�&_ ���8���Cn��l-�NBH!��|����S�b�3�(���@2TVҔYY����@��}����,ב�\��j��T����"	��W'/���<K`N��c�����$�"UMo���K�������뗗}=�.���/p��S���[��|[GMn��t�!��,V�$uY,��
�K͋��Um��������z��罶�A�a����I�1�l�eV��]ڮ�����O�TNp�U�6�*��ʶ^������b/���0!avyu����{F�Ԇy����Ç<�6I�����=G���+��R[n�РS:z{����.޿� eL_���'��t�||���n����"�H�D��"���zSCR���B��)PBYJ�$,��Ta)	��"�6%�O�L� 뇘a�r,�=Ʀ�sx�᧾Be�HA�8Z��ٱ�V��P��T��*)��閠@B� �� Q ��"� ��}mNDW�OD6o�V#-�ۇ�-Z��~�d�G�1�c�t�҅MY��!{5	.B���j��"�Y�W�[�E�y�}
@T._f�����V�}���a��CN�GW�\�G��2k$�e�2Z&�z��Z*M��_����H���5�ۧ ���֫/�����r�^n�֬��ڍԹd��M.C���K�h��[�<��c�,�q��
Ľ�V�V��N$o��
J4�Q��z�Ζ�w�"Ɯ���W���:�^�{\..�]�oo��nEX�Kp��c�����B�"m�<&KX�S�W��
�Xe-X�+*�ҷЄI�kM��s2���Jˆ�,Z�Ggu��z�2/��-Dpe�9m�\����_&GC�����ŇN��J#>�G��TO�d�T�N�\]g�o�%��m�׈,�����^j�X~���W���9�8����Q����pa��hP&U�2FD4�!�l�Q�Q\Ö��͆��.f�#��"F0��	mW�d)�dBC�J��L[\(Ҵ���������H##C���1�T��������1�'X����֣?��c��~�F�=8z�>�r"'�G[�gu��2l.C�L��M_Fӟ���z��3}n5}9��S%$4���D�tr�i m$۠��'ͬ?]���xߙ�}������}G��r�~g�vuJ{������>�g��k�P;m��}�}G2�ڕ]�ý'���L��4�/<��,�Xk�)_,�;�˿XQ��)O�Q�1�0�CO)�)F�Ma�J�H��@"���*�R����LM��_I�~%�֦���j�B�|*9�\�UZ+g���E��** �<\�'Q1I8�ǁU�	�����D	�*��%Oy���y$�w��"M��FJz&�C<%��I2Ȝ��m��� ��:�H�� ����+�8e��i����?εI�@|�Y��#/>4�3���	k���"E�=щ߉��EC���.�;�ǷW����D����VI����������H��{I}>cڵ�нd5>�x�E�E$�B��=9���AO�=�B�37��}b�F�#��`B��HJ%K���DS�oJ��P�0`�7n`�#V3�(�D�j�W��x Z|6^�9���kl/���T�8�q#}IL��BEI�~�%MRL�)�d �5�� KD�fHM��W��EB�\���M�ڋT�Um�6���,��#BxE����<烥�*�gQ ���� KF�fHI�!�k>]ޥ�É2��r ��r��[d���YeԐq���(�Bp�c%Y9d)M0XoI�!$W��-� KE�fHNd#��%�kUYx.d�f��j/RM.E�L�\�%e�!�R�q��?p)�]o!]�%�7��iDk��:��5����z�8	k�Ə9���Y���^F3�QF>8��"�P�s���Rd�H�}�zw���	�"����9:��/0���ه�M��%�o9��"u�g�G$Azk��I�A\3��wXq�s7��>x��E��D�.M�{��8���~���'���u~Q���=�d������q���<�/���PƂ7������stk�iE�n*Cd ���`�rG���
K��j����b��@+0I��P*dJ��	�E!�+ �lS�k�BD�q`"�	��H�Q.�FH�s)�~�I@�^�q�wW�_��6�b�뚞�	�λ�f�=�\-W���?-�?�)�6ݼx���~�|�y��o��ln����n�⼜�pPM>�U/�8    �k�/�D%@G,5�.��vmS�3�U�� at��]FC?	C?|��n/c��ڂ����~�~���)�^��:���5t�FC?C?���)�Z%���6t�
�o�(�I:�K����K����qR��GC?C?�è�:7t	qK��:��~��oC��.S����b�:��~�.��0*���i����ں�왨wo�_j��~\���,����9%�P��ϻ�(�k�[�R����nn���L�֠��B~	�mzi���F�7U[��Q����>����r�M��������>rfV����B��{`���U�^�����O�ww��v?��.��߷��Z�����ǻmm�Q�l���m� "8TU�� �x������v���[�&��,�?=d_"�&#m?�Ɔ��¿�gG@�>�ɍFZ|W�Q�ذ�.*N�l`�U}n��������fs�p���N��#$B�P�{K�PʎA�1�	q�\��/*����`?C�%W�y������E�Ό�t�3�1�=D����0�,/�\�~����NC��������~��Gwg�8m̳���eu�H��s�}W�w�Z��?�h�ӹPE�0�� �~�ɖ�Q�ͷ�[*�Y*��zso%Y�/�o���*î฻��벉xL�KD��?�4OрJ6����n�m����W���ێ����EV�V�!��M�}��؊�)[���~� E ���dQ�T�cw+������|0A����q�9���~{x4A/�Ec�l��XlG���`�6ao��0[ܦ��P�.��|܄��S��ul�
)�5kM����q�^5]S�5�O����,�c$���GXtpao��f��ƣ���~NL����FM u����gYhG��ID׼�0��+�B�d���6�]`��w�C�=�0�"���1�
(�G�㐵�V� 6B�Ǩ����y�Su>�3jr_����� �wtT�oc򣋧;X�{6�G�!���~�.&�_�T�P>gX(M����~=���\}�����tJ.����rJ���@��[}=�Sr��
���"��Ϋ,|��]c�����w�Eם�c1������"qv^����+U@q���!�G �w7�cm��(���i���h$��ף����y�W�+ť}�iF�6��ڈ�1ǝ����&��ܴ�F[;D��ގȠ��o��#;=�╕?"y�TN{?�ޏO��J��w�?6�j�9gzGn`,܃;�@�Gr��n52H���$xU,&eK���f9yv��,��
�	���ڵZi��-��qq�D� �X&�l}�C(�k��S��"]�C���6)Ȝ7�0)%/�3<X4A�Ӣ��v��lPy��Hݫz��J$i1O��_����v�i6�5�4C㢟���6@<��/��\~�?�4],gju��@rBɸ���S)4B���IY|������%dr�!�X����3.0���r���%�0T+�Cp:��>H���gx,_ cr�c�~B�!�A s����{F�7��+��� �ja������}���]��G��nkXJ 7�"}�������_�'��'�(�I�Z�fX|{��~����β�{2�lXV���,$�����״We�U��`��8�X��K�2�c�}O���Z�q���`����B���
��Æ'~�pM��t?��4�;c��\`#��f|R���5�DhF���U����E�C "�|�,���;CI��'�z-��1��;Hԣ��q��>DP�y�c;BP�	q�+B~*�(-�˯��e��Y"<���8G���r����c�J/����L�!E�sb�1Ù�ꁕ��4/�-^���L�AfW�<�%gY�~�C��y$���P�Ze�� �X��� Ŋ�e`����GG� ���H��a���|>�ߋUj�;+y��� +(p|�(��՟��l3�*?n���7�7x@�k�J��f����c���ɟo��VS�-No-&��j�:j�x�)�C,2X��s�#
���=phB~,���U;���}����;��O�ڌ�a]�.�K���9�����ڛ⾳�������?�ǽ�ẘ����?-%���N���͗��"Ք��FlF��|u�8�(0hf� �q�.�wqlq��٢0���rs����������i���R��,IЈS���	��î:P;����L{8��ñ�}��)����o�����w���ϊ�j9���0H�!z��rn�a���{U������nhR�8_ �-\΍~X�ڻ��ލg�:��ƺw�F$k�	T�ǹaΌ,ܻ'�׵���m)p�/�G��#��P�����+A��[�o�~�ZA߭�O������|v_�Vj��zk/��i�
;�v��� �4d�g��>��p��|�����fy�z a�3S��nɯ`>�}_�e�)��.��0*?b�6�)t��"���1�H�r)�M�Q��ߥ �������TX�M���@�	�1'����&�h8��U���
)t�1��B�t��W`~�³�,m*����i!��3#�����8qM��?zpmc�~��!��%b��{�Q��v������U��\��^��������a���®N�#�'�٧B���
�#"�68����	D
)g���#��Ušp�!������ſg����TZ��P�G?x`vN���]n�r��y�]���Xp��X�oU�A-p��k ��2�z��.��K;5��K/��N�>kU��:·��p�Ǥ}/JA�|oG��.�IOw���}��kx>-V����ϳ��������y��M�|~hT�����Nq���6�;�,Y��Aŵ����@R�9_F�c<>�>��1����>���������s
+��wc�A�ы�����ǵE�1��v;p�ۡ�D
$�K�����px`:��<p�����b�1E��x�N_��D�S!N��bo;�!��A�}5)b�1���s8 �qBho��{�?|\�֗����.�X�� '4��0�	���Z�GX�64���EA�g�����pF:��R]���z�O?oUl���wv��jY��ȑ�������և���ӯ�Z���j����w��<��Y޷.�X�of�/����"e�1�F$ܣ�B'ХOxZj���A��@�m���;���H��g���#���F�t���A���?�����_�7�e>[\�m1K����G�U�3=�p�D#y�:������:����D�)gL��c���p8`:�v7�����⾐�|(V�t�0���i�Qu'��Jx�y�#�P	mj~S�	)n�/�_Á8��� �^�_��˅�ί?����}6�}��~K9�A����}儧��������P^{ԣ}�H��l�{ �����8�r���{^�>�S�j��nT׬)]徾�ٔ�&
���`Q���Gu1��w/�^M��Z�W3��B������6e����bU\ϋ��S�=�W���G�3(�Z3�V��������*�-,��3���?��:m�p���H�wG���t�?>ȄŤ�YxF<���(�8!P#�άy���b%�Z�~��F�)^�/��Á��D��6�Z|��ɔ��o�K�Pi�p��<���`�G%�f�of�b ŋ3�`����`8!��iJ��_��������v��!g=���R�nZуl�E9�$��[$�xq�0�?dx��#j߽͊�k�Z)H.?k5Zi�1,,��C�na':\ƅr�B��t��� �6�N6R,9c<FL����9ۻq�'壺���XJ�
��O\WOy��*�������x�r�������V�k;���䋱v�V1��*��K�I��O��t�J�2�e1_�Y��� ��D��=��֞���Z���R�>c���n����ځ ��_�ߋ���Y�u���H��Q3�p�K1��Z�����ׁ�% �-�	E�g����G�=�P�t��U ����J�\~�<    ��O��cr������c�[]J�aL@�@���C�$�����˺p8T:b�v/ �{����Kr-�q�E���r�M^�ݛ�A����]^巤	�4)J�/�N�����ڭ �n�ߋ�������*Ŋ!&SaLb��<��W�Pp���IAZ���P���K�����?��tB^�W[-��Ͷ��-a#B�k�(w�
.l�?�#���T��;B��/�kS�r3^I�.��n�����Nm��2�~���Sbz"�����W��YʬsB�}��3��u�֜��z���i��í|{��k�]�)i:L�!<�g��ߴV��SO�&�iX���j@�W��}
g*���K�@TtD�Ѐ~����OR�)7:PZ��PD^�b�˞Q����A����1�B�3�ߞa�"�C1����f��KG����f�>],䈭S��Kx#�	�4�2t#����A�ǀ~?� Ō�e`���?�Pxt�������b]�mN�'�k"�?38�4�@}{���e��-�E�����Ç��D�t���z�/l��e�ݿZ��UA�z����|o��f3������q��3,�����^�q��]���~ζr�*���<b�����S�>_F���s����^�!m;@~���B�b��^�^~�OS�8~�
:o%r�@�$P�OH;�߉�F!E�3�a�a�iL8(qC��ߜ��"A�~OmGl��AH�	��E��'�R��g��=��7��	 R�8[&�8<}#z��#�hk�[^��˷�b�evyu_���5� ���"|=���h��a��"mU@~���NΗ���O����C�u������rz�j��+�Jd�4oT����I#O�ffrk�ڮI�n`��L�n��9����;������������� ���u�Ns��I�.�irr��w�\F{5�߫!I��[ʏ�C� ���4��q�cP�ht
VL�tn���`����<���u��4��q�@�>x`���p�lG�����x�}������8�Z����P���ʁ�V���.���G��}��9����oU��������|�6��Râv֟@/^�l7!��.Q;w�?�//֎�wtlc����1����9�4�D�:����v�J�
��kO3_c��!�v��OO��I����-�o��h?E�s���ㄳ�ā������`�7�}w%�V��ϳ��۷�b��p�6�Z
6/mO�S����K��L0N� q�ߝRϹCf����>������Y�f��B����4��y;�3����/)�r'OX��H~:����L���1�=̮a�-�oYhb�b���0�h�t,����v,`�c��r��z��S�YLQ��Q���R`���Y��
q�<�.�w)lH1�!}� Ng���؎D;�ߙ�X�.��>�)ՏE��5H=搻<
>����ǣ�8�.�`��8�h[��� ��q�,�?hx
¤#fhO�{�;�c��+�Gx�}
g"Ϲ�f �T$����=��"��0� �9��0pt��1 ~������c��̟"���w�@މ8M����i��;)�7����d��_�� 4͘���O��rS,t;f������<�����	f�cTOlOp��?u�	����J����!~�L}�Nӛs���v���qo��hO�{2��)���Tg���\8���ǏѬ"�!�ĩ6d�!C3��c0���1c���H����Ƹ��>|L��@�,�ku��p#�ˋ�Ơ��l��nT�0�߇���"ę��с�\"c;2P���~���|>�wj�8�j�h�N��.uZ/%f����K�����Ζ��G���Pxt����~���ٷoӛb��^~�<�O>��Qy���K+!�9���I�j#�1��H�l� ���3�h�3ӏ�y�Q�ԏ�(�g|F��RS]�gя�j��;��^,n������i�3D1!ܤAN���`dץD]�a�8S���~F��4�9_�?���W�F:V��}A���)LaR�86���hfE���8�yF�#�YQm��~�E%�Η������`pt����~�����)@�"5�6C�>���Q��"/�EƮ
����c�y��΋)F�1���8�Q��*3U�7�_<�\(V2�zY3��k�0H��.o�����f	>�ߔ����/��t�ߺ#�%}J�(y�4ؕ;E�%�����5�ORp� �Seģo�'}�S�gtX��`��q�f���u��Q��A��(�M}{�OOߝg�*���&�N�G�s��]=��|z[|]O������ŴxH+��O�Q����R$���o�[��xF��Y ȿ�X��\�Q]�����	�ȭ�|y�Ռ޺�jZ_}��@��qe~jf֟犘���Q!�)0?aT2
��^A(��pr2�i׶�&9�or���HY䴆�ږP^�$s�$�H�����*�:6G �?A�@�-w';\ޣ�QG @/�����L���P#�q�Ru�5��^`{��м�6�h^~|�M�)�<����׏��������r�U�|$�n��m94�TP�c���@ �?�5 ��q���y�	�z���Ŝ���3P�����'�dk�4g/hΚ�%9S���M�֌Aśu�1�A�kQ�j�=Ũ!�E��䭀#@Y L{���av.}L�o��ˏ^�Ә�AH޵���'9��4H& ����Op[2�vY� .o����@�*h�!�	Os��y�t8�
�G� �!�{T�k��7�*�t���ɵ�H��ZL��H���H�grj@	�Z�@5�0?��8����9� d]9i���c*������Zm��A�=X��Z9.lf*�̥��F4o��ޞ�9f�_�������eqs1y�p_�_g�2��a�XL?��;Dx����5\���ƌ�LF���^+���zpm�k�go�.������XT΁j�\�Ej�>���ߋ��pQL��e�PyV)ݘ����:��3�	�g�=�*C��sB�s����=SD�cX{�4\/��bs�1��M�\�fѥ/46�as�9�aSM�iC,�h�<c97��0T��@�\y��L~']��x�L�������G�Q�����n�W��Ld�Q�h�
X�-�t��,E�#�\�SH0�8n}�E���m�?Y��T �3���+�_Λ2
��rĻcS{��TF���į=X��$�eÚ�M&�\jp�����g���H*?
�_>!4���Z��(<a�7� ���u��r��H.�s�3k�Ś%3�9�C�L��1sݛ���°6D��!�y������
h�"_��6��c�0�]T�H�]J��Cήz����(��Ɠ:�5���$T#R'3���]}�1�i�(�/o�d���O�u� ���g�Ln��3�b��	�T.[�\��p:��͗�o�����@9���O&)�}���J�cQ$ikX#�/��x�����2h�'� g�g��d *Y���*v�&��ؽ��`5�)/w3�3fy�b�SX�*p�U�|�p7/RǀA̮��XE�]�ڵ!�{fGAG�d��%E��z^4a���=Pv��9"����c.�*GE����<�i�6LȱӾQ���}�z���@�_�~z&�ٍ�=L�x;��ľ�A�%Z��b��	�H�\<�*�l���t����G�� �;��Hμ� 󲄉6?yߗ�(Q��l#�%��PY�m�`J���jdԸlf}f*���r��#L�6R�������&q7�#[���	O�H���6 Rfӌv�.l�/�w s���);����k�@e�҄0ôK\�H���V;�,P}��'�#j/(	�P�9�3�;F�� �� G����	;=푲9j�ᨺ�M��\��H^NG�@��R	�aR������Fѱ�$��"����~�&9=s�l���T��L��غp�/ˠ�6>���T[Y1    zY|*~L��!IC����1B!dTl�[�+�ܞ�D��D���X�3�1�i����\5��D'D{�,����`���#VL��J����5�>�M$`���{Y|�������>$�6J�*
��&Ս �W)u�.'~I��Pޙy72!��1��g}"H�^��XY~��4���j����ԅ+=��ZcԖ	�L��L@��0Ev�[�I�Ιew�â�����˹|3�hw��F�i�h��=ol�5�,�];�ꫴjWQi�	�%~K͎���T���{�N�Q� ���0��M�1����7EN�D{�l��Cbg-Ե�MY�UZ�>,�R�W
3�m$`������|%!�! ���
c((��s�(b��b�.���}7p!N7E{|���@X!I����b���h���LL����b�j6�^<|�N/&o�S>(�XY2�3�n�Q��oG��9���0'�1�_W�{{�sU�8�푲=.�Eu�	��J��/�f0[�1�t-]�
���ߗ7%_W���?����w�w#D���VLp�2FAؾ�v��J��	E{p\�0V�[�d.�jc@��	�N�,&�V��:ŤA��d�j����*
������#��%���[濞��i�h��mIj�5�+��6O諴�1�	��$`�xY,���m"i��9� �1���Nc��;�љ�����V~C�"�r��NC�E�x�=��e�h�%k��ݪ���Ξ�,�ɞWS7���`���\kr�gA>�����r�&{��(8v.��Ic��F�5y@�I6���j��=R6N��������J�HLCM�}$��xU����)�7�u]~�"���Kcf�J>�j����Hf��)���~��X�5L���a�h��݀�����Q�-�b�����:��.+�4`��X��Q1T����u��6v�&��~c R�]3�D�֪�s�y6G{���DsH�<���MJ�\����ITPm���ī�b�UP%�[�gx�}�b�O��S�fй�����P�[�=R�;�6��׾�왫����4��x�\����A�z�{gH@5�S�v�5���rL �`�M�'��Luw�)��5Ǫ����9����JO����-=�4���ക��on����}���ܧxt����<�<E��I:���<C4��K�v��T���f�{�������1�N����o��m���_g9�1���׉���ئ(E�_��X��s�<�0"�\y�ө�ԏ�P5�m����j���q�d/�l��Rcp�&0Y��~�U�����"��1RD�|s�Ep�3h��(�����B��[<"�d��Ɵ��=��ll�+;��~A����ƶ�r`��z*�̵Ơ�m4`�x����
���wytc��6|ym<�Ā!)HS��;��td�G�fɵ����8y}�VU+*ѡ4��x+Ǫ�Kqkи%W��;�:{6f���J o�g�e |�D.a`8����p`��nv�~�L����Hl��k�L
���0�-4`�x�����0��4~"r�x��f�9���Z1��XLe����c�h���l��ת��z���J��"��N����ji�H,6��e8��'|&����EXo�ſ�*��������R�CB2�_}g��~���,��'a�aj�rD�Ի��M��\dhL[0X���ny�VR�+�	w����u�Z�	b�7ث��p&�"�y�=���}���ݶuR�.��^���UZ�c��L�/X�}��a�(d��������<���0%�=��0e�Q��L~�|��8�4^�G��!�+Q^�& �����cޘ6^����xH����v:��":�1���*�	�(���ҳ��9;S��?��^B�����v��*�D^���i(���?��@�A�JBC���%�C_v
DR��/	� � �L�ٖ�\���Q�*Խ^j�U��zA)���h|���l�ڳ�/69��`�����{�H��A2}9�;�T�cw����A�9��InP^�\�wf0������L��@5ZA��D�Х.�>�M_��\rJ����J;*X�Qqu������KX���k��رH	�i�P�l�2��s��9{U8���v�k�]�*�zT^O;$X�!��1Og$;%�qswB}Y}�q�r ��X`&�c}s�����&+F]S��`ٛ��/X�*�f�jd���z����䴝���Wӯߦ�k*wC�=h�bv�ʛ>A�~	RZr���i��yDH{��b�����\����[d�G�>��OW���~������6>��/�[��9���$���of�L\�Ӽ��Ż�W{�,Զ^��9�W50��B��}�1�i�8.�>K���伄c��|�Aѝ����$ {7=�1`R\�=1lg B,��7��=V���t�~�ۤy��n����6
�����0^|(���x&�CN(g20������x�e@Z`���8�8���_~w=א��4��`���_�iF�>M���A����\ltڧ�>����ǇU�W[*�j'9�Jv��v�W�R�����J�u������2Y޳���n�ڃe���/�5�gbY�L��t�bc�Ӷ�u(��hާ��0�x�(~uǸ��'�D9=�����k��i����g�<6��0�A�9M�G�Do@���1i�x<>�S֟���A"t'����D��1̻�朕��"�O�=-t��h���T���b�9FU]z�u�/�b'jާ�<�֐�|+n;���1����pK����#D���;'9@�`�fNJy=�ʝn��@�qW��ҵѰ�H�Q́�\�3x��!1�h�8t�0 H�ns\Dc6��z ���i)bF�i`�S�I]����Es�,��1��Ӛ��s�1�i�8>,�i䠸!
� �v�Y�' ��*hO�0G��"�� I�*��=�s�6ڃcwKk�P���r$�,��f��qsq1@i��4��_�eצ��U���߮_G�6���\!J��0̡\�d���n�]�[���V����|Z.�Ջ(�<ϩy���5�/k�FsȚP=����� ��d H8�l��m�����N�֗�i��7��7��\��Z��d��3jo�o.ƂP���U'�Uۣ��ޜ���UF{ =t#��5Iy��e�C���̩0v߼�j0�%P�9x���S�*O�N  �K0a��x8_(%D�7���HH�4��v0l�[s��Ǣ3�XI���V�k]F$aB;8D���S���l:OAnh���ʵcQ=��^Bbu���ʌ ^�Xy�|l�Ü!�i�CA(��XZ�������h6&���>FN�a�$h�� e�'��͛��jχx>~Z-��88�*/����7,*��!v+QBT�����G�ݘ���[��+hdD�֫\p$u���lwʱ����O��.6C��80�Ҙ���]�k���͕�pN;G{���Af�&,�n�@*?>ɡD0ϭ��d��<� *�������vz���㧇�:/�7�MQ�]������P�m����� ����#1*"�����Gs����zus��r�*B)�s��, �\�T)p�F!��u[;��^�<+�_���_�������eqs1y�p_�_gӲ��a�XL?w)�e�b�u��m�����2�yt}a���4����㷦��0lu3�3`a���ڌ"f�g�g߾M�	���Bޥ	�<f.&�=#�(���O^�����K�f���s�T�h���~A�a�C�4�����H�!�XiU�8��j{�0�X ��|,�ڵ"��g�b�%�9��1�uTm>�Ϭ�8����ߺ�Rž.R�]P�C�y\�������X�r6KDy�Xd`����˜�{Hs�9�R��xi�xX�-���,��aC�0�S�㖈\dȾo���$�J� J�H��#�q�K{�N���lb#�aQ'pԑ�*1��N�T�+�s׌D �0�L�{�˳U�]*)��&�.P��1'W    k{WD5йW�T�
NG�\��e>��V&z�,��t�l�[ò�W�-�2q ���_B,G�9Ĉ��8�F0ϋ�4a80�9Pu�IDpĶ�*��[�q�>@D������2�Se��Y$6�4�MC�̙�Q��5��H%^y}��\����RDqvP9�ج�G��g��WO_�~zy�ۻO�4b�������tY~�3��uqS�&%S�6+�R�?^ўzs}��7��t��O�K��E��]�Kag<�k?�z�a.o�����O�Y'��@Kx�a�Y?��kƢ�w�$67L�6�HӮ2r۔jv��ۣg�Y�Ԫ~@c?r����{-��,c���\���TN� �����Y��k^��Kճ717 s8o�d���� ����ˡ)J�R�?C�N����$�π�(Z5"�������d�w囈e��W�R��Ҡ&-`pz�|�+&���swK� ��b݋�u@���P�A�`�Q��:<��Ps�ls���V2�eB*c��C����Ī)�>ޡ�;�����?,Ҭr�g�5�6�얮� G�{p
`�Q~�Th�lt����vN��=$� �=$��:<n�
ͱ�.�Z��xPU��*�Ć�Kp9 Xv�������"���J�p�Cr�	������Sj�%��gѹ���K8[����n�Qm�ܘ�dD��Y�b`,E�&�l�L�̗%T�́&����ӡ
�=b�N_B`��@&?A�紨��p��y R{�Ks�L`�Ƥ���|B�j�K�/�r�H!�����Q_���do���CMIs��|����OظDU-�;%9��#�9O2\���_jd㨿ƈ����<Ug:��	�6̩icZ.�7N���5:�4/�)���`u���>!�Z��Ļi���k)��t��R���Bc�lG������
%@�8W'�r�Կ\�K�ע�B��CR����Ë�	����5��r1�����UM��絤ۤ�o��ڥQ&׭.���9��3<��<�@��H��i^�By�0�\������_�?��~�)#������*1=���-��>�2Q;=:��\��N�Re��e��1��O�a3��RF(�,�4�q{������7��u�����Te��<Z'�4�>!���v�4����C�V�Y%3��|���$٪ G���p,E-htEZhL.�
ӗŗ��X��CbupVQ�s�J ����]�1Ή�U,H�UH�:j��LNw]s -���1���Ѫ��9gT^W�D m�RLH�3e�cD.�Xd�7
��\�-�n��6��r�r��9��;v�ex�vc%�9��ӱ�={I�>�V������˧!�Z�N1��?B ��l��e��eq���N.9U��d�%(c�x�=2�Cny���%��]$�a�S�j<�n�T�:�H~rΑx�H
�{�[�7_�=y��=$R0��ɧJ�a%���~w	���������|�v'���� 6�
w;59�P���O�.�3������r������Ϳ�Ȧ�7�)���w��,��l�	ݞ�n��~.�z��k%�`����_l�wt='���]��]��jL��K����	�֔���˦vt���돩$r��|U�?����)���<���qW��8�(�;�l!�F"PD����P�M����8T�8�i��Q�Q$6~�8T�1�	��_%#(��V{}���.����l��g�e1y�Z��)�E&;�����VXx*�/p�d�,H̴�����~I�:o��ڴ�c�Us*�"'�����b1'2�b瘔�Y��s���݋��h��M���Am$���g��0Uۇ�������B>3��E�馘��=n%f���ت`�o%�T�����n^ܦ��U"���U^�l�S%�����\��w|ȵl�l.�#9��p�V�8�=��Y%�t�(o��L����}�P�A9)w�lz1�?(2��3m������f9O���rg;���H�ݐ$j�7}�xT�h0pz�ڣgc���=�ǣ.Q �9A�ւ�0��@xe֋5�mx�ӫbU�NI���_I9��o��,���n	y���+։�Td�2<ؖ+��5����P�~����G��Y�c�h���)�M�#$�B� �jA"v��N&p2I�f�d]0�����s�ӻsdXp��*GlR;�T�y>^{ �Ys��t��M�l��q&��.��jkX�^M˯��P��jE<�;6ܠ��vb��q0��Ӣ�@{�v��(�d3��	�@,���1z<|ڢ�W��j��zީ$���<jީz���#�,o.&�T� � ̱�k����������c=#�FksL Ƞ��Bx}6��8���8DƮ	��1������rq�	*&"��y�Ra��)�R�?1�����|<\%	z�L�u����6G̞����m*ٙ!�N�&�>p{U��g�'p8�YLg��5?t�����Ų<�NA�<`D )6�mQp&�\ �1<�:��k�U��zAgh�CبS���I�� ��9�%�9��F"Y�Y�0�R�)�䵱�|T�x߾�4����K�\\>�%\w���R�[�=<�I!�\��'���xuW��>�]��g0�<{;�6���8�VC�,(� s�9�/����{�����\�
ط�{BՑ��Dk�����Xs �[�}Jis{�Ѫ��a�몧1�sh8�3�,�!����P��i0�O{����Kt���u�cS#ym�����Z�+�B�5�=�6w�nF՘l�À!�h�N��e^��O0`}RӔ�.�ġc"�C�.-�9�|��8 	9��Qx��K�*V~������auj�������YB4�U���t�U-83u���zc�3��T�$��4��&�6�����Pa�4~"�x�ƶ2��5��h��{Ug�� ����#h'��Ce��-Ǥޑ+�>ϸ\���
� LFC9�%#�67����T�\�{C�=�!(�5��\S�BV�Ȉ�P��\J���1α:��և:O>4�g�h<ixl]#��T���ͱ\�U�n���2(f�0��!�Gmv��ӻ�MZ�A&ܹi���}�W'��!�m�y��`���q��ڣ�0ַ���>�r<��=�*��,nגL	B�i::�MN(`rz��N��P �tB*���~r�%���Q�ـ"k�l0�/r���i�
l���z)�f�2:eR�r�(���ɅH�}*�	�N��OۜP��tU<$���f�VM̮��n�q�V�q`8�}��cgG��1�Տ���݄�B��j����T�֕sX<����7���Q]�}���窓��Ȕ#������?�ә���a�.�H���J-9�#}���S�E�_�������i:Qthw��X�C�PToHu$�Ns�dl�.Xyz�	y��Yi��vi�͚F��XZF�������mI��mf.�2�2X�& e�Z]�9΀>#vޢ-h(`A��\|/�:T�:Gt�j�:P�}fM�<��Zs��*y=�	yGl�c����4z�F�>tJdH��L���Ԩ����{'���}���3�����>S�|f��<	w7L ���x�aU9
�D��?��{�>�a��ڦDHN3u ���C�rT�(� Gç�J(`Tz_���C����T���I����J����(�JJ���኷�����Ŵ_�j��F1�h��{�\��;�ӺQSG+0��w��T;�P���~5��m*���!�9PV�sH����nYm5���8F�$0XwW�<�=z�w�Tv5u*�
I�\Rr�8dV{I�@�8gb^��˞62�������"���MA��Qmo���l���s�o�&b[!B�O��m�E�;*��Bs��3*V�U{��\$fX����	3��,Wg��D�Yc��6'�9�}6/։�A���p�1�E�m[�5��3����H/�Ba�/QӶ2D����@Me����?�TV�U��U�~d�������hd �Is�G��~�������l�3��	JE�!�3��t�IP��'��bՌE    �`l:��k�}�d��^%�c��Ѫ�?�	-̸�/Iɢ:�#�(�ږ�s(��e}�"�|T�����Ϧ[���՗���!��˪��[�f��SoѬFu��0�f50�}(֟?>��c�̛���»R��K�]�rR�7�ɕC�IL.��`wL�w�1�hW��/��g�Q�V}ǔ+*�0����rrCʢ�� v�����l�M9��)0��M �;j����GXF��|L"��7��K[s���Js�����"�<�S,�i:��VyX�p�0�A�m�����;�H��5�U���ʝ��8I���ه�=z6v�<,����+��ޭ�Y��R�7���G�����&(	޷�&q7T�	��44	7����4%��0���,�;J7	uڟ�#h��]�)��7��ŝ�	�,��j�\v�j4��cO��p��$ٓ!o��v)�3 �縴
�l�;&τ������6f�Rխq0
�}��h٣�^Љm�N���՚�n����1ɩ�T+<�v}�'��(pG}X.Ӟ���DA0�8���
N�@���|�0�K%"�$d�I���<�gl����Hǔ#�����L�W!�j�7�u���b����ڪ�	���÷�/�/%�H_�ظ��c�p7]M��\L'؀h�W��y�zҐ�ǪX����_~���p��.��������͇W��f� ����t_�%��tq�Z�u!�oh*����������oI��`0:�R$�z�ԙc������.�J�ϴ�
ֺ���4�����ݚ�'���OC $ � 1 �Y�� \=� ��� 5 �x h`� �+b�9�Q p�U5 ��+ h� 0 ��% F���� W�;�� `=� < � / �[��u8
 < & �g �@�  ���G���M@�E�� �k @ �#&`�U0ȏ� p�_3����C�� 0� ���2@�^p\�1� �W����h�;0 #f`�0�Ga���2؋��C�� 2�@���2��^t\�*� ������S;T�A*������.�uan/�Aυa`
�`��0H��13����(�a,�ƚ���00�a�Cm��������R��h��{.S;��A�������G)�`�X4��=W����*� ��G� ��_�H�Eby	6=���)��� Չ�L�Y|�J1V�˶����k��Ԋ��b�jţ�`�1<J����,
`��bh��p�j1L��1S �^ã��a�\��6�=׋�����0ՋGM�ދcx��1��%��\1��bw��T13h��1<J�K��l
z�CS3�;Ԍa�������h�Ec���1�jM��P5��j<j
�_�l�ecy	6=׍�����0Ս�L�u|��1��%��\9��rw��T95����R:��ұ����k��Ԏ��c�j�c���:>J��kǴ�:�vM��P;��v<f
����Ԏa�v���k��Ԏ��c�jǣ�`��1:J��k��^��k��Ԏ��c�j�#���1�x�����=W������(U����ޓ"t��1
��/��"�s��������ד?�N����K���%�0^�o�{�n�x{����h\�$N���{���[��ˁ��Ѹ�M�
���=
�u��S?�q�3�88�.������́��Ѹ
O�
�7�=
����SC�q54�88���{vk��/�T�X\�	��a�e�[�ޞA0�4WH �p* �߻�( �ֹ�gL%��U� L ��^*������ي��b�@8���{v���3����j� �O��[������)*���2HU��a܋�ݺ����*���2He�a���Ga���=�`��,��R]�t@�by���=�`��,��Ra�d@xD{ߣ��csߞQ0�eWZ��|:(����((���_��.��2L��Ba�+f�c�ߞQ0�eW_���|:(����((���gL���U�a�0�
�^5������1�3L5��Aa���GAaǮ�=�`��<��S��tPؿ��QPر�o�(�:3��3�Tg>!ƽlޱ�o�(�J3��4�Ti>�o|vl�3
����j�0՚O�q/�w��3
�����0U�O��������6�j3L���Aa�xGAaǞ��� L�Y�U�Q�6�
�^6�����6��j3J��A�1����®݁{��ԛE\��z�)�0�9�صEp�0 �k�a�����XH���զ56ymd�y]+^�ۈ�ټX}�N �����^\�����@)y�aJ:E�-�K@��4�+9��I}	�*#P98�ʽ-O�LA�)��&E�s��~z��~����߼{�k7Rz��{)Q%�'��\��f��"u��ޥ	���8�
�&��G��^�'(p�)pz�3#p�8K��}��8�8;���8�
�'��G���'(p�)p�x�C��j��xN����W/*yc�X���4BX�oB~�/��������yq��U�G�ی��;'���\��շ���rv[� h^.Na79jR X�s~qI���yS��W�����X.J2�p�"B���Iaz�Q��7���.R�z��^>���)��������M��$<4�����|y� �N�đ "�n�:"y���=�4@$������ � :y��=O �	8@� = ����{l�`'@�X !� �@'�wS���:B��� � :y��[QO �	>@� D< ���t�I�NO
!���� � :y���^O�N������ � :}��3���Q�� cK [�	��Ȼ��t�t"�#9��������X_�Q4���H��N��D_�mhĠ��ٛ��wg[#.*��Bx�	�� �,=8hN4�g��>�&-�Ma� �c�雷��@8	������ă �L �瘖B�{[�A@�%N������=*� `���'�YzM��^�x��x@ 	�� �<�{{FbA H�O�C§���Ǵ�^ػ����؝���K@х����tN��s����������7��T�p�ީ��S�흦��I����ф�w4��s��y@`�f|�T�g>ho�R<�IA<N
��'H�Yz���ޣX*�im��ֆ��d:�<�x��n��b��-���k�����6�-E- 䬿�>�\J�u�Z���D"z���#�=>��ϫ�!58�-��ȷ��83g!����qi��z�P�ý5΍�yH�<i|T?�6�8��po��qҸH���+��CY�}5���S=�k�I����Yuԗ��/�ո0�qḏ�T|^�+�$I����>.���3'�|����S�u��yM�Ih�o�����u�����r1�s���"��V~̇���zjr��[y�w���{9b�����Q��ӋK�g������;��f&��X�"�������~��:m����L��b�0!h���?����Ks��5��E���*�c���qg���l��o_��+ ����,��_�סcώP��f���},�aQ�P�Q�DlU�?��0��i�z�LªvaA��U\@������Y���L��Q�c��/2(�rع��7���>��D���G�(�~<��2��;7����C��c��q�xD�yw�wnf���,��@Z����T+�����7Xҿ���p�m'��y�E9��|k*� �K(B܉�_E��':R���'#��%��_?�J ΄ԓ�L�l�\[�q�@�OI4���s��%�S�M54P?4�0:�wwB����+ ױ�|ؤ��bm�@�4<�`y1T΋s��ÃP�vA�0�go)ĥxj߾����?)~@ş�_�0p���Q<�+�%ŏJ�g�R"t���xaf5"4�y�?"��?�9�ԅs:�x��y��c��Ǥ�ڠ����<^�f�"B3���Qi��6(*���,�ո    ���Wk��T����?�^|)V����������ð�~���+כl~���ӹD �R�	���/! ��;ț�i�����K��=m��iӟ�4�9c@��ރ�ly�j����?T.���̙O�H�e.�����US�3��X�*Gȕ'���ʗ��ȕ;�~\1�R�eRۖE�L�����A��R>l�`o��W[�o�~H�����v���(v��j��S~�څQ��]$��F��x2�`���'�<B���u��\�R;ɓ�ǣ�s�4���W�W;��UʇF�����r-W���M����l�y�a�������M׭m+�߰(������aa�@&�ځ��w�_�V#8ױ�}[4)AA|P�q-p�s�J^���kAr�ٰ��uA�Z{�b�����ߎ}����PE��!����`Bpo�AA�9nБ߉�����m��P]�fUn�+/�`�aP�)j����'�U�T����z}����n���o�:?�~�a�z�z�����% 8�����7��8=*�o���H	С�l`�B!�k�d��Z!����)�ޱ�;�A�8�}lz�{o�A�z�!�s{Gp���wb�Nv�;Iz��}�t���Q�N�zg��I/z�F�t�Ӥ���]�l~�ӣ蝆�.��wڋޙ�;�A�,�}tz�Y*�zgG�;�]�zg�����Γ�ǦwM�/x~����%؊�(^ŋ/��G�xo]ٯxqŋ��Ac�*�P<�Ud�0Z�0O����^������ֈ��Y�b/�F�`Ń���)�l��(�V��׭��:��Q<�A�0)~|��{�
�Q�*�Z��W���:��M��Pi���:>ţ�W��(�V,�d�\a/�VbO���Մ�����&����P;��XЋԍ����
��9HR���wE�y
z��q�8G��:KR�����E��	z��1�83���@I꣓��^��H}7'A/R7>�#PRI����٘�H}7A/R7g!�RyZ��O돰E�;zQ���8��R;HK��}��QԾ�y��Sc�qցR�iu:F��zyJw4��vc�q��v��#T������}G�@/j7�g(՞֨cT���tG�@/j7�S]<(�RG����GQ��f�>�Ό�Y��z�j��d?
ُ�4��70c`q�����-�q����f�,�> H��E?�L�H�����	 M����m)`�[
���8K`I�#���6lxs3�g. <�~ܢ�ˀ��e��ˀŹ�H����m7`#�pc7�qv�'ُ]��^������8�I�#���|n<΀ a���e?�-����,����T����mI��[�9����vN�w���'�i���Z��;��__?NW��hE��Z���i�p]�kr]�[��_�o���mq?]-�CP��z/�@�K*X7�Q�[��g�2��N@�:`���t֟��~3��ϖ�O��W94�����O�\���bu{����O��@^��8�~p�W��5� ����e]�XM�����>%���j���V/�'[U�)4�y���`I��*8g��yyX�Ǎ�)df��+��b��)�P���9zfS�|��ٯ@��Z=��s��ۋ�Հ��@��y㐹�#�#A���=��Λ�u)�:�~�q>�����g������������M���� P�����rq��+M2��p�99ø�}�Mo��$t���n>�z���q�F�&�^���_/���5�i_ip��>��%ϊD���B`(4�
�{���pC�V~9��N�Q �u�8�M�����聝����Ԛ��F苇��EhX��,>�|�pL8�^���p�x؅7�mp�����򾐋1F�#�=f�&R>w]=w���>�2g(�K^x ��GR��Ow��tr�����$���0g�:���ҧDvH¥xnσ�篓�G$r��9�9��	������|�)�>��?����Ě9����X�T݋��vz?��~^�?|���ݕ�1�d�be�u�+Ȼ��������/��E^K)���D��7��t��O�K��|wj`�WwW�R��ɱ⮻�9`���7�>ϖ��׏��:_����;�	gD�����nP,�y.t6q���J���d*w���58� �Q�Xɭe���#��9s��g�wc�y:�uR`���U	������B,K̈́&Ϫ�.�uZx����Uq�������/�W"�D�����r��v�5
�EQ4z��H1Ic_Su��ڬ:�E���W�kє`3,#_'u����:���)W���JȌ���}:�q���FdD2��S2��L'%���Y��թ��6?_���o�]�F���@m�`\P�	�Ƴy�����<���݋���ND�M'(ô��r�@�䙐W�YF/.!~N�#���}�� �����J�]ui$)Y/�?ך�����Jg�z�J\�GF��/}��?:����hujX��P>���{u�C�����I���>��R��Z�Պ!+�)V���W�����L�D��Hq$c��%"�׏`:���5 o�\�x�n"�$���N~7��\OH�4%o��ٍ\EOוP��X_�_^˕�z�!<�5;�����]bx^�gx$/��ݵ�̇�U��&v%0��/�FYy���s��!YK�!�̡�9�&��[�t�%�(2w��m�S�I	<�̑�9
�%��\�t_�����e�jȜZ2G�962���$��|�6k�(2w��2�;��ɜ����I���e��dr��΄h�<�[LL��ȜdN���-s�wa�E�.c�-sbWm��dΌ�Y@�,�|�2��ʜE�.K\C�ؒ9;�̹I(��"%�N2otǔR�p�!rDhwsL��&r*�o��?�}:��y�tb���(r�N���DJ'&��G�#O&:��L�G�&�ȷ��8�LL"��ǝJtv7�1����M*�o�q(��D>"��;���H�G�&�ȷ�8�HL"��ǝF�J#�#r�F��iDJ#&��G�#O"�%��I"��$"%��G$�q���R�{�ܘ�A���m9�mq�xX������.�o�k��C���_ D/�_�������	D�]}�bs�^�\:7YĦ9ݩs�t>F��<�����C�[�&�(P��Q��(u>�4��eێiĽunr�V;6��q��(u>�L���ڎ�Ľun҉�D�$��R��N&�%�ֹ�(Z� }:�I�c�����n;��ֹI*Z��|:gI����S��F};���9Dz~����6�bp�YLC�M7� <]�t6�(gݒ�)iy	� ��RiU��D�!M��ϥ���ߟ���`�%�xb)i�׏��3!%8#��K9.�a�� ��1����.��r�a���W�v�	���@����A;���a6�B�^.I�?�����Wy�f5��V������l�?7ζ�z�7�ܝ;NM'$b-�"��������C�@0� �% F��ٞ��p-�l0 �Bt !#bo{��@��o �P@�m���m  H@�oRi�@8w�j  d�@@�Ĉ����00.Ǐ�YT�E5L��1q��j��+�`�j�w�E5L��1q��j�6�`�jnռcQӢz�@�袚�p�E���EǢ�E���@'��Z�[T��3Pt,�QZT��]T;�� �ZT�<��Prl�����o��l�u���������-�M^�/�f��~�����y'A��xmk~r�#
��4(�]�8�j��\0C��[W�#d0�[�D��LP)�w�lȉ�"�9,��!������ 4�fDP@�eaL|�@�Q�ɗ�|Y���]w9b�)JŎR�9�5��(�q0��minIrb��2��9:�Ǩ��9��-B�#9o����Onj]v�v��5&�Z��S�n��$�ǈ�e���tu�l���\}����f7���m��5��,�kHƏ7��=�������=s��l�)�t�U��Q9c��-�,j�b.q�p5�yǄ������CBbH�
���0V(`7r4��n    0�j�0��B=�`,W���r�t��2�媷�5���t��vCM��u��z�Z�|�Mf0'a��L.�/qB�]2|�Q�G�=����&t͓���q|sk�G(.F�a��L��#�y��ε�gF�.�����0���$tQ'#���`�ޅ�9FP�ɨA����!��#$1rB���P;7ICr`F���1���|:[M����k�R��鿋Ž����gYo�0�箧��.��3�D�a.x&z�����`# �6��3Jt ���</"(��12\���mg��8���U�Z]}3�E7�;r\�vM���j��x1�s�u�c5+&)$�`��N0n ��u%�a��ݪ��yv�8;(go>�g��0�n�qa0�ȼ�J�����+na�VTX0A͒�Pe��W�e�:4?�]�tt�H�L���k���Ȑ���bq��~=���^8��ۯ����p�w�b�,U6��ȯ��{y%/���ҿ<߶G�e�U��:T��>&��BXF���~|���3y�i�0��4�[s���ʧ�������t.�*�J77�</���#\`޼M����B>ܝ��N� O�y�U,"�p�%�p�����{�������?o�f{=��"`7	醴	���� Z������s�:5uo�.����� P7oV��)$����7K�pH�Ǐ����&JfEx���	������~���Q!!�_��	�L�CA�r�7P�5�Iިdqk��z� �Z~������'IP��h��ť��R`�{��_����3�]�
�2Nhw��^g��;�S�p�[y��E����}N{g��:�-�n�ku�ܩn�'u�Jݽ��n�w����A�������Ǥ�3w��_�m+nh���I�c�y�K�{z+ndč��FI�c���)Q��^uy���Q7v�'u�I���v\u; {���Q7q��$u�Jݽo�=���G{=V�Ԩ���M��Ǥ���fW��s��nf����fIݣR���*Y�����mJ��]�D�T9*u��=����T��W*��刭Z�w>I���󳒵��8�-[s���n�wz|�G�e��ZvJ���럓�G��󺭋�'�W�C��*�a��_����ٍ�T)_�l���e���Ug�nҽ����Pr(�d����A!X�7TGv1����g蛈��0Jv�t�k�f����!i�G��!�g?�S�8O����*)e�%��!l
��*��(Vˇ�U2���v�m5�QG���P�W�P���=ǝ2�ǒyΝ2ǩJ��̱�J��%�%`����_~}^6D���ߍP�sZ��>,��̚�7{U��)��
��&
����{Ո��y�9	c �
M��ţl�G[��]��wz]��g�<���:u��T-r�⾩^��L�>��:���i��rq��+@d9�V��Ư��ӅhjZޠ�g�f���;	�u���O�����@>x(�ks�?����M���zi/��4�F�ۅ@��ĵ�Ir@��5nQw�ɍQ�[F��/^"��mq+�W���u�63-�A���z��jQ��b����t��X�Kk	�z��W8�cC���t�B�}P����NZ�?��}[�p�<���0y ُ�]�X(����Z�r{�MZ�m@t�r1t4t� @��Ę�`gD� 9u�=0�!���!��:AQ^l�H ��C��12$�� <T��؞��	�D��B���
�w$�A��!!R��l�ֱˋ�	j���H�(1*$ <$h	u�=#�,
	��(12$�� ��H�^� �x������/������y���t����W3�����t5]�L�Y_��կ��P��4�s*���V��s��;W
��s�s���̅AB�!R0�"����~�0�M���%ƅ��8p�aP^l�H���([OBbTH��� =�����1�8��D"E�Q!���d��&Ի� ��3���Ȑ8��P�&lL8�d �HQb\H��� �M�w�6&g2 8E��!q6&6��Mؘ�1����Ɔa���zѪ,m�����f߈���u���o�����vk?Z'�yF+��܎�E��7���8�Ϫ���៺v�z+��K���1���K�[
qIߘ	0sK�%�W�g��MʰS����7�h����I���>��j��a����o��X��/��ǫ}pV=��;�/�}b��$wj��I�#��Y5�:��>��}SH&��}��?^���Z��c�8��MŘ@��a����^k]�yj��׾)�־�%\ad ��Z����qjR�t{?aw�?U��x�Yz�:��{װ�I���]�ݙ�$��}^�L��/l���ۛƺ��I؃��R�ԙ��_�&	O��~ugᓲ�W��%ީ3񾷲�I���-\�9���(����̙V�_�&�ζwbugГ��W��%͙3i���Mz�mo��Ώ'e�@�終dΔ���6��M�\%e�H���F@���q���������cdn%̛(I2�̏�(D��|ɣun�&̛6I:���O��sg��:�&�½I���q��$�:��\ʣunR*ܛRI:���O��sgf��:7	�M�$��K�g���<ˣun��|��e6L:�����s����:7�e�vo�s�t>*��\�rܩs| ��,�uǸJ������D�NK�F�6�sST��W	�тp��P��� �����H ��3-A�P	��$���5�H$����,R�P���$S�����p�e,*c�S������p��.*t�S������p�+f*��S �f���p��2*��SB�MN$����,��P9��$ӂ^�-�j�'@O'z���D����g��O���Q>�3�M�������W�����AF3����K	vB����I�D 1,ęَ�����US��3�a� Ρ�B�N\40C��c���(�@�����<HO4���3k�#]���up(n����ά�l���Qp�/8��p(���3��O���A�ÖN\4pCCGp`�&i��1�p^�A�� �!�ו��a�����bvSH��<�������y˭j�Uc�y�z�p�l^��L�{y^e� ���  c�0�(g��(�6k�n�Iك��e����q���~�\|Z��J��G��kp�6,���d��3�J���������֓O��+$�ނAJp7�HHa$�7�����G��r4&�����=�Q�3,�`��!�g"�@��PaM8��\�U�%�~�zb_u�%hX�6KO�SaA��
$�#��m��z� J7 �4���Y��C����Nprn�_��]ȷg��lyX��X���
����Y%Ƚ���>;��q3_}�Ԅ�.Iu��ק�kV�(�r��=�&�ɞ�k&�|��F?}]=}����ďr/A�<�xX��g�y>�ϩ%�g�t��8�҉j��1XЄ�I`qV�%΃�7�� oL��#��gJ�o�\�x�n"#�����zv3S�z��M��~�����l!V�6�xw%a�W#�͢r�5�R�[K ��O���4y]��f7�����{y%/���ҿ<߬`���U�TG{9V�u�@߷ �oQظo�}Ka�}K=��oɿ�|�i&?���7�-��L~}߂�{5Y�o]]P9}�n]�o ֟��[=�[��q����Z8��K�>3(����;��B4`0�q2h�U*^��Ƞ�b�@	�SA��UZ^���D�5Z�*W԰��6�z���[h@!2@@��ZP��腜RР#@����;856��kA���7! s���ƶP\h�����FW�Hh��3�85�6h�4pB�T���t���g'�74L�	w�Zh�
N	��q^5'�9St��E'�>�9�1j4ά�����n]n�غ�_���Tqg����v��m�s�{%�.j�UrY˲䖪:;��7@�D<H<�
�{t�t(���x'&����h�6h���lи�0�)��O4� C#{�����5�0O��+�H��J8�x    �E���&sq����εK5e��X|{�6��uy�7��4�����y,���g��7�4K�z�N��޴��wm��QBAܼiK%,�n��(L����D�fb"�mSޠl�) �6'��\+oH���y���G��O�����˟�[��q/�rfO�T]��k�	��g���+��@j���!(WU)T
'D��/?S�A|�N�+�%��=J�.�G	A�¬� _'C�� �צE��y�ǅ+�D���Ё`�F@��9�A��%Q�6��BdV����$P8��60��AheҜ��Q���}Jf�)-� �� y�gY��4$r Uf�w j7�Y��*���M�����v�`���?m���=~G�������L�NJ��L��$*�ŕ�L�F"U\z�EuFZOAE�i��T;�Bȴ���nn�Tݸ����J����L66�ȶrZ�G|T���V_d�=>T�6�f1�����^`o:��X��<�z��_s�:�(|h��� F�8F������ n�Ds="pw�P�\,���>4��)�S���:"��bD��\�*q�	M�hG�k.؛����b^�'z���FיWܚye�α��󗺾����ۓ�:/��H�N����;U��`�vc��cgO�:�k	;�_���W��`/��_�è6/{��ϯj�&���ί�5u Z�w�Qo�Qo���G=G��)��zD9'F����?yR�����v'_��e�ƹ�.�[��m���7������>��pSԐ�qT���+.�l*t>���n��d��w�ۛ��~�l�D"��4�a��E�.��O�W���91k����*�)�C�R��IH�9?<��TpڱBQ��b�\Y֘ ����[�� r�'���O�;�LP���	�� �H �H����D��]��?���#3y���}t��o�u�G�xv��ų����R~yK��� �)@���*Y޾��^��J�r�uu�6���C�- �<F#������'e%K��)�(�#�����}�x�&���2{7@��������������Nƴ�O��O�j�x��r�])���N�� 4=6Ie�r�^ġ��\�1���s���p:��{�u��t��S���b.=?�K6��1�LN
�`��H���zq������ŷɗ/�9���oŢF���TGWԌ�޽\�l�w/5�O�'���w+z��l�p���x����7��k�p�}�"���W�L��k(��y�4�5�z?7��i�3^�+h1@J%Q8j�E�H��ATZ�Ѣ�luڮ�|����å�昧K���ʭ>�(�@1�Ts���,^&�mr�h�2�7x�=�=<��z�n���,7 �!Uq.����DC�	 ���F�EM�z2hb�d^V!X��Ku�Z����qm*ݩ�҅V��W�J�J�U�k�&e���tX̐��:��8(�/�_Pbx*?��aܓ�9(���\�?ݼ��У;��F���D�m��ڧz���� ����B����*{���~�o��F2� ~���8⿬��R���<s�ߢ	�칖=��=��_��5��]��d/��E��E������I=�:�o/{=���t�*���|������>�:�o){��4����߼x�ꇷ���$��mq����mr��u��OO����bb���?��C��B��.�]������`�"�w!p���pV��pd��_a8l]U�̹аWj�������C0�z�$8���@�>��Շ ����0	�E�� ��8�_�� ���"���;�$��@�¼>����$8#� �X� �������7�	�e$�i�{Z��v��8`05�M�-�y5F��qm^:���)G8b�{��_�Q���a����rE�j�D5�o>m�!�\_q���CX���÷����3(�mBG6C���b��@��`�b��B�8YR��@'m^�N֐:���E�p�/C�st~���G�.3	&{��懧���R2��r�6<�V�|����-7w�ۛ?��K���HNj�N|e�ǎ� 2Ҥ�`���-Q2�s�i�5L =L �0��#��#ZL�����X��aB��㈐�t&P�ac�-<l��ڒ��E�=R��F��a�d�z�n$=�>%�d�F�I�Q������e��ۯ��B<=%�5�I	���OS���Мيv�*{E�V�k��"6w�S�P�ÈY�+Ru�[�{b��Qͧ`�_���
�	N�EJ���ׯ���$4�@>����O`W�$z@e�tI�JZ�y�(d���'@�bE��S����kr���}Z�W_��6�}���F-_��m��EĔ��_���q*8�����7.D�
�fL-76��=��J*�U�)�Q{D�]f@J���y\��S�H��8��ͺGwoJ���͸���ؖ����H4F��#�Z;2��#�4�5�	���a��L�e��3�5�-�Hx�Dc`�?�	4<D#AZ"��ƵU�� �D���`z�k�o���~����[>�=&�H2�������G�0�.f/�^19�n��/ג�G� Q+��E�@۩�R��(�&�E�JJ6b�
`5�<�|�Jqe@b�cƀ�ُ��?9�irr\��m�D���$�y��2$�\0=0q�!�v(�.��2Uij�������}�.#�k#���<ў���*�(9Z�h~�M8*���-v�{.��r8�nv@�9ZZ�N� h�o�_�ԝ���R�Z�N�0H�o�_V.�n\P���.u���ꤎ���������j��u���봎����z��5/�c���9Z'Z�N�$h�s�_RM.�F���9Z�Z�N�4h�o��M�U���3�uV�u���/,6�V�C��k+	�YI��u�A�
�񐷙	�j+�sl%�Un	T��K֏�;��Խ�:�^I�&_ޘjq�WCk�j��\�uva���I��[%Dv��~c���7�3铷ٓ���%8W�$B���q��"����Xd�H��k���H�[&V((6l���I�E%�mw��7�n{g���V~�� �s��^aV�|
�W~~}]�"� ��Λo�r$-U�>�LIQ��<�V�CqXm�8ۇ+���=��:V��c׎����\�@���s�Й(�ƭ�m���=�������!G��؊N��l�#�4A�JP�)�%�<��Ҹ,���RF 6s�G��9�}Pp�=�rt(�xp��`��G��4s�P���|9iC���h|H>r虌�\��=�n�-�o��C����jWF4*xU������聅�>�kg�}�{�t�+f��{�eF�������ԃ�E�5ǯ�
��]��W�XVU�]ڨ�i�>,���l�F��U-��!J�	xu-��a��=�_L��_|IIJr��	*�䪊p�j]�]àk/t}Q�kԴy�D]#9e:ܯ�������fް��e�_�m�Mq�o�x�r�d���mo6��K�\��5�o��v�|���ʦ\ ����P�����j{ͬ���s߮d�%��Q�q|�\?��7^ܠ`�\���-��7��'��:�!�<��F%袚mސ�j��'!�33�!��x��<x�?��bBP$l��LŃ�b���P4�?��9yP@x(�Jv& #Z���%�U�W$����q*6��O���|<�/�ު��~�9F�\]� �*!� � �JѪy����)!���甉]�D�Č�R�*�h��7�헥����1Y�q�l] T>��P/ݦ/ݾ/��  N�h�`�g����/`(F�;J������&�;:�t���
P���RL^7Q��)����r�7��{�Hk�����N��� jaka �"�3̌�^�P������{��e���?�gԜ����[�Mm?o�VE��ح~j��k���+�"M�
\\��g�cN��{�הOaцC�zࡢY�7A�R�O�P��􆁔X��z�c�����h7���/�O[T=L��k�[u�<�9�    �cd�j��|�˗)��@C�@�:z��
t���J�p��$����(�O����K*L��f�34�O�G��,vk�N�YrQq���q+��Y��,	��\��0,�f�,i�Y�5Kݚ�A�Sk_X�e�LH[i�i�2�fY��䚽� ,U�M���f��,wk��N�Yta1��8 o�Y�5+ܚA�Sk^X&l�m4�B� ��� ��E{YA�x���l�Z�x�:�+X^����v��r�����R��Z��F�0�vr�^V ��ժV�a����\��e�b�j��V~�~���@0ĦV���XX�0���5���䢽�X�j��V�Ў�q�@�Ħ-��P�ꈁV�Ж���@��&�EbVK��Ā��@�'�)6�hمbVO�2ŀ6�@�)�+6�h�bVS�rŠv�`�+�+6�h/+�VS�2Š6�`�)�)6�h�eb���V�Ԟ���`��&�eb�j��V��sZX�ӾX'�/Y� �AE���.8�8B*����,�O�/�X|�n՟G1�qLcAc ��mW8�
�T�D��/��%����A�)��B����L,p<��?>���U��9 ��o d`@���3�*7s��N*4�(�(T􂂞���\�����@mY�q+e��}�a���S��RΥ��:|��k�PdTw�ǟI�����({ A�"
@9eh��{\}\-�o$k���a�l���:� �1�F��(�����Ј�&�$;Y��y���&믟��nӨ�'nJ��� �0�����i����ۇ���n	��\P5r1���A9�T|�`xh~o�zu�(C�:������Dռ@S�(�r�7�e���]U���O{׿�0D�CS�8�j������[�Ľ�_'+�j����?���{���I������Q5���?��\����O�����B��)���Y������ſ�k������W��8�i�'wտ��D�lLS�<�r�_r������W���j��A�S럝�R���2�M��j��!���(a4fHmvj�Ua�
�z��R���*X���m+X7�~��`�u���_h�97�7�'_>,w��/�����)?�huwo~:���1��'��ۯ��z��R_�8�7|ʏ���X��<�R�b�o����X�n��y�k���JC0��Cғ ��jXHG��"�3=p5��e�^I�lV�^�������r$`�Ǎ�!!7���]��;�7w��]�ks�p\�X��Is�rm��ӫ��e�#�5�:W1*��FO~�]<�먲r���8���JO�V�����m`��Cp5?��e�r,.y��TтK��H+��93�r���`Dv��[�X��Fj$秝��:CW3T*�3 8�,��t��2�u
j��<ہS�Y@F��}��'�t
����|��Qǲ�F+;k8��c�=�b�|ƴ;m��-�+wa"2�7U5��t����T��˱�C�N������?b�F�[�hy̝��c���]Z�X�9�L������s�p57�
��ų�����.y\�P	Ua�Ȏ�\�@G�=�������X}�F�6�jpe3����� ����rG ���Z��+���A�23���1�� c{Y�2��C�S�Hb�Raz����7�/?����ٓ��'5����,���� �Y�,Nk9Y^���'s���}�ܦ:]�-���g��K��_��F�#�4�-�]��_��e_qש�X�aK��n%ﭡ�{�=W����曌�]�h�p\���wj֩iؒ�v@�e�E:&�D�9�p�g1�(uG�t�D,�A:Bq/�@Qs-ٙ�g!��,&�#)�Bt��h�}��l�_��@����c@�
�踂�;�'bƙĞ�S�hc5WX^H���^+=%��C,�Ur o�O���XWKE�r�V#rg͠#{�ܷ���n{�Q�c��u�%_g����mGN�c5����fJ�T֘�9o�8�v�}��Y]^�;�U�POX�$bI�ɱ����&��G�4��e/@G�HC�"s#[����?h:��X�yr�´��T՚�ё��m:w��=5y��1�[u�I��R��K��v�Q�V��b�x��jR �sR��7b(�Y�FA�c�v�{FO�w�Y����JW�}���vu�:��Tsx�_����ꆴx#�8���=���m�J� �(w�v��2Щ��z�W9S\݇ԋ���������D��ʩτW�E����F5���=A��0H5	#�$��B�\,n搸�0j ��@Bu.��b䐄5�1��VK{PD��:;���9�+P{q��?�(��kyB���Z;�z�V�^-���U���qUi_�'RW�^�8�rw��HutO��}�F��������csx��jt��>��c��`����&��,0C�v��߰�B}[Y�<��v^��`"��#� @� G!m�S����9<�%�:x�0���K.a>�#+���h0��:\� [6�(߃,�{�_��I�����1�}/A���z~��� ��d�����ɐ���u���4ê�f^�׫�v����Ǯ�K����[W}����-�o�s�*��oa�⧧A_�uaս.Ga���#w]���i�\��Q�t� �WXu������*���x������fE��pb�Yz�)����k/��$���$%�5~�¢������:���r���
ª[A^o)㦜��֔sصb9�P�r��Y%h0�ƏJ�)��>4}4�����t���k�؅�W�����J��}L��}�ǅC���a�T��6��m�qv�N���4VM�[(}3~����uU��J����q!s�(�Z�hc뱭@l=M� dOE͙N=a�ԓ���7���#�q���v�zv_{���rW����К�G����XX5��o�y���G#G>@Gt���}��E<�S���X�^cd��P^����#�uN�����q�ڌ��?v��]k3ҎT^I�ܱw���Ɛ�(�X�8�c`}a��?x5���ۧ�>� 8&��֏v�S3��V�����<S厪��6�ݩLH�*_Q����*׹$��K����TB� �yB
yW�@]�׼@��NU�[�'���MZ�*�[�OzbO��jʛd�Y����Q�R���rQ��+���O4]8�wC�y'��w���N��v-��9ñ��Y��JA���.6��p<��@:�W�Q�$�?�rR��h3�����O �)^Q��؊�{A����ΉV��$�t�G�3�c�H�	��=��ܓ7�~��}z�/���7�k|�w�΃cb��9���4{��r��/��z�5�u
�����z��=�5��p���m�}eϞ�R�Z��/nd/>Z6���K\K��G�^޼��F���n����ߢ�S�ݾL6���no��o[~������ny{���q����~�nQ���+�?V4�'G��~¸���Z��`h�R�]�?����m�k葢tDefI��Eֈ���Ӕ��?�9~~$�>g��.Qu�ެ6��~���q�$��9���$Q�G�cm� 4�J�K�nnUz���}XK�x;@,̟~؅6�D��� ��B�H����(J}5/��f��{%�V�C�T�����m�g�LXL���` �����&"5����5�6c���Uz�@���63��9�	�7�����~]�x�J��c�����-6i��.w��kf)���1ܱ~�1��1aq�|��<B)�!Sܵ�Լ����f�T�A
��q	��%I�>��@3)���+�h]^�I�,�_�,�
L�k�~���Q9)a��OX�9���P�8,zӲ�nZ.`	�1je�5�#.8t�0W��Jg�Kjd�	��K,�{�_&����n�J2����_^FJ���g�҆���>Tw��Nw�c�,^*8Q!V߳���*uhe3ci��tD:v���"�����5j��z��/d(HL�����rHP$��	�U��v�q����rԻ��zH6�     xx��ų����R�ϗ�ߔ�.�ifS@v����m|LA.�Ř̹�v(V5\��'���y?��-�qԵ:)���vp䱫<�Q��J���j~���<�s���$��шB ��ב5i���w��<6��\��3b���D�!s�>�������c����b����Q~��D9�5�'!
�I!h���\@����d��Zwf2��� �dk�٦]H��2�l��Y��QwT�{�(ޔ���z�	��a���8�S��dKEȝ_e/w�1�B� ;��6r����R��%�;h���4�|Ӝ� �P�Rν�cԵ�U���q�ȉ��[�[�C�,{
t�FoY;���x���7߸���RQ�w�L����Z�O�Z���xP�Z�^눖���(w՝�%U�QjܺW��� *��@ŴTxP�Gx��+5��r;�#9".�Q���#��L�LFĤq�3 ��ý�ۏ��YjO��(5�T�����}��{��>�0 ���3���m��EG�G���l��_����R���M��\p<�0bO'q�V������1W�!e��XXT�W��ˉYO��l_v-$v=���S
��]�е�ٵݹ?�cA��5�@�'$�nsv-��oC��I�?g��]���ۢ�cS�oV�|���K��� �7P�:$�9WZt\"�@���p��0ьC@��rG�g�ġX���Ú!�&D�����v�+Y���7���l�Q����m	R�`�r2�"txZq:e��
�y�i�j�!7,kH���n�1Ca
�CR��a��kuSԜR���Z؊V������%L���N&N;]��^�����~���>U�b���A�ww��K��0J��]>���}��)��X\C��O`��w���ZڔC�!���4�D#Cl�+Wݐ�m�SA1��2u��4��~�˸��y��'�]�m�[H�U(v�=�0^�<^�y��s��t�O�
"m�!��w{K:>���>	jwE��M��������]~�Nn��#�YU4O�t����1�(w0��S1,���j��l��N�v�v�x�?��
����)��z�9�#�m=��N��r!��$:O���`?Pm��e�����c��{/>Y������E�N�U�SF��@�k6�	�9��Ilx�4S����V|`j2��+�R�:��W� z8� }$�y��y������-n����MA��J��ܾZn����VRt�Q$����M"_<|����>���bJO��-ۙ�tu������eK,/��~�i����x�>T���I�=*\�����}�p���f,�׾�ý��%����˾���t ~z��C}��c�k[�m-;ɭW���s��v�`s0����p�"3��bZ��G:��-�u8g���X�i�l��p��aN��4��e(�&�Dv6�n�s�N�������`R+�~��X;q�5W��Fܭ7�S-C#H�)Y��4z!�4�N��usk�YJ�c������<c��%���zv>|)�2KQQXӢ��Z�-8��g>��oo|f�.p�YW��m+i���iw�?�g)��9��� �9����V8]9m����P#!X�Yх
H����I�����d���=p���H�
ہ�I����;/<G+���:�4V��N���,�8Ơ���dȪ��ˈN�"]�n�&an�N����Q��v^6S��NG"]�p��`����Q�(�i�#Һ.wت�'+�=g��Y��欶�T�����H��݁�?}�n��X�]1�?�
�i����W/n�߿���z�p����I͍���c5�P�4Y����;�|�N-s;��]�����Eʕ�R�۠Ձ��;�=�YÂ���f;:�������ߞ �v�G1|��X'WѩZu����?�7͎��q�ᳰ�:튺·�7��S��������~����iW�u�Kk�9 :��}n�#����<uFu���ښN�`0��'Ӟ}5�Y}�:3�֖�j����?OY�X��H���Ҧ:���Փj��z���~;�����V��h]�v�j�q�J5�i�eG��9;�T���3^Z������kO���X��x�:W�֞2��|LO�t�a��ۑ65'VgI�r�TMA怷x[�T��Q>ٲ:����ڕf��Glpi�3�Hy�̥e:����ڕjDzGd0m���s��3m�Nt�D����4�����?��r@��-%P_&�D}�NPGO����R�z���Fh��+0�a�z��_7z[��:����td��hsZU3ίm.t�(�!U����l�A���>:��{�C:��*[z��o���O�����׼�u��,t�(��T�U8ܫ��W5'u��^���0�Ul��\gf�rfF��_��9��]�܅*4��=��pU�1�@���S D9�
px�,8\Yp����ι(;�U8��A|8���M	�g�~� ��`*n��>�(��(��P�8`��h�b��B* �B=,W��G1F�e�[h��#�X�"����l)�2<=J�*�=�J�eC���!��aP�g
n�|�`hS0l�`�\==�P0

�K���ӟ���M�����Vp���B�8(�/qY
�6�V
fZ�̭`엂��"�M����
�Z��#��`��.l�m
�,���g�
A�~)^�,B�,�(/�C�jZ$완�YI�6	��ge�aP�"��=�0��%a`_n�&��0�YaQ�7_V8�� ժ0Ы fU�ea�4\.N4w[��A�ua�ׅAͺ0�~iX\VD�� ��0 Z¤F�$H�/	_XDG�&�$L��i��i��Wn�h6/	S��i+	k{��s �s�I���9�=Z�s@�s�Ɵ���K����9�?Zt@t�Ơ���K����9�AZ9tP;t�ơ����L�A�A[tPt�Ơ����K���9h��`+j�����g��p��l��砶�`�=�=痄�e�s����V�����s/�ɇ�K��	$<��Q�\0���Z���jU�Pu�ڼR���Vݡ+���m��m���ux�)@:"DՈ0�@���JA�=Ң�n������G�S�F	>���A����-���GT���I*��0A�-��Vjky���z���6�W�^J͖BD��?T�s���ǟI������IB�"�bCD(g��w��������6�<��M��Za#�+ճu]�iXČ`uk"F�J�wϫݺ�6Y��<�tJ�ǡ	���o���Ǐ�o�/_���:PF�@ل�\�&�:��D��°x��\U��q��v��H:�F�P�9
"�L���`�A�3�D^���]�:USaM��K��O,����s��Ʒ)rR)d�]�:YU�eM��Ky�O-r<{��ju��/r�N��鴦��%��ȧ9���]5��D���N�EՄ[S����A����?�t��6EN{<uJ.���"�A䞉|�������{<�ˋ�.o!rD����O��k���xbm�b���M�8��4��w|1A���>�G@�G�L�f�j!@�jhf����J�W��`��#@�-��_�2Y������3��.������F�qB"Bn �u�`]�]��5,b��X�s�p\�d��D#��Fu��|$k���zq��-s��I8�_�Q�:��ر:���bW���J��{�?
���^t���GOC!��0ZPȢ؝4e��6��X���=dG�ܓz��*УF:n���xӶ8���eނ5>oL�R�h3T���.q����z�`���A�y<iW�2O����'a�`dgG�{ȳ��Z�_�σ.b��܏i��*�C�襪^�ÚN��D�2k!`�PĹ;k0b�XY���ZR�e���+�k�^��
�ʝd�H�a����-V�n%{���ռ �#Y4I�������._���F���]V�ˋ-.�A�/��x� ��$�{yMJ�>�=`b�����E�U����z�|���k*_5׺����9K,�yw��    ������'�?�Զ�Z5�D�Xw\V���>	���Jo���?�tM��88E�kF�N-�l�͡��>�&�G���Z��Ǿ����1B|��e˽X�&�ʈꏻ��/�:�'ڈ%#v����m�&�9���쐉����~R�bRo�
�q"�-����8�h�J'��ݛ��o�_�[$'�^�p4ڟ1i4��ڱ%�63,5L��T��I�rx�t����A�aߊ4R+��012�*9K����\b1ss��Dsf�H5�#�۬s� :ޚ�$[ ��'9�}���_bq~���*�u�V�ʆ��?�����u	,��%� �(C�H�}h�vo�K��x�q9{��)�K;"c�5ŞѶV��餺3���:�=Q�o��7�@"���-�#�]�tmRG\˾�l��/ȉ�j��t �L���9��>d:�� ,�3�&$��F �|����P�]�֨��6�Tt���<�$��{��̂W�C	��N}��ԇ���V>�:A�jA��t�<���.\��Atj��vZgT���Kh�p�w��Nu"�&R�(c��*�p0��k���ڗ�4�J�_�
�I�O��o�<&�r�TQ��$ZMr0�[�G�]�gW�К�f��6y�8h��/��DZMT0A	��Go7a͠4W���uU3��Z����N
�դ ���{d�N�D�����W���@�S��AЖ=�Z�&a��� �n�m�/����2z�W�ʣ�j�T(�]N�v���v��
����]�{�n�yg�$�ʧ�G�]ٙ�Y�ڲ�U�:�0*��?�S���;M��\E��?�mYӪe��>��w���__2ԺMvܩ��-
�LK�˿��7pB��}�b&�8g�Ю6���,!�~�4��H�у�׮#�1�9�`��fU;c"L�����ϟO�s��c�����n<Z���>�y�y�O6�����`8���g�˯���J���h<ҷx~�(�\'����<^<{���7�J*�*�C )E�� v�Qy�c!s�5��@S �H��r��!����Эz�5���G�I���H�:y^�c������\�Z�j����z�ٮ�!"=�ψ�:/�voo�1��ݕt��WT�}�gX?�S����y,a��;,"Ԙ����s�a�y�t�5��"�y����z���`2��	k.C�I�9wR�hF�J�0WB��=��;���$��oŅN�`�Ԍ��0~����
+�p!|��q�E��\�ӸЙ����z�{�01�	�"X3$X�pîG�`�̠(��/4-���T�a���P��d�s��_��FP�|O0�m�s[���?X5�#-T0�4й��#ڭ�ntڛ0��a���2]�n�e,tu�DtR	�&��-~�z˟�^�w.�W{����Z�у¯�Y)���Q��Q�rx�:~b�W��XX5��o������t�4�:R�&���x���KX���;�,�e�?�,��|�;�(,ӹ1���7��Ow���F=��x��@ѝǚ�����N[�az)���;����By'+u�ar�uëY7ma����~Hg��qx�昼��ӝ�Q�6㎺�^�x����sMN��w&�6�:Y�W�%��}Z����MGa�� v
k7'�7+�X��k����w�a9F cβq��c�\���*e�y����a�	��t��Q��#-����h����k�*��ی�I�d7�)7�d�t�&`�IV�eH�=Iu\��e>��r� ����.*�QP@�����\=�S-x5�"# $Z�M �Z��s�^�]ݳ.gpQ�]�؝�w���}ю�x���o��k9�F&2�p��cZ���CO}���wR!��aR?
+q��&�r�lAq�L���o��>����_>>��'�4Yb��h�&V���/n<\��s��o�fc$rGvE��s'�/�'�2Y���)�\�X�j��1l���	s�pw�`�J�-P+/��g2q{vE���]�U�M��s��N��Մ�7R���dֶ'D����[�E�h����R����u�qV�����,@+wZZ�o��xs�x'�t��Q؅*#S�G�,yKu��������	�㬇	L��=�BuhA[�یBT�U���`4�>��*D5���/�MS�=�Y�p�=-f��2��ӆ=�M�s(l+���`�h� wLgL�j�ě�f��oC�Ĕ��"�e'LΜ���F[��-�ۢ�P��xX��Y�~,(+�V�=���Z�(�s�;�F!�i�0��8�k��/�J]wx5�֔��k�d���pͱ�ˠK�ޞH�N������0U�2J�55Q�l���{����,�B��ZX��+=��4���	������~]�ĥ��6`�{����Ml���΃K�*U��3ȉ�KB'eKR�ABH`�Q{*\g<(,&�g��$T�]!�s1�3,�%�Bb�}څat��'�v�Iņ�jHS��<���%&�R�y}��8�aɁ�qQ��(�:����7�AD����-i�@D�'��=NWn.�P>��"�܃�u�I�K��)b��ʻ,F� �>,pH>�~O6R�2�7K�3WIz������IG����n�� �C�zbG��\ˏ�g$_!�QIk�O�J~׭G���խW����n�T�r���~��}�B��q��Þ��VQ��ϵ�y��y����/o�����U���-�,�6(�G�pY�Vŋ>��B�8nT<����T�%ͣ�hS��4z��,�j�Mv�/�T3�����w�Ϟ�͞բ�y\�6���n���ę��R�̪vx�v_!F��d�^����Q�~M��9�]��&vX�}�y\R�*�.tBW����{,���._��L�>�ś����_C��۴ė���|�j��_>���>EOD���5�b|8�0�ߪz&���b���e�/r� =`�Y0�P��m�ߍ0\7n��a�4ʝ�2��"��7����\�X�a�*?Ы8�k��r6�y��r�䜴��&��ݹO�����D�%��F�T�z�}�<.~�_n/W����c j8�N\��8���ވ���+�q��̤�ܭnϢ�/��\� �[��udr#z
���V)�.�c����i-��?�ނȤڀ��󘨟&�0�jUs������s���fk�t�y�#�΋��$J/J�_��k�Qz��/������_OK������j���*er�����E?�`�����FI멏ld*���◿\��Y���ү�~���N��y�>�����s�����U�?m%������}�Gb�C���E��(���˛�+ߡ�v}s,5ҷ;�j���*|?&�^�{^�'"Jbj?'�Q9�Ù��J���ݜ�5�G��fOT��9�rH>�y�a��&G� 6�h@�@w�l3���!o@�-����O�VR8��#@͵d����(��t� �#u ���횺R#}Dh�@����%��@����8�Xv1�5y��X�lY�n�򀋼J�M��#yP�m��1o�|Mz�'/A^m��aa��#z���zF#}Di����z-;�q�W��⠿V�+�"0�a�uPG��G���H�Ú=\e��6e����>��-|q� fDd�-�W`D�1�u��LT[��+��p���7�s�n�������}������#����F.6<db�X�$R;*����0��=
5�R������WvIy�Jk�m��y��ŷ�/�@4�9r��#�v�އi��#����U��iN?���pX2��x�L����HE=n�w��l�Ί����%���2�Mx b��O�@,b����~�ϙWi�9Q;j����+`I���i�^�ws��\RJ̶�n�D�Hc�S�%w�|�J�5w�F�ȝη�|+�ʐi�/uP����ކ!�c ��~vfZU�~D��H�әV��i��KZ?-`�-v��y%�RY��� ���K윹V�����Q#=�N�Z�Вp�&٭?lwۧ�O>o�Sww�yےnJ�rn3<:S�*m7�    ;j����+hI��q�y����V�%F�S!j�ő`����˙НlUn�f�h����4+hI�z�9٭�6oaC��)�[�7����lۜ�K��IV嶛�5�7�P��1����?#�P�����8g�&m8?n�>ڮh�i�w��~)	���1$X���%���n��J[�~3�\�I�)�a`�9S����3v������+������L�R!�l��L?v��Ah������~�	;0}<�TBy�m)�G4�p��НXntAH�:߆��-y�Y1��ֲ�� �/qDĲ�Z/	A&����ϝ Xn��;5��cg�t��$Z�J~����1� �mJ.���g�I�s�N�*��t���㸧��%���՗d���;a�=0n�(;�0H��,O���m7�;j����<+hɳ��js��/~Z&�|����`�����<�Ʌ�?|�d�r�u�Wj����d+hI�ʂ��R��u��y�����ؾ�n_^A�S�d�iW嶛�,G���?�v-iW�nwa��="{R�2��29`pN������ν*�]�Wj���!�{�,�W�>엻��,~ڮ�Z��r@��ԖQe��)�D0��ȝ�Un�iM5ҷ�N$o�!{�#(�����qZO�rA��U�J�M��T�N#y��v�Չ���|v;�p����₎�L5e��p.��N�X�G:9Y��X����!/�P�A�e$!�Ss�#4jyoxp'�{�(s�l�>�z6OӉ�Ȓ8�����ǀ��҈*툶s3�c��yF��M�p,�t~6{��rӏV&�6��d�b��7tD/��`13#�&0�s�	��՟z��'�u��={�XO�V ��Or�6Gz��X�4G"p4;���RO�\j"&���:jY�+8�q�h~~��Q��4��#��5�sY��>=>8�!LרMu�!�7�#��ۭW�O�?������2���W�I�	����2ޱ��^p�5tT��	F@Y#�y����I����X�Ǹ�:.�[��y��C�C�e1�&��~=淔lᨉs*�-�B�)��u|TI��&���L�L���ky�~��9��z';�ųw���5�g�	�k���wi�_�S��[��e_�����jy����Jx��Lb�Е@W��6_�c�b�\]ӈ�+A`e��e�
v�Kq��
�ji���1..�L�ISe+)z�s��<��T��HQ����A��3�'��+�(�
���3 �2r���i���/ϷR0V���~G�0g�79��o�ͨ�?��P��s̻��\��r�J�c������Z��5m1��c�-f%<[����mm^m�Z�VM�h�gzȜ�Ռa���P�4|*\S4c���e��B]9�0�v0��IS�+<�:��V�f�b��Y�O_g��~<Z	��q!mp	�̓j�xл��kv*M�$�I��H
s�y�$�f��k˽F��?Pb%����LY�3aɵ��`��?X�%ޒ� �La��<V�\����M�&�7�cc�{�w�`�ȳ�g����'�TPO���@AĮ��eK�l��l���Mq�o��&U�ռ.�V�k6�!��>��I^����r�L3w%�	���D��n"�G� �8��N޾x�k)��4R{u�D��Ω4�pw*�4k;g�-�ra��
�P�.P�Ggq��.�6�֏2N��w�H\l� ��/~����O�n��&��_�K���;�{9_ƻ
�^l�V��fy��N~�O딬ۿJa�%+�ͤ�7�i-���~T�Уʋ���z;}�.hz�$�*���_�(!�
��J�k���a��g�3�jD0�Yod!����4cO�|X�o_n7��/�huwn~jݐ�H$�~�J��9��FP�:m�E'ƈy*���@x�EDb����^H�#:�#I������ 4�1��ɧ����!�"��H 	!rPR�QEj�h�%�KG����"d���B���ӿ彡}/����R���ųׯ�~��~P����0�1������,���2X���k�@�
�9�P ��C�zG������^HE�C�v��L�1���'&c�����Ԁ�f
�W3 �@hQ`���t@p�5��Ǘ�+] �dS��6@b8��G��챍:ǆi�Pt7Oa�q�i�b+�J��|Eّ���=Z^�¨��҈5��i���D�A�7����cV;�G��/� .c%uB��K1R�va(��hy��c����Yc3u�b��(�5E����J/��$@��l�:>2"����[+��'�~���t8p���|4}$9z�8���+�C��|}JnU��WO��2���GE�_��Y �cK�hb[K`�]� f���n����\�-���g��K��_��F�g�$����+�r���YS�n�k�^�=	��87�1�v4��D�)p���0�	�7�;-vgc��x���������lI{�ڑ
����?U�/'��:��>G2093&�D�<�S(��W��0���ޟ*n�7r7rWܘC���优������G]G�W�hd@g�'�(c���4a�ՓW�x����~Đ�@9�\aB����G����7��-���]��,o�'5(�%������?T��8Ǆ�����`�����gi��稕l�Ϫ�\w?�W��íoV�>O��q�}���+����d�@�h�&~-|������zfl�w��;9AT�j}8��m^|�zE�ւK��m��F��j''5e��%B��EĐl�Ԋ[|��r�X6@I���ܘJ"�b&��cx%�[���Q���Q5-��"�8^����$� 2���ˏY�+_NO/��̍�G�,pq��5,��?4�pX�1��<?�I�W���RW�0��'٧�KU�E�|�O�r�F#;���m��c��n�ٮC��q�Z�����Z�&����+�#uC�BXb#oA���zԉA
" "���.��S\���V����v}�Y�)"&�/�l��i���!�1�~jˌ���*Z5?�r�"w�NHIXt�FS�b0��q�4�P�hd���&�j-F-*o����*��'�|�6|~�\?>����M�2ڥrSK~'�Y5����S�	9F�c����~�,׫�˛0І��gP�@#�d�BT��a��v�y\.�nW��YA��N�M�/�����Ʒ�뷇�]���$�-�ԗA����_���u����P����_,�u���1�-�V�R���p^�=}������r��^dH`��H_,P���a{���^<����Jz�+�cP,��y�4��A\w�\	�R��yA��n�\�G�p�]h�����w/��E��ZP]-��wz'�[�$z�S��<��Il�;�{�;�z5zA�^�֝3_�[O;'��C�wX�w���/1��R����w���j�޽�;��x� ��Qz�Z�F�8��K�㋌W	����w��Nj�N�����eƫĪw҃ީ�;��;z�R��2�Uj�;�A�L�������ˌW�U��k����$��~�^f�j�W���*���H��ȴyZ��{���B)�W��~�����rw8�ڱ����Ό˞�͞�aCjq�;��J&� �����W55Bj���đ:W�ʄG��q���7F�}��E�Ru�4�8OWF)4$�K�u��������<��<���lx uCD-h \��@�Ա�48X���>C ��9k!��@�� ��� ���� ���-~�B@F��4B���Pm��[���6
�	u�x�!`�!`�!89Hf�@�!0�d68\C��C�>C�O��(�&���!� �rr`,F�@4A@��X(�����! q��k
N��A<�U�Ic`���E�������Г�c F� 4q@��8��9�~2��'8𚃓�c0��]dj�`pht�
��;9D��Ǡ�<ff�w��v�A�    ��k��Q2�?��17�d0����:� 8�~spz�<��-d~'�!�!�2&������Q\d��"��8ypht��A�����8y#4��(N�I�I�d�d�9��sX�(f2h4�eL�����A;?�oj+ ֓0��e����=e�=e��S��S�����e8��Me �h�*C�*��2���$�VM�'a[6�ʲ	&	���P�ʰ�>��+{N�黓G1�a��,�`�0����;8�08�~�P[i�� �QHhޗ�̈�-C�-��2޲�$��`�'as6�˲	&	���P�˰�����9	�G̣�˰�^�M8*�28	�_��e�e�I���XO�(3l4�9��w��v�a���sN��G��a��,�`�0����;x�0x�~�P[뱞�Q<f��1ӣ�yp�j�v�a��&��1��1�f��Ẽ{�H{̨�ǌ���9	'G�h�5{�̌���3�3��1��1{M��9(�b2�F������.�>w�.3
.��,�<AB��̨�f�>�!��}f�Y��X�oC��0q�*�8�NE�'Ag\�v(�0N�?

���΂ι��r.p`a>,�^~�U���uA�e]��X8�:�,t,?4:˻�����pz��QX�V#~pt�m�y�3b��й[���Yй�]�,̇��KƏ�B��񃳠�/h��X��W���n��f����.�����u�̺����!{�����߿���컷�Κ��B��/��w�����������jy�y�Y>��D��~�\/ � ŀ!�"@
B�?� r+�D����<���0V�K��a��_��"���H���6���Tx],����{u������}��u�׉F�]� �?�[��g%�r��vR����]��eW��^1'�^$bݎK�`��%X��a1#N?5a���08:Â�˰ !�bF0�~t�(0t;8apt�k�bB�Ŝ`�{����	�às,X��,f��(�C�#�A'Y�vI dY�	��n�(�β`��,@H��g�0
S�h��%Z��i1'N?Sa:��0��a�����)�S ���7����j�g����J��#��oQ(�8�V�cd�\^����~y�`�Ce��Lm�:��5�O�����΅�c����R
?���7?�O�-���w���j*+�i��,�Ξ�\�RR���]�p��N!��R�`H!��]���!�񴐡'=\�W�v�0�W�	����G���N��-�W��Y����xn��8��.���9�p��!������q�I�]�Is���3DF���	"���,x�4�,f��ߡt�cD�A'Z�v�0$Z�	��O��g���N���R-`H��~���l��%[��l1'N?Wd:�*2��̵��k�e�����5���	�]�=��:����!�!�hNw��Kr��xb�Г��-D�d�-f���+D��9�㠓-D�d�-f��9���C׳sB�[�v�(�[���K��:A�b¤�@��c�v0,q�~y+���&Y/^ɾ��w�O�fOi ^o��M�G���N@�K�� hp � ���F^A	��Iꋱ*�x�|ҋ�!�JULm�#����8��{�|�f3�𖑢�T����E"K=��:4�pv�:<��Zm��Z�١z�%�i�y���[�J	�����G�ł#����Qay��w�! ��|����	.Sw,ryk�8cX-L�k��D��w֫=-oo��g�}�%_?��i#P�%4&��&�"�����Ψ�T�Z��^����_k�m�:.�!��K\�4o��q�Q�C�䂴s$�j�ķ���D+��m1E�����C ��.�2k�hp
PL=Ӈ9�7/��Br��.��j��i���n�Y�9�����7ۧ�O����]���^���3Q���7r�I����qf�`(��>E�h&*��1��}���Q@L-+��5h��!�"�9�����iS�.�(�i|����]�ׁ���r*�t�T���u�R:�J�J�E܋7������rb�7���M��Wd4�xD`��)��8�5��uz�y���ya(�)	��	�#�����K%���#�A\���O_����r�xPs�rY�<��uv1�ʶZ��]# f�����j�M�#,�ͽ�Y���ү�~���Uo���!��qo�������}pW[	�l�av�����3K�H�hK� ���-wQ#wg&D��r�-O=C���řr�:���@�����D��'r������al�;<7��:���hJ�ݙ����k_��܁U��\�C-wX#wg�B��'r���Y�S�;<S�T���>T�d����@���iC�z悙�t�J�c֠{�ua+m�X��=��+�^��}��e���!t�A�:�e�QlнǺ���5İ=�^���>���Y��̲�`��3�{V3�g7a��e�ڃ�zQ�ɹ"� `-��*C���\�azQ��.���-��u&�su���V������_ۙD��%�>�����]�	��\��/�L!~�\��E�z��׮���-��Wy&�s����^�����/2����^ď��Q��Q������\�G=�k���� ~�ŏ.2�5O�0ď{?��'5�'A����2^b?�I�����&W0w=6w/����,��^��.^�v
<��2�.����m{�z�+P�1�iz�v�����z�+P�3�v�Wh#L�a��)�LL���z�@;b���L�EFǢ�����X��c
.�팱(�����Sp��h��@�6�D�Y(�ˌ��YegS u�6h�oK�~]�?������E�7j6�n����ǂT�{p��A�b��K�k�D'� �u܎@(��R��K�@��S?��Q��<�e�zP?BE4����{����{toъ7���S�6����J�^���7ف%���Sy��h<�%Q@�$(�R�   @�  .1$�����Cbu`��&���H������Z(&�B�_ ����,�z�[Ia���f �!lB���[�x��}I6���A�9�b "�-�12���/W��f�)�w�p�`�G9:}�Z����5�oԇ^%�w�����#0�[ٝr���lU	=�0���>3ç.��#>�>hl|�Ƈ��C>3çnB6G|H|���0��Ç|f���g�{�k���u�������爏h��]b��f�����b� ��t�� ^�t ����𹰥�b� ��t�7{#^�t ����𹰥�b� ��t��	��8��d#��[�{�x�����7
���vw�\��_��pB�s`��[ �x���sB �B� �Wע�,b��õ�!U=F;^H���K�3����R&0�^� 1q�U\���ǭ����݇��_Oa/����{�T����.{]��1"R_�7���(�����O~яi�����o���z�0;L�VR)n�Z�iNk��y.��K�#��y��(7~�Ih���)y�������Pg��@��ɗ/�'��6/�����W%T����	��8ᾑ� o��:�B���l^�j2��RIC-i�apJ�J����K�� �0:��vx�**���V�,:��~��Ʃ8�σ����8w�{ɤ��s�J+��oW�ЪM�A����"�K%ZU_��r��9.T��_}�������M�c��ԣwi���͞���A~����p/��;Ⱦ_~\ɫ�,���2B��������T[��+Je�1o�a�Md�5�<]�*:�Ť6m�bڳ��n�xscn�� )����FH�u�$'�}c$��e�[���y��n��,��gw��	�KA_9n�A)����	� Ƙ���Ex.?Pb�(H��㸎;(�f�ݟe� ��a0�j��I�?-�>%�����2���JI�8�2J �@j��b{!���p��k @��fQ��    �% ������bj4��X-�% �!',��R}��o����0�*]V�e@}ˀ�n�-#�2��e ��h�m�28L��,"�|����>��q$ac�kb� .9��[F?�;s-�wˀ# �(�20!2���{F��J7�o��M�K�g�{������[F�̘3}s_W�7��M�/�m�й(��Ey#���Z�ީ{��|�.	E~@�����~���Q� ��c�1�����,�A,(�V��UU�aD��eWD�P,��D�ZD�#��?�������p���R��ڎ5�K�J��P�-��kHF^of�Qb��<�뚧�]�6f�AÝ�.{���*��|�[*�� �����ݼ}-�8��h<�7��gn�gJ��Q0�ș���+Y��i�(�aj>��+�����C�/��bT�",FPc��M)?*�+a\84F�����`�W����quw��(�?<�����)�! r""�-)� �4_�2z�u���=�ٲ�[��l%\��|M6����f�x/�X�>������ⵁ�z����*{U$W���`�H��'�`a�(3�qxEy�ǵ�(�T���9��TI��B5fK�:�z4+��
s@�*�6	�6Q�(�7ѻL�G)"��pij��N���O��q	mR黦L��K�Hu~P��ʧ�ʇ���1QdR\�"D5���E�T�NT�3@��pP�<|��8s!��a�D�Hj������ݾ�ᯅ��_>=��>-o�K>mn�/?.w���������K�*��b~�v[�{���TH���/�z��l��_�/�V�����C���h�/}_"]�K���X�e�?^ߢ\u̱�Ԟ��j�����X��^c@[`@�>��g݄���ٌB7W�L�6M��5�#���o�
|��l��/:�\����E�g"�꾚 ��3,.�`q(c3�w?�x>L0W�%�&���	���Nn�/a�4:���(�'���cl� ǚ'1m��N��/!J�Q��w��LS�pD�kߟu��	a�� `�p��& xD ���:Y���t���HC���r�!5��c)_�Ȭ���K����Q�at��U��v�Y'���`��~��]v��}<��]�:�ſ��G�����<Dѐ�hI�L{¬�'�K0���~��w�sY�0?K�iC�u2�	���w}�����w}2҄ƅ��R=��fu��/���$����o�|������Y�K	�����9(����3����Ҙ2��P�0�#(�X� ���
3�6� =`�Yx�����no���M]	��GW2�e�쫣���
YjK{�.q��λ&�v��~�^m>��1�W[I˛��u<խ��Nvb�S��m䕎��� �	�o�P8�Ą���-�M�W�����|��ƲHpF���h]9�V�G��N;"�b�B�	/���w��O`֨>�����n%��r+��R6���Z*�QM���*�gS�lUlW��l�3�k�����bH��Ǳ����눂p1���u:�q��:���詼l:�q+�bQ�����N��]��j��ˑ�q�x�~�=�\<K6w��f�4Jo/��=w�=g���x������d�EU�k9����B*�"G5ٮR�|�+�&�������|� �	���v�%E}���7?��
�f�CB�E��(�v*L��-S�j���ȒFK飲�2tP��n��Q)&3J��$���7��Ţ1+O η�fs�~�~�h��!7������!yA�.����xPN�z`� �5���G%<ۈ y�W��6�6�cظy
������
!�7�]A�f܀�qCv�.�!��!�9��!�i��*�m.&,T�A��pC��K��5���)Ԡ�g[v&�f;�h?�$�F��6��	���aF:<�$��]�������\-�� C�p��p��������Ɂb����V�H"��9�8��
�8�@p%��+����7�cU�4�3�m�^�k:T�(�Z#�b��n���cc2u�n�b�V=l��C�g�q�B��_����v�����0��!0BP#�!BsG�frZ�#!�mL&jG!s�, 4B�Xx�3C����k�/���A��1�|P;CL�fƪ] q. �����=:GS� ���Ӈ9��%�{����Jj~� x��4���{�	��ku��&?��3��8�°�d�X���a�_8/�a�ŉ�����i����k#˟V�PV�G3�ߦEM7`�t3�yڭ6ɗ����^P��N��fE����AF��hP@-(��Br��:.$�Zpm �X��C"�C�搼y�z����n���_<�w�d��o��Y��m7F�c��`��j�zLv���ۇ]���*=3��f�$�x��{�m���y&���q-Sr�i2u��k�"j��@����+.h`���gX�ct����}�J�M�@�D�����Gi���ۯ_�T_���ɀ�d���:�1_8jK� ���bGVXb8��5á��@ƌɨ�} �UcQ���"k2����-!X��X� �q���E�+Į@���UX#tD)l�ϯa`@|�ռ.H���E�J��X�O��<���}I6������>��q�p�9fJ����F��ah���AM�
3E��W�F�B�A}� )���a���܂c31#1,{��A�z�zB�>�Z�UU�# a"B�%$������6�����/ɋP��eo��'�Dӛ��.��]����o 7�ޤ����(���Ԯ�����م�1s�	^����2���Ȅ��h��<>�	��uL���L��k2�Fd�U��Ռ�����=��ރ����*y���=Y<�_~�-����&p2SN��ՂA	���*�6CDH)��z����lp� �%�qr����"3�����i9��� <9߂� GcLAeru:�����p\'�\p�hΡ���O��阃�c���g�̈́`�r�h�mZ��76�;�+�GYݧ��
V�+� �E PP4�{Ta�e�`pj� a��ĦM3�A�L%/������8���3��L2/�~|F��U� �H�.���BH��f�@�p�^�?�޵�m#[��+��p�)[��+��:�o�L"{KNf��#!��%�CRI��i�d/Xh d��Ӟ�mQ��x߾=o�Vw�3� ���˽)9(�4i�.��uX��%�A����.��Ƶp}�n}A���W��~��eo�ް��=0�_�z�d��U�M b����=�v���]� �|�|���{;�M���&����>a����%u"��"GuG��9��{��sȧ{�Ȗ� '��������č�ѱ�Ӎp�yc�F���Q�AcLa�ˁ>�)����'�[  ����S	ӵ@��N��I��� �U�*���k�!�n����G[ HYTudsW'�۠sTU�Ŋ�����f�����P��K�T���=T�G�ڊ�sq��R@��V�o9�B9Ė+����+�����g4-٨��yݿn�+ pQT��..0��z*k��7\{YPԓ��zas�.��LPXbxL��������mۭ�3ĺ�|���ܛ`�&8z���EE\[X�`�5��@���4�:���1�Mq'���\�mȵ���}3
�}�oF@�c��qc��M�iƀ��1��xD<.�O�:DƊŏ��0�<j��Ojh�6q�&cE���d�Y��d�'5�y�8`����cl2 }Wv7��^)�LM���ś�Ξ|J�Y��^�����ī�j:�d˘���DM����jq�\)���~{q9#q ��)	���
�R�b��V��z��?�O�|���/��ᑧ-O|�����j���ʿ�qM^�wr><1���1�x�,�D-}�����ݧd�V�H�xf��1-E���M��"Y'�ǫ�}����T��µ�$��HF򙠩Ǣg�O�<�,~��U�|v̹H����w2�!+L�F`B�Y��>�72���W^�MA��`{�֪q��ϙ��    �g��W��X5(X��HEs��ӭi�;*L[hݽ�Km��t��A�6ɯ���~k��Ǭ�i�H;T�
p�;��z��_U�Р?�S5	��@���c+�yTѷTuظ�u]�!���T���P��D���h�^�ϥ��/���ë�2�Uu�h��J7�|}������f��&�_���������y�FxƉZ���������t\��r^ez>��~ �i�փ�3(u֒��.uqc��r��Y�WY��h+Po��ZAk:+�&d�
�+0�kb�0U+��#���`�Z�����+�&V�B4�
����z����\��eK30�hb������7Ô/X�V.X�1�3H����z���v�o�	�`<+T����@*�Z��{�OH�#���2��t��M:�[�\x�OI��Ԡ:��H��Y�R�^��˽�_._V�f$D��
宯ȿI�|��W�?a��[��$J�Q0{����w[�Gy��Ic6WcW@���2�ST��Q�����Yl<¡>���ϩ���{�&t�E*ȿ!7[��ϵxfOS�R�V�T�$�*�� ��^�������ҽ.�Q����/!�%s��W����n��v}�x�x����M�J�3�r3䝹O�ū���_��HA7)�����T��rv�E;�����ߏ�ն����zCp1�k<AŜ���"�������.ٿ���Od��f[�Ԥj}������ ���͚r���k,iaTn��_aP�G�|��l����Z���?�_����g{�&`嵃M�%�<;���#pXh�a��_u�
E�vB��"�-���3ǗTQ�D�'T���D�r������/4�״�u��m��I6��W������K�ּ�#'4�H����+��ggb�����G#�{����;��P���W��ˤ��Ta���x�+%{��M����iI]B��t��0��s3�����O�J��P*ǧ1۷h����������Mz�뛝�v�F�� DMp����E�@�q?�x��SyԖf�pϯ,Ok��iEXEcꩲ;��q�y�l⯍A�|u5뺇P�K ]��x��rF�+7�!$7�ɽG[��V-M���ǰoWpy�L��[��^�O�zqy��l�F�����Gd�g�*�Щ�"�I!v8PC�$�@ֺ�zL�N-�|R(�z�BpAX��]0AN�)��.`�� D�.���sA�h�%�J�)&��q�	�7�M`:><A�[�i��h@�8WG��қ`z&��Z�\�L O1l�����7�M���8$�	�SL@����7��L��0)j��00�5A�M0=H��!CM�b&�u&��7�M���8�	h=nd��a-4�O�±�1ʌ�)�8f�2c��M���E��d2�qx�M09t�;D��g�x����z���|�%����8򖘞%��+�8F�,XhrXO�co��Y����A,�C��tKD���Z�Lo�	Z��}�!,��9�N:�@��Z�L����,���� �@�s��t�%�;G�ܙRo�	Z���u���t��dK ��j)4e�ӳD�u*�
�)�`	`�Q=���ӳsry�h�[�ꨞPo�	Z���5��K ��J�Z=iQ�N���;;���]]>���G�� Y*~XW�a���_;ড়O�rG����.� �r{L��Ź#W�玀SG%N]���>��KtG8�>%���Jp��,��}0����򧄺c �q�H�|����&��r�1N�O�uǀ���.� �u{L�n��cA�펁=�%�\�/*o�zL�n��c����tw�9.����w�$]�f�;ƏC[x�@���.�%yWL�nf�cB��x� ���.�,yWL�Nr���b�1p踖Cc1o�	��ͤw������JǵTKz{WL�n��Q8m#���k5�����+��{������1븞X#yo�	����w���#�i�z��e�+�ȷw�\��j;;*�I�[��\4���+*?��|�,���]f�~��M��W��ի���^	=}���b�%%R��&�+��yF2�(a��/�� �e%��2r�3��\����6W/��/W�J�������p(�jݛ��&�,��T'A���!��+����%�G��<<�s	��:s�D;�����q�G�m��r�I[�<
�2 TI�����-���$G��wW%���~�>ϚM_��oT�6��B���:O؀r�ަ��[�&���Sv�z\���)����h��^n�wXOS�=b�_�ڲ���������+��6\ڊ�p������*�w����}=�O5L��y$+GA�|λ��nS��Vl5m6��RJ���2���<�>^�����'��N[���&Y=�g�|PO�c�Z%k��z��J�ެ��U�F��PBl%=�V�����������$ȗ~����Ԑ�8�a�ԅe >���Rx���Z���	�")����Σ�u�#�9k9����t�������؆�,6U��,ME$XOV[��E��^0�mWĴ<�l��<�Ug�x�������ړ��{��nړ���A�S���Y�ҝ;�Ȧ�<jc��y!T���.�"�tky�76�����M�c����iC��Tl���/Ϸ}�"(�?m[D����~�jD��fm�j��Z��"�-�E�*��3�C�8���!qCD�!�;	�9�aq�u��6�W���!j�[k��N�����T�$m,m�R��Iv������S��=}�߼M�H��/�m=Nx}OHոRl7�O���>!��/;Kzȝ��{ꢟ��n��~Y߃�H�,��;���	���t�Z���r.�	�%��F@㤌�s>����XE�im~�X#m�KV�&+�e�(|������7�E�M�"���K�9�u���'V=,��k���.��B^T���u�a�t���O0пs��V��(�p���(̼|�Md�[l�Ba�$ �	�w&��18$��rHz�;��"]8�;����!?.>�ޭ�7�'7��U��{r�wMo���0�B#d�)�{���&ˑq�)�X�av�muf�؂��<��['n�9��m��� �?m����jyw�����v���ͨ혜�v�c�A� 4��Ĩ�J���]�	�V�g
BK(�Bt�"с�x�_�b��������o9��rqX���h�z��Ճ^�	ѣˁ�h4�4E�y��3���$m�,(IUK�If��A/V�(�u�t G���j.�L�["�qx��v��Þ��ɼ��CQ1�7-V�(�n��P�a��Z�$&h91��Ώ�}��sʪ��n�t�txU�R��^�=�4�ׅ� �A�Ɍ�_����~�ׯ��\�[/a������w��	���+�ln�%D��L�.qd�r�吇�������-G:�%�r�c-�ELځx��RCk�3��y�j�	yZΓ�_%��~�u��>�����s���s�(Q8P�bK�&���	ZN��l�G�>mG�ێ�ێ���.�mWl\�)�+�ԃ� �B˱���������[���{��u�T2�MLX�a��O�Y�b��v9c(�Zl,`��<�eAȻ�r�������sgC,	��K�TbM�C�U���X�)6on�3�A����E72��r����&��?���J�y�r��׌�qe�QiVY<��T�J��1����)���"3�|{9�����9�d�em�[�����l��m�a�z�g͘�������\����2P�%�_�ؖK����-�v~GK���P�^�B�}9f����[Y0aTlf��b��v����Q�{����ɫVl��X��"c-�qϽ��*��ބ/�l�{&��]�`�G�x~�O��dƭu���yz�}X���,5'T$(��}[B ��![[�#� 1N*�oG��l�Jf��W�����ZZ�L�3��*oZ�t���+�Fl���~���1U7/5�f�1��|@�x:-_V\4Rl�ܥL�А!��N+Ƅ�+�G>&    �z�$~� e��[Ex�0�V��6Lw�ɫqǅ�ڍx�$k�\|2�Rإ��n�*sg����� E��)���_�����|p\63��n��1��5�����A���9��HGl�E�EX9,�s��������U�Ѵ�5֪�����GJM�ۥ��--W��G�Ck΄	+gH�����ד����X>��k7
Ҹ�']ZVDI���ZlݽAK���*Q)S�|��E���E��Ë|��6�E���K��|9��x9��_w����}��4���9Yf���eÖt�\~��*���Zw��M��[-�Z�BQ;�i^Nk�\��ؓ��y��B�(ڮC�)�C8��(5�ޏ���~,�[�褭u�R9�\*�����~�������R9-9qЖN�I�����9�����98).6\�Hk�v�U����,��}�%	ښ2(n�W\���eĊ U�}�u��ٮRcub>�O�r~*3����i�P=˖�rJ'�'�k���*J��W��V��+6V'փ�/g�~IV���E�g��\�\|zY���Ĩn��˒n=���Z�'�s��P/��~�]�g����^L��=jZC�ǡ��8N{s�"�Tl]=�6ԣP��4A���H�z~ا���q녭�����i��"��R��K��V�ʬ�R}�ޔ����e�W�O//G�px9����韔H+�|�=Ѝ�P���N���Pú�ߔN(� �a�;��Wgv`�
3C���v�\��}���~�J�k'W���p��F��:LY�ō+��4O��/��r��3�>�'��
M󮊻W���&^��㱹R[��^)���w�TL�,�'���Uz_���b5�V��jp�ߔ-'�H�s`���T�n?kN���(����G�~��Ằ*&�2(�j�S��!**��׆e4
��3�i�*�! %ʑ�ޮ���[���{f��R��R���+�O�|��EUݱRj�ܴ���nl�z��D�('���>�wM�&��SE�[�m�I[�Ae홫VU�+�XsĞD9����~�Ӵ���σ�cu�i5��-��E����9�;�r��ߖ���f)����6�����p�S��bN��lJq(Q�*�\� n�� (��������җ9ELY�=�X���w�8��/v��Wa�xv���ǒ7�̲Ջm���_���_�3C����6B�aA���IAY�QU�k�@Q�
���888d�#���X������r�oo�lw�[i�V��7�8���D٥:]�bN�9�L��22�����}��M��:���+�4���b��/_n��v)n�a�"rU/��}���J��Ԃ��`�j-�sƭ8�$qB[j����/���
����:G7��`��u|J�^�Ց`+���u�����X�E�{)���T/1*� �2Rt�%�����}]�샗���c ��2���ǟf��Ϟ����һ��]�nYa+��a"y�U�,�9�fl�W��`-�7�M��?W����U�%�YF/�����H��u����r�l���ey?9ӿ������ۍ_�U;Š�(�����M�L����H�O��NoN�Ħ�գu=�𰞵�P�ZvXϚ���Գ�=���CX���[�l��#�\_��,�BX����7�����Z.`-�Z.4��Ff�v� �v�ia��0638���^�3��AT��t4��V��>9���rZJk�R�i$�aF ��2���^��[�%nZ/ny����sT>��ͼ�w�������5?�R-p�Ό�ۙZ��|X����x�v�$6[�Qy���d�x��Y�n�Hb��a�1*o;j�K/��^��;u��o+�Ђ�c8���<��c�[r=�������"���de��OQ�V�5��m���fb��f����Ǟ�V����[� 
-��B�?.oת��������L?��BV0_Ë��k����ͽ�t�cR��b��r�m���~_�5��ֲRX��s��Te��ı�%Q��T�Ē^M�07��W��������,�����ɔ>Q�q(�E�v�����su��T�j*$��^��y��j���2�A��j���$	j�n��ii��RvP�.�E���>g��|v��iB0M����͢\�����o�Z�3^,��րsѪD���h�h?���U���Qr�
���3@sV����!�*C`%��'F��+��K8�8<�~<QU���§/z"?<����q�'Je��!Fa��� ���c���!"� �����R�����ɟ��_ןog��Z��=�Ĵ��^z^zW���� A�!�6/~��=���n�J�E!`�����������\+��2s"��AUH���	�o?IS�G铷�������۰Ó��h����mnn���-!�,��Y?%�^/��G�����e��@��x��b�*��Hn��WS�>���>L�����~�c�~��+��out������e����5��P�P�ֻ����C�]��I��-bË�*�| ��x���Vo���p�
)߶�����ꋟ�\>��9w��K�]	&��&��6�j�С<��Xh��|F��i�_��`�b4�� @�D��	~f4>D�m�F`��S��ύ؀��� ������çٻ����ƻa�d��� <hf�m��~�v7����,���քZ����,ׄ��X�q���6��\��w�>�<��4�5+l\���k�o��}��5��A��^+5�^�|�!�� u�*-F!�@� Cf�W�/������f��mQ����9��tl�=�C�`�'hŉ�b���Nz<s�m�q�8���W{ ��q�6�j�ً��bu�����0��J�S�+�:��$+�7m�sJh��)dX(�a�����G�#�#*������9���G��.�@�_�VjP8k\h6�A[���2�� �A�q���o�~"2�";lഠ�܃�-��#4~+\ڄ��4>�(�T��[���Ȭ�G���޿b�e�]0ÍUl@�����)J�b+Ȑ�r��������_>�K�;�CsQ�-��j���h�� ��O��H�X�9G��
�(��FѶ�#�p�s�v�b���L�œt��]VlM��b��v��Ƃ� �B���������dN ��p�v����s�Ĉ�ħ���J�l�v6��٠���5��ٙˏgÙ�70mm.b�\d�
qsqm�bCis�3io.���rL�C���v����֯Ć�?�E���V}�`NX�p�X�͉En1·��8�<<v�C�Q�'�����W-���A���u��#�k�#ҡ��)��Z �:)=�W�NN�(�ق4.B!�F�q��!����g��nƭw-▻����Z�A��E��rt�47<}hbec�(����M��IdD����N��1�oVY���"��<�l0��^ ��ʨ7}|rz��sn:ԉCE4���6Ս���N�#��P;�BW�C��j�p�M���^Vƽ[k�����J�im�|�V�M�ͭV���UT�.6gn���r{�u5���� 	�2>��_`��>o��n�NEMGV�i��p����pڞ�]ul���v�����;����1yxH��ė9*�d��N��t������p,\j�\ȉ�|Aƻ��<�W@�Y�
L�Z��Dr��-'�J$����ǯ�NH���;�{
�����l�9O��*���-�fn��8�&��uk�	O�z6W�"��4:xr����7�Z5�%r�v��Y��}����N0���'�i� o�ђ�H����#����Ad8��S	���	fe�����)`��?������]5n9��ڰ�m���*���XFņ��۫n#���5�8�b^�[w����津Gi4g�r��k��9bM��ZS�s/�ˠ��T�n\l9mJ�>��1.��-�N�Pg���l�\��7��Fz�x�
�AA=я��*Vo�+�|a=�Pj��Km��Y|���F�ö;�����<h��H͞d��)��I���8�.6^n    �x�F�[�ve��J��J9-^�ie�s�a�²�y����X4���ٜ��9�>�Rj�\u�vfk�#�!���ɭ�l~�9�rO=�&V紥�d�������(ؑ6��Z���Պ�Rg�6[,�����/��~��o�u��ɍ������rj�x��t2��<��\�O�g���k�8d�x9���J=�x��%���Kd���.a��%����<�"(�Z2WY+�</5����8� ���G,{��(����өl9j���5`����\��k�J	� [�r�B@~y3� �O<�V,u��*��z�Ϋ��UMx��l�S��P14��΃��#C�b���ƗPtK層4���Ϡ������*����С���ŏ}�"BU��ʙˏrÙ+4@��D�`���y]E�1����F�A�ي͖���b|��Wkm>�)Q�Le)^��1��C]��	�jp���kŋ��}�+�Q9���V����M��m:t���DN�S��{���:�U��Dx���|9��%�n"�7�zRK��Z����z����K�!G���-���-��hW�3{�Q�X��~��f�)`E������J�T���Ґ�E~[Q����ֵm�o��\��C1]�;�_]��xAI�H�"?'�C|��h�k�8���*
E�/W����S����(Ǎ�U���Ɔ����J�o�p���{�2~txܸ��L�:A�΃,�<|xT�rvq{���?�-�ٻ�ܻb���D�kRѡ��(���<����fۿ�S�I|�����ѨԎ{���K۵�.e��_7�)Ley"���?�?�=�}���wޜ=YA��,����X��N�0�U�P?_�֏�?�o�ߗ�M�/��GA���%��w;�I�b�
��F����\8 j�FM�����M�0}���[���0J7�&�&�\�̶ L.�a��һa�n�j/wC�;��(��H��r�5sC��0J7��PUT,8��V�A'*�p._.?�����ɌΞ�$_W�z�ɍ7ƨ�!J���2��3a��U]n�"�n_�$��[�gE�����~���V��+|T
�?�ӻ�_?��w�?��w5*'�*g�k-Q9Ѣ5N��G�q��i������HTΏh�3��Qi����Y��#��؏��Z���|L:�M�������%��sؤ�ʛ�Z���|T:/d����"ehC������C��1�<,�����M�0��s8��O�k�G^��9sF�UTr:g6t�ȣ�!r����|T:���<�׹���@Q\E�ox��J��Փz\���O: ���<!�У&�F���o?к��z�GE��w�E�O�ƥ��0̴�^�rٗ���(6@#�Ѹ����z=:���Zp���h\Z�?�8)���\��h��y��|��.��Ǥ���k��َ�t�(���xR:.��1�x���qi|z�1X`)�t\Zc����#���@c�4.��~L~K�g�� ^������
2�yOZ�G�ڇ�V��5E�=��U�e�+�H]�J\I]��)���e�����v��l1{��������zc�o���v�����R�Ƃ����!���>�Vg(Tj�����M�G��җ{�)��B��p�'`�`��W���o���? ��߲����L�����<������Bp�_J%C�ƶ�j�g�z�E�ӎ�wR���9r��q�d���9�=M��+9(>�,������*]Tɚ���A���zpY�v�{t�����%Y3�53ȚyY-���S�5�d�,ɚ���A���zhY��j��N��5�$k�Y/��e}ZQ���Z`��d-A�� k�e=���cKF��Zڑ5��b�	�[!�뚸�k�o�X�!�BL{!�o�/l�6C�B,��!���Cv��vA�C����!ĴB�����>����t��K"6D�iC����u�ֆA7D��;"Ĵ#B���к>����t��[["!�:4�:��Z׎-CTס%]G��Ȥ���z`]���#Tב%]Ǡ�ؤ���z`]K�֍1��؎���L��4����u�ֺ���i`Aל���^)پLe���cΞ|J�Y��^�%�z�Y>�.����ΩD��k:�Sk�'�V�ٿ����G�I�/�Z���1<��9��r��T[EAU7��0�x�nF����( �� 0 L�ax�׵[�x���-�_
����/��wh]s���ſ�����	�R���5skOQ�K-�_
����/��wp];��G�/��)�_j¿��ߡuM[7���Z¿�/5�_����vl݈�_j	�R��Ԅ�ǿC�8�nD�/��)�_j¿��ߡu�ز����e@���2O���[�F��_f	�r���/�x�&8����v�����V�Z}E��E�{�J���7��}��a�d�`8���3 ������@�u@(f��0,�LX�y,<��ݚ-2
3KP�f�i
�j�����f�	3`��Ą�g��ڱ�X�"af		3@�̄��G�C��-r�P"�,aD���0�Dx��c+F3K@�f& �<Z֎-Q�,�`<��x0�<x`Y;#f(f�p0�L8�y<��;��P�,�`8��p0�8xhY��d�(�p��8X�Y���Q\q�q���,*����&�.@�;#�TD�'¹S"́s��	9V���H�[B��07!a��вvk���ؐ��%&́	s�	,k��}q�	sKL���k�<X֎Ug���Y��0&�ML�{&<��[�L�[b��071a���qKǖ�(斘0&�ML�{&<��[2�L�[b��071a���1bǮ�(斠0(�MP�{(<�����T�[����0Qa���vk�(P,,,a�Hc�Hcᷯ^����=�^-6���y�N��p4�Gl�487����h�0�`�i�Нukm/P,,�`8X�p��8xp]���(�x� ,L<Xx<���[�{�aa	 �����C뚻��(��� ",LDXx"<��[ܣHXXB���0!a��к��Q&,,1aLX����Lxp];�nD����@aa���C�u-[7�PXX����0Aa��к[7�PXX����4Aa���vk�(Q(,�@�}�!{���?,V��$Yo>/�/U|�����#��`&$&�0�
dc�%|�'��\���33�}4N_V�9��w9�v9g=�9$vo��a�����z���le`e�o�"\�O9ʇ�]�3������"�~�?����vE�A��3�^�C�����AD��%�+r"7�c/��E�9gD�8F�+r	"7�d�E>�ȻI"r�)K�"A�&�z�.r7�(`�<��0s�E>�Ȼ�'"r�6GvE��M�9�"Z�ݟ-D�(z����h ��4����|p�;��$(�&�]��$F����2���� 2ǡ�]�I�z�${/s'W�Ş�.�$�=��{>�y����9
>�]�I�|�$}-��+�r�|�� �$&�I<�\�n.@Q�I�O쓘�'��sh�w_3|���؅��'1�O����*ws���Ob�~���D?�ǟC����zQ9J?�]�I �$����ZD�(�$v�'�IM��z�9�ʝ\}RR�����&�I=�Z��_I=��Q�I��O
���|z�9�ʝ\}R�̧]�I~R��~�r��ꓢ��e��'5�O����*gN�>)�>�]�I�}R���}�r7W�(��v�'�IM�z�9�ʩ��O�}R����&�I=�\�n�>Q�I��O
쓚�'��sh�7W�(��v�'�IM�z�9���\|���E��'3�O����"wr��P���O䓙�'��s`���q�{2�ܓ�d&��<�X�NNVJ=�]�ɀz2c�[O=ָ��N�W��=@Of���CρE��"C�'��<0Ofb��3ϡE�$b(�dv�'��Lȓy�9����u'J<�]�ɀx2�d�x-r7�(�dv�'��L��y�9���L�2�w2����d&��<�X�n�`(�dvy'��M��{�9�ȝ\xr�wr�����&��=�X�ng�    (��v�'��M��{�9�ȝ\xr�xr�ē��&��=�X�n�(��v�'�ɍ�{z�9��ݬ��=�Oē��'��sh����D�'�K<9On"��ϡC�n.<Q���Oē��'��sh����D�'�K<9On"��ϡ��n^��Q���"Oȓ��'��sh��ySG�'��<0Oab��3��U���S��S؅���0AO���*w�[�ROa�z
���D=�������է@����=`Oa�cϡUΜ\}
�{
��S �&�)<�Z���է@���>�Oa���U���%��.�@>��|
O>�V�ps���Oa}
@�>�G������'�>�]�)�}
��}�r���e��.��>��}
�>�Vy���e��.���>��}J�>W���O��Oi�}�@����ʿ}pQ�yQ�߿.	�*{�����W��͵��W��~N�g��f2�w/"��Y0gQ��<�{��Y&�S�<@�(1��E��)���BEO���-���7��E�Ԏ���HFEϼ�G-�����kG�D_����^��}�����?9jG�D_䦇�^��}���_��<Վ�%���QE/��G-����ūҎ�C}���>����[Ȣ�5�#�D_�������G-���������� �"s=}�E?j�w��_ѣ,6�"z�l�����q�ޭ�,A�,	���,�a�ʎ[�ݟ��W�8��Ce	PYb���cّ�ޭ�,A�,��e	pYb�ă�q˾�zJ�����%@f����fG-��k���z��;h� �%f4K<���[Тh��a��,1�Y���U�}��~U��Yb����g����V�c�Y�;t� �%f:K<��껿��_գt�����,1�Y���U���c��ų����g���R�gǭz�V�ų����g��R�gG���/
�W�(��v�,:Kk��z:;nջ�����Y;p���f8K=���[�Y��Yj��R`���f�g��V=sk5KQ6K��Y
l���,�lvܪwl5��Yj��R`���f�g��V=ul5��Yj��R`���f�g��V�c�Y��R;l���f6K=���c�Y��R;l���f6K=���[̢h��A��,3�Y���E��Z��d��!��,3�Y���E��Q.��pY\���,�\v̚wkr�P*��PYT�Ք2�Tv̚wl��J�v�,(��P�y(;f�;�c�P&��0YL���,�LvԢwN1�2;H��ef$�<����!0��2;D��ef"�<���[Ȣ@����,3Y��E�X���<���x,3�X�y�E��A��Xf��r���c�籣�[Y��Xn��r���c��c�c��9
d� ��r3��ȎZ�n-d9Jd�"ˁ�r3��ȎY�}�(��v�,"�k.��Dv̢w���Cd9Yn&���Q�ޱ�,Jd�"ˁ�r3��ȎY�U��(��v�,"��D�{";j�;��E�,�Cd9Yn&���1�޵�x8�d�$��r3��ɎZ��ݼ�Q&��0YLV����Lvܪwk-+P(+�@YPV����PvԪw�Ne�RYa��
���Le����V�[�Y�bYa�
��e�ǲ�V=sk5+P.+�pY\V����\vԪ�n�f
f�0+ �
3�̎[���fQ2+�YdV�ɬ�dvԪ��fQ4+�YhV�Ѭ�hvܪwl5��Ya��
`���f�g��V�tl5��Ya��
`���f�g��V}��je�����f���J�fǭz�V�e��
��f��K�5�^���Y�'A�{So��h���z���l�,PsϬ���-��tg���Z� Ԕ7���_�b�̱Up�@��Zo�Q[���A,���j����@�dk�Xת$X�w����-�}�a��WZ�@0���[`�ps9��Ъ"���F���@�!�A,���Ȫb�������@��W� ��c� �/�h,���\���	��>��M����AL�b��� !&fBL<"�	�\��� #&fFL<$�	�/T5�	PHL�Rb���)1�x�&�D� @)1���	`bb���s�q{��e1���UNL�3'&���%�('&VA1PL̠�xR<n��(FA1�J�	�bb&�ģ�Q{��k�� J��UTL 3*&�����?7�PTL��b
���Y1��x�prMLQTL��b
���Q1��x�����A<��bj�S Ŵ�,�'�����kb��%�
�)�bj�ԃ�Q{�;�&�('�V91NL͜�zN<j0'�����*'�����Sω��7��('�V91NL͜�zN<jP7��('�V91NL͜�zN<n��&F91�ʉ)pbj���s�Q{���&F91�ʉ)pbj���s�Q{��%1���UL� 33&f��N��J��UJ̀33%f���n: e��*#f����3ψ�� '�A%��*!f@�YM�iO��� 7��6m3 �����c���{����*f����3χGm'�C�0����af�����1[�̈́C�0�J��af�����Q[���0
��U8� 33f��n�ʆ�U6̀33f���n�a(fV�06��l�{6<j8��(�V�06��l�{6<f�y���p�[���07�a���-��r��t�[���07�a���-�fI-��an�s�ü�2bO��l7++r�.b�t��f:�=��\�t�[���07�a���-�f�u��an�s���L���ã����a�s�t��f:�=��v��x�[���07�a���=���{���*����χ��'W���*  ���G�7o�(!V	� B,̄XxB<n8�&("V� D,̈XxD<j0'��e��*#����ψG���X��XX�� �0Cb�!�=�����*%@���O�G������*&�������7��('V9� N,̜XxN<jH7��('V9� N,̜XxN<j�n��QN,�rb	�X�9���x�prM,QN,mrbI��8}��@�.����xA��j<����í�EH)SQd%�q%�(Y����� �)a�)L�D-io����Y�V%����zi�"��'�J]i���4#�fd�f�ه4�??ۯ4� �I3i�&i�^�}H����J]����4�^o�/��I/�^��9E�U�].Ѡ�4	H���I�4��f�����&�v���4)H���I�4{��[� ��P)m$M�d&i2/�>��}U�~��fC)k$M��&ir/�>��}��~��F6)o$M�&i
/�^���2MRR�H�@���QO�z�f���+M��z���,_�J)�e��w��_���ɧd�5���wZ�������r�� R�$�>|d[^�IȎ�b��~�?��_{����$ȗ~�����Iښ�Hv���ʪ����� 6GMl�z6�OG�آes����樉�Q��z�f�7��+M���Fl���&6G=��E���IQ4G�9h����h��5�S�d(�c��2�Ld�y2ׇ2&��X#.ǀ�1�c���!L��r�R9ֈ�1�r�D嘧r�Npk��P(�A9P����P�e:�i�P&�19L����L�e��=��X#$� �1�c����ql�9��|�L�yԋ2[���# �����W{V�������8*�����!Q�m��I6��W���*����$t��87�j��0:fbt�3�>��r�Et��c��	�1���P�ca{�":��q@t܄�Gt�(ӭ%*Go��8 :nBt�#�>��رN�2:ވ�q`t���gt�(ӭ%*G!o�8@:n�t�C�>��X�B:��q�t�鸇t}(ӱ�K�t�����%7A:�!]/�tlTyO}e��&H�=��%��
�����H�M��{H׋2[U���@�����qπz�)v�z�Ҭ�l��K͏���?��2�'�?^\F�w8F��v��q�p��J������?>A���ǹ��?�[�%7Q:�)]/}G�w���wT^R_?����R�0��i��J��;��4��	����"��ov�W��W�7    �&�:au�~���:�����R'L�NxR׋4���_iV^��@���	�	��z�f�ד�+��{�HX�0�:�Y]?�tlTy]xi�&X'<��E��_�ݯ4+o�n M�u�D넧u�HӱeP����	�N�p��iv�u�Ҭ��4�	��"��o��W��WQד�H��H�䟖���lp����ջ�o⮴H�_�67�unl�)��o)MpNz8�OO�֪�����AL����p9�~�ٓ�g����<P���buu�IV���j����u�:�:y5��&mҠ^��=�%��.��i̞��{<���+�����A��z��y��Ϟ��~��!fO���@���$��>�8��\��3�=�I���k$7^���}���[�4��çG%��;ULrZ��;�v����9���Z�3�6/ҿ���m���N"������,m�۵j���巻ۇ5�X�y�z�fe]
h�Dh��?�4#�|����ϗ^�=L?�NL��N�\��D���l���#�6�}�ܤ�x2�e@(�).gv��s o�>�uIƪ	�ӁXn%��Tϕ�"�����>�}SP9�?���L�«�O���WƯrQ�rf[��%�3�K��U~�i��\֪<
m�p�Dpd��Ы�O����>~���*'vUz�-}Y�)L.����/��Ma��x;qo8�t���z����`�tj��S��~t�9�D�hT���)���:�E��'E�)~M�rЩ�Е�i/:�>l7�N�Wmt*@��(��i?:�<�<�N�D}�JЩ)W/�N{�i�G>�)��mt�NM!�������B��a�F�SS�>�:�E��<D�h�>j��tj���^�������M��-tJt�;}i���P���)���I�F�@���Hy$ՏR�/"6�Rq$ՆI`R�Ĥ��R=)���A�iC�P)b�R�c�~��}��A��b)҆K�R�ĥ�SSH��U�(�"m�0EL`�x25���X���)҆L S�D��GSS�j�U�(�"m�4ELh�x65���X���)҆M`S�Ħ��S����+*ʦH8E N�"�N�"�� D�(�"m�:EMt�z:ՏP�\LQN�6p���&8E=��E����E�mæ(�)j</��T?Bur1E��Rm�4EMh�z4ՋP���)��)چLQ S�D��'S��9���(��m�2EMd�z2ՏP�\L�d��!S�5�)��T/B�n.�P2Eې)
d����d�����B�mC�(�)j"Sԓ�~r~n.�P2Eې)
d����d�����:E�m��)fS̃�~�R.ꔡ\���R�3q)�T:uS�(�bm�*�LT�y*ՇL��ʤX&ŀI1c?Ϥ�����(���k�� )fBR�#�>t��C�kC�)f"R��^t��>?C�k� )fR��^VQn.�P���(<��x�<�����Bqk���(f�Q��>t�f���4���Qh3�(�iT:u3+�P���(4��h�4��:���(��mh�M4�{ՇN�<��Q���(8��p�8��:���(��mx�M<�{ՇNݬ7�Q���(<�/��<���Y���wJ��Qx7�(�yT/:us��(ކGq�Q�ģ��Q�ĥ�\G�<���Qx7�(�yT/:us��(ކGq�Q�ģ��Q���ܬ��Q �� )@����@���y�G�oC�)a"R��~���RJ�HJ�AR��0!)�T/Bu��3�2)цI	`R�Ĥ�gR���Ŕ@��h�@)a�R�C�^�����R��@���J	O�z��W�K�6XJ �&,%<��G�n.�P.%�p)\J����\��
7S(�m�� 0%L`Jx0ՏP�\L�dJ�!SȔ0�)��T/B�n.�P2%ڐ)dJ�Ȕ�d���n.�P2%ڐ)	dJ�Ȕ�d��:���(��mȔ2%12��rv��]OΟ���k�@��w����&Y%�O���Ϸ��Z=����h���J�z���RE��M�fO��
����}���}�|P�^|y�}��ӿ��w?����oh6 $���V&g���X{(>!��Wsk�����{ak)�S�Z��V�"����\/�Hߔ��Rz}����?_š����ퟋ��W�_�t�~t���r�� ʥ$�Z)�+3�����6~.o�e����ٿ����G�I�/�Z���1=�()ا�7͞&ww_��U[E���VM�j�ީo�O��j���+�c��*�(\$��.��:����z���J<����
W�>���������W��ı~4�?��de=���&<�싓d������ū�35b�.�u�xL�q��o�������nq��x�}cg��M���s44!�?�j�h.S#D��\&���@��Γ͟�՗t �:|(|�%dG=�0��o_�8��n��[�z�:���a��]���ҥW���1^a��i�W�ǲ[1<����聆Fɓ`��X������~LO_��ǋ7Q�?�wji���\�5����V�Z��`�f��O���Y�&evh�O�3`���WO,���:���'M������O�<�88���A�Ol�+��ŏzbL?1v�Ĉ�'F�{b�ሉ?�#&z��ݎA�j���_���O*���������>�J����!S�o��|�s���9Ѡ�>�8�9����s��,#m磞�ω��OG=���}NS�[��|�s��9IxN?%�^/g�E� ��~���S���<�q�=�^���߾ڎ&�������C�N�{���L�vȡ���̃���$vG>�Wz����5.�Mr���aq�n�/�/�Β�n}2�}�M�y&�?������/.cY`^.6�����ݷ��_��"���af�A��Zv������6�,��.��"w����w]5}V�u�M�c��Ѿ��(���r���z�H�n�J�����{A5�1Dw^q��z�6�l�>��]l���<�V_��u��:|8�Y��:�H�#��_�61L:�>��3��a�z0���ר�RcB����ii���Q���-{邏/^�	Bc�`���z�N3i�U��z�Y��7�{�������v�^*�u��R���?����x|d?G�^�4Q��V�㘺���|�hU}W�Ghg$��X�>��z�ca��c�N����W"�����Yަ�>S�qN۵}�%�>��z�������?_ga�����i*}�9���yq��; e����C��>��<��ߟ"��R[I�����닏Y��,���8~�%٬g���{�����a�G�_-h����������U��H�}%f�[>|�[%�Y��i���e��$N�z'N_������k����n�p3�������~�r�\��>��-�P�;�Є��t��AK���f��,��޾�ln�w���D}������`�/+!��(��H	9D���^�g���>;������d
���#��`θP8g�|F�<=(�H���'W�$��!oF><iY8G��8��e1;�y^�y���ܭo��*�H��w@ڞ��-9-�m5a<�A��8ٞ�`�����}��A'�Zܹ!�1��1h��x�Qu>qv���7�γSx��^��_������k�fxvdQ����jT�lY^����4ۋ`�����*���M���2mW�Įs"oXo��[9?7ξ�n)oͪ�*{����*�p"C�B���R#���/����ۼ9Gm���NqTt�h�3��id���y��L�~~�Z���d�����lZ}�mf�z�m{H�+��R���c}�:��U���}�[�"�/DU�m�/P�/��_ u5j:>Ύ�;�1Du	J=�g�g8ի���5�����3��6�ur���p�s�k;��1���M�@tY��UE��������L��qK>g� ��H��IE� r��Q'�A��i�����g���2@N�馌�^���f�w��A���:�������!��9B<V�O#B#��Y^^ۛ>'�8�35p1��,�G��2'\�&��U����5�P����yͬ�ġqc:��1�!�I%k�m����=.T���}�!}��So�e���{:{��EWU�w��jԣ�    Y��t���ɞ-���A�P�y�oe�n�$�����`�R�/6�xg�-��
N�����B���!�&m�a���²W�Sd'�R|��WQTƲ/ñ��Q^�H�x�+W���g���SQ��(�a`���f�v�f8�ִ���__�_nϪ��_��x��R�k������z�����l������"�'����^��������G����z�����~��EC�L2~cs���Z<ƂZ۪C;�~J��7�T��~�c�T9+�Ί��z�Ë���j��}S�p��W/��W��o��n};����X�n�8���+���1gLF�M��Uш����Z3�7Q�������d0�/w?���m_����t}��3{�,R�U���{�?�p��j��~�:��j�����FUM�U������`k5yܬ�?'���ǯ����s��l�/�[��-�蘣7��%��[��D�����F�WF��v�����v|�����x��ыY��x�/͎g�ϼ���x#?���S�G��ĕ����8�Q~���,R��|�_�~K�6;���R�KT}8�m�������ōmN�pp������"!sv����	��x�~�T��|ʩEO�t�"���D\��D��e�q�b$i��$uW!����ob�\����7՜gqF�޾9{��\�Yu����E�5C9�}��4t�;�"��u�m���'v��ALϙ+��W��W���a��,n�����)�%wW�o�x\�5r^��p9�v
�IXߛHy���ao�i�@�aj���m��?���������!Q�wv����L���l�}�)�b�7	i�ѭԳ�]��]_B��x��>�|߿�OS_���M�\g"�-�-5u���ԥ���R|�2�.%� +���02t)��iP����� 8��K	��1��U�~|3{�a��]=�vw�q�b��u�w�6��Ӽ��Rr��x��C���]e���9/��/ɌD��?Q?�w�·�xNU���\5%�U��� ��Έ��$�3F�=QT���dTM/U��L�ڧ��f���g�1��
41	DEo���ވ{#�u}H퉳(7��,!���&!qu�aEW3�%ķ���o�/軭���G[>�B���sm�����o�iV]W�A�5{������?�=U�{��aO��qd�N�W���Rcdtrws{+���	�tW�D"�d�d�u����(*\tN���,��.+{�����An����ۊ���e���z�����7��agۥ����q�>����S���Bt���Y���@G-��϶ߤ����������ۿO<��mF�/脌J�N����+2�@��E��\��Q�^C|�X�v�)ZCo���#`�#`-;f�#`�#EG`J��[�Ԏ�%j��4��1�l�p����p���# �؞���'�N���' 4��S���Ѳ+6�ỂqtG��c�
�S]���
�8�	]�]صY��p���7����G�3�gCK_aAp����c�62��ډs�������y?�ǣ��Dto��	+��12?]޶���e�Cm��+��FvM���:�]���p���0lm���1tj�H[��LM������[vԆu���ןl�֮��k��U6a�a�k1'<.Ò�	��Wv�ݎ�b_(}�Y6j8�F~�ܲјK\0����ujW��JP��t�������]��+W�7f�R'[{�i�:5�Nv
Z���L��ϛv�U���M˜0mm�2{��V�0CM6iC?�n�p�#m�R�i��6�=�NM���4��f#m�G��M�|�N��>�u=��@�@M4h6�f��Դ4�H�D�IԦ��Щiu�I��'J������i�5m�%���։����?Q��H�PM@Q�p�e~�ܴl�#�(Q�ʞC����~�8}U*�tv~~в���堡^�y�Zϗ�?�f�Y����ݝY�dw�=�Ƽ�6�R�ߎ�W���C/*8��!e���Û�F-Y^�QSY�	���c)���	�����_�ri����"�?�sc���1Fj��h��6N����v�)�ޜ.�pz���.{qz����qz�>n��Spz�ӫ������G����Q�G���vz4�;�ڮ:nN�zqz����lU;=�N���)8=v��U�t��qNקu��:e󒠍�I�>n��`f/�ɛ��+������уۉv;1���r;�n����N�p{�����I/nלW �7�_���Ի}�n�Sp;u��U�rn����i�3��Y+�3�������U�������I9��^�ε۹����۹w���Χ�v�۫�2���{q���	sn��
����ۧ�#nD�*�@���KvN����9;GZ��Oύ��S��7�s���rn�%?��P��#�t�'����)D���SW9����:C'�:�*DG|�n�n�B�����1:�K�N��0��H� �I���}
Q:�F�N�G�H/Y:��tҜ����t�g�F�v:�,u#K'�t��,��Y:i���VY:�tcw��tԍ,�����^�tRg�9KG[e��ҍ��S��Q7�t�>KG{��I����,m���>K7v�O!KG�����,�%K'u�N��t�U���,���>�,u#K'�t��,��Y:i���VY:�tcw��tԍ,�����^�tRg�9KG[e��ҍ��S��Q7�t�>KG{��I����,m���>K7v�O!KG�����,�%K'u�N��t�U���,���>�,u#K'�t��,��Y:i���VY:�tcw��tԍ,�����^�t��҅�,k��c>K7r��)d�Y��>K�z�҅:K�Y����d�r�>�v��uw�1�Ճy���wQ��VNϬ�z���~q�q����/<����T�17Bwa.t��QNM��<����]�����Mrt�w{����[Nw#pR��Ԋ�u�.D3t��&�ܻ����tb��O��n��B�Z�Y��Ѕh���$@�{�����N�[Vw#jr��܊�uz.D�s`�&�ܻ��Gn��-����jua��::��90o��\�����:slW΍�](Q��ӭ.	�M�W%���\������ͩ0ע5$i!�*
�M�,j0̔�5�Rh�n��I�.�䇫NhՙOb����?�1r�;�CAqr8I�������9�v���l�r�b�.��ዠ8/����^�p�B��v���E�������]>�CA���$]^䢇�爴��'.��.��-F��)��X]���ᤅ�9b�r�I���P���)���|
�,��!�I����E',$����|�mN������L�|)�����E��
���
���ts�bBZ8��)�ӧP���LL���U�IU��B���U�	m�t_�x�N�B�bR<21I��W(&=T(V?�N7W(&���}}�;}
��I���$�^_���P�X� :�%�Չ	o�t_�x�N�BmbR<01I��W&&=T&V?���	s������ӧ�#.D�D}$����:'̙8�"G|*n�N�B,�����8�K.N�\�0��H�`�ɸ�;}
�8�B4N�G�H/�8��q�#-�qħ����)���8Q�#�����	s>������ӧ�#.D�D}D�����:#'�9�"#G}Fn�N�S��Q2r�>#G{��I����m���>#7v�O!#G]������%#'uFN�3r�EF����؝>��u!#'�3r�����9i���9�3rcw�2rԅ������^2rRg�9#G[d��ȍ��S��Q2r�>#G{��I����m���>#7v�O!#G]������%#'uFN�3r�EF����؝>��u!#'�3r�����9i���9�3rcw�2rԅ������^2rRg�9#G[d��ȍ��S��Q2r�>#G{��I����m���>#7v�O!#G]������%#�\h�ȱ9�3r#w:�BF�����3r���\�3r!���+��3r�����F~����̅0]����#V\��q!������r��.��c�\�B�.��˩��l\�f����ٸ�{����rb��O��.��B�ڜY��ƅh0�[�˽��|�6��-���9jsn��:    ��8�n}*.�^o��<t��.��B��\X���ąh$�[�˽��|�6g�����%jsi��&jq��}��}J�ĄT�7�������o�j3�͸�ʎ7%��|#�ި{��d�,�Εl�J��[��oǿ{�$���{�_��I�ϢHy?D�����g$��HF�s�-�3�'lR+�3&峳`�E���#N���<D��V �s�?t�&�z�|�=u�����^~8�$֛���bus�u�z����(�9��j����oQ���({k\��u��3�H�_F���9����\�+��E�m��î�WC��ExF��:�/:���T;��_�u2q���]�y^R���9<�="��=",=�*�Oj�s�dߕ�>l�';֨5�ӗN��K'�_����]:�y�˫(��m�o�ޤ;��Ϡߺ��^a�����L^�_!�b�CvD�3,�۰0�n>�^���VC�/��R/�f�����U��/^�����ˬSK;8~���ݫK��}R�IW�ˇ�����g�?X�-�_�?������������m�O�>�_�O��������/���fٞۿk��M��d���
���dy{�Iu���=��0�&�����L���/�h����V�����"#*=��ڀ�`h�qY(�Zj׼��-8{�,o幢�����o���.�nM�J#a��e��+f��*�5���Ҽ*s�����~�[�M^Ƨɸ�%��mY��"N�?�),|C�^��)���V�::�+�|W0���9����7�4�Y�
��
h}W�ľ+W@�����$nvhT-��0��������|g0���!ƶ�����6b��Է�ʃ�P�|M��������/�ë4�Fl�U���Typcj���Q����z��Uo��B��gZ��UUܪZ�kvTo�|o0�� phQ����q�E�W��ͫU��G�����b��#g;��l���rVyp9k���Q�����;��cg;��l����V)��py[ˣ:�;��w�C[�l{����A�v6�H}ū��� "�	�	tn� :�L�h �XI �[`�l�@$GE�� ��3��@tv� �"��A��J� �H�
!�Bg �@����������KV�)DzT
���:�6Ug@���"�B���J� �H�
!RBg �@T�u�3@3��JQ�H+e�"=*�H}q��C�,txf�F��b�#�q>�������K8f�WO�ص�w�J��ho�}�u�(!�[�*kԫ��5�$t�>�M��A�[m�נQf�����h�Ɲ^c#�Q�8,�2�����T��J�Ue�����UU��凷]3�|�I~Ķ�D���:�a:�=KM_��>.�|[�*���UHK�ʾ�u����d�N�f$�$�P��pN�P:����H�UQ��}��r�	W�l8gJ�2
�굱�cۦ��`p8Z����������X�kx���G�ضĪ�g��S)�߶O<Wr���p5F�����*%�Y�����:y�Y��g�J���oRmͲ�]��y�w�����ZV�M����o)��LHLa���2:xu9��]���Z�'́a�l�B��D���d�ԝ�έh�7�-�����o�2-����w_~1{���EZi1�.l�秔j�-��>��n���e����iU�%�XT8��8�O����_��>������G˓w���F�(���.�m�殿��I;��� �k�\U�����F����
�F��\��̰^���8��}L��8z��b�cޘ�lޘ�W>�+0��/�����^����״w��Ā�7`X<�-�Wݥ����r��~Ⱦ��O����b9&U��cR�Z٩��ڠem��>�ǟ
R�w��[�Åt�6+�3���i���~;$�HIq.95,
9���t���L�f&o;�����ĥG���K�*���������N6m��|���ʱ��ofO>,V�묈��7�wo�e\�q���|L����Ǖ�ۧǻ�������ŭ�F����_�-V_Ҝg̞�軭�)��T��͹�Ukm&���0r�u!�gg2xƨyw6
���OF�53����;�\��O��Ͷ+a��1�y�����b�统J��}sv��U�o��W֞�M���M2�[̲FNfg��e��ow�Bɮ��M��6�U`����@!EzV	v0�Op������#�3�b&b��}�{���������+���M�u��n9���{�#4�������EAOXe�1
Ctp�#��'������m4-v��c���1����r7R2RK��ڃ�y�Fw��
)�<�?����}b�s�hN�j�X�{%ڸW��߾G�=�+=�;:՞�鞈��D��"�M�/ⱍ��P)�}g��錘���;#>'A��=�����r?�z꧄�����o��e��R����v�y���l�V�6����yiӱ�����o�}U�'W�?��������6�
��,�Y���F�\����.�������Q1W��3��<��\D��P��F�>;��\uh�D��72��p�Ffm�tF��$��:%^�)���:�����6ܑ�n1'・W7Y���'�}{0tD��m�n����Ԫ��<�w1g4ݾ�?�m�s]̮��0+�_zGlM�!u�Q�cI�l��+�l^�_�MJ�s��_���t���H�������|���#JX����?��V3��M,�;�mv0@꾳"��Z�4:f��ݏ���l���#�6�}�ܤ�j�� ����p���r����P�]ɭ�v��)�q}���Pm�V[XR��>&-ֳ�͐%��-��i��k��KQ�6��&��a���eV�\�����a�w��	L��E���:����J���z�˞�~2�����(g)�;�n캞�����t?�/�x���_|��$�9֪�Vݥ���znX-朄�Ho7&�3��@��k�Y�"��2�^���y����yR��BQ<|/VQ-\u!��B����z��n��ه���$u�kŠz=B�<<A|�C����Z��"��?^\Fj�8{��ś�hIq��}������k�F�j��7+��j����Y*?l�i��U�U�q����Y�c��q�̶G�*�k9�.ª�N*�J�>�r�s$�{�p�ë���>\f��5ׇW�.��H��үVlS^���mS.v�XK*�����(���m�*����l+*�E$s\=����9ժI�J\���Ak�C�Ȩ U�vf��֟���i��T'����[}��W%T�i ՙ�݄x{���l(�>L����Ǿw���C��d�����:ـ�MF��;$�!�i�i���:�P�]��|�4�.�?*�����I�����������ZW�H�4��`��PjY����C�=��a��/��ɧn��q��U�9HG����~�D��)D"?H�����ߏ���&Y%K5�|{�dƮ�R�ݯ��R�YJ�~��w��T�4t�Z7tr՝t<rFq\��O�\�&���~,=�� ���w�	�P?������H�\7O�e����L�[M���P,�B;i��Yl����Z~���\N�nl?d+��C�Ü�HA��I�ШV��e"g�77�I9:�/]r�4xqH�*�'S,ی�u���[�e�q[�8���� J�ɦݐv�Q����A�k�J�>�0�%w��ܑO�c�ޱGzWv��ZN�k�	MUzٗ����wW��0*^4����(zҁ�tE��,A��k��D��|�`�o��;4}#�43�̘���j�����N�2�������DR�쁘�A��� �X��Y���vߝ���B���A����\Fs��?� ���Z3b�/	=yɳ���&y��6��M��VF#	��)8��t�d�?��BI^3�����KC�� 9z��s�R���X��Zk�@һ0G�· |w`�s���u����Z퉯ٞ�e�h�9��͡��FO4�N�&��Z�zJ�c#҈�+}�^�����Uq˫�VEY'=�8f-�F���҄1�D��r�gEs�t��{�    V'wd���C�9���]{�|     