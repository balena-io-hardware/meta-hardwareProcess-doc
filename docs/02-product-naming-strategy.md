# Creating Product Repos

When creating new product repos (on GitHub), repo names should follow a standard schema.

## Schema

When naming product repos you should:

1. Only use lower case
2. Separate with a hyphen (-), e.g `etcherpro-enclosure-3d`, (see examples diagram)
3. Do not use spaces
4. Do not use special characters (e.g. `_`,`$`,`@`)

```mermaid
flowchart LR

    subgraph Repo Name Schema 
        direction LR
        Parent --- A["Child<br\> (if applicable)"] --- Type
    end
```

Types or product types, are loosely enforced, with the understanding that it is very difficult to predict all of the different (and future) types of repo.
Some suggested types are:

- Printed Circuit Board - `pcb`
- Software - `sw`
- Case - `3d` (where the child specifies that it is an enclosure)

## Examples

```mermaid
flowchart LR

    subgraph Examples Repo Names
        direction LR
        subgraph autokit-sdmux-sw
        direction LR
            a[autokit] --- b[sdmux] --- c[sw]
        end
        subgraph etcherpro-cardreader-pcb
        direction LR
            d[etcherpro] --- e[cardreader] --- f[pcb]
        end
        subgraph balenafin-enclosure-3d
        direction LR
            g[balenafin] --- h[enclosure] --- i[3d]
        end
    end
```
