
int main(int argc,char **argv)

{
  double *pdVar1;
  void *pvVar2;
  double *pdVar3;
  long lVar4;
  double *pdVar5;
  int iVar6;
  ulong uVar7;
  long lVar8;
  void *__ptr;
  ulong uVar9;
  ulong uVar10;
  double *pdVar11;
  long lVar12;
  ulong uVar13;
  void *pvVar14;
  long lVar15;
  long lVar16;
  ulong uVar17;
  ulong uVar18;
  void *pvVar19;
  ulong uVar20;
  double dVar21;
  double dVar22;
  undefined auVar23 [16];
  undefined auVar24 [16];
  int local_78;
  double local_50;
  ulong local_48;
  double *local_40;
  void *local_38;
  
  uVar7 = strtol(argv[2],(char **)0x0,10);
  lVar8 = strtol(argv[1],(char **)0x0,10);
  iVar6 = (int)uVar7;
  __ptr = malloc((ulong)(uint)(iVar6 * iVar6) << 3);
  uVar9 = uVar7 & 0xffffffff;
  local_50 = (double)iVar6;
  local_40 = &local_50;
  local_48 = uVar7;
  local_38 = __ptr;
  __kmpc_fork_call(&DAT_00402008,4,main_polly_subfn,0,uVar7,1,&local_48);
  if (0 < (long)uVar7) {
    lVar4 = uVar9 * 8;
    uVar18 = uVar7 & 0xfffffffffffffffc;
    uVar10 = 0;
    pvVar14 = __ptr;
    lVar15 = (long)__ptr + 0x10;
    do {
      pdVar1 = (double *)((long)__ptr + lVar4 * uVar10);
      uVar20 = 0;
      lVar16 = (long)__ptr + 0x10;
      pvVar19 = __ptr;
      do {
        lVar12 = lVar4 * uVar20;
        pvVar2 = (void *)((long)__ptr + lVar12);
        pdVar3 = (double *)((long)__ptr + lVar12 + uVar10 * 8);
        if (uVar7 < 4) {
joined_r0x00401464:
          uVar13 = 0;
joined_r0x004013d6:
          uVar17 = uVar13;
          if ((uVar7 & 1) != 0) {
            dVar21 = *pdVar3 + pdVar1[uVar13];
            dVar22 = *(double *)((long)pvVar2 + uVar13 * 8);
            if (dVar21 <= dVar22) {
              dVar22 = dVar21;
            }
            *(double *)((long)pvVar2 + uVar13 * 8) = dVar22;
            uVar17 = uVar13 | 1;
          }
          uVar13 = uVar13 | 1;
          while (uVar7 != uVar13) {
            dVar21 = *pdVar3 + *(double *)((long)pvVar14 + uVar17 * 8);
            dVar22 = *(double *)((long)pvVar19 + uVar17 * 8);
            if (dVar21 <= dVar22) {
              dVar22 = dVar21;
            }
            dVar21 = *(double *)((long)pvVar19 + uVar17 * 8 + 8);
            *(double *)((long)pvVar19 + uVar17 * 8) = dVar22;
            dVar22 = *pdVar3 + *(double *)((long)pvVar14 + uVar17 * 8 + 8);
            if (dVar22 <= dVar21) {
              dVar21 = dVar22;
            }
            *(double *)((long)pvVar19 + uVar17 * 8 + 8) = dVar21;
            uVar17 = uVar17 + 2;
            uVar13 = uVar17;
          }
        }
        else {
          pdVar11 = (double *)(uVar7 * 8 + lVar12 + (long)__ptr);
          if (pdVar3 < pdVar11 && pvVar2 < (void *)(lVar12 + uVar10 * 8 + 1 + (long)__ptr))
          goto joined_r0x00401464;
          uVar13 = 0;
          if (pvVar2 < (void *)(lVar4 * uVar10 + uVar7 * 8 + (long)__ptr) && pdVar1 < pdVar11)
          goto joined_r0x004013d6;
          dVar22 = *pdVar3;
          uVar13 = 0;
          do {
            pdVar5 = (double *)(lVar15 + -0x10 + uVar13 * 8);
            pdVar11 = (double *)(lVar15 + uVar13 * 8);
            auVar23 = minpd(*(undefined (*) [16])(lVar16 + -0x10 + uVar13 * 8),
                            CONCAT88(pdVar5[1] + dVar22,*pdVar5 + dVar22));
            auVar24 = minpd(*(undefined (*) [16])(lVar16 + uVar13 * 8),
                            CONCAT88(pdVar11[1] + dVar22,*pdVar11 + dVar22));
            *(undefined (*) [16])(lVar16 + -0x10 + uVar13 * 8) = auVar23;
            *(undefined (*) [16])(lVar16 + uVar13 * 8) = auVar24;
            uVar13 = uVar13 + 4;
          } while (uVar18 != uVar13);
          uVar13 = uVar18;
          if (uVar7 != uVar18) goto joined_r0x004013d6;
        }
        uVar20 = uVar20 + 1;
        lVar16 = lVar16 + lVar4;
        pvVar19 = (void *)((long)pvVar19 + lVar4);
      } while (uVar20 != uVar7);
      uVar10 = uVar10 + 1;
      lVar15 = lVar15 + lVar4;
      pvVar14 = (void *)((long)pvVar14 + lVar4);
    } while (uVar10 != uVar7);
  }
  local_78 = (int)lVar8;
  if (local_78 == 1) {
    lVar8 = 0;
    uVar10 = 0;
    pvVar14 = __ptr;
    do {
      uVar18 = 0;
      do {
        fprintf(*(FILE **)((long)pvVar14 + uVar18 * 8),(char *)stderr,"%0.2lf ");
        iVar6 = (int)lVar8 + (int)uVar18;
        if ((iVar6 * -0x33333333 + 0x19999998U >> 2 | iVar6 * 0x40000000) < 0xccccccd) {
          fputc(10,stderr);
        }
        uVar18 = uVar18 + 1;
      } while (uVar9 != uVar18);
      uVar10 = uVar10 + 1;
      lVar8 = lVar8 + uVar7;
      pvVar14 = (void *)((long)pvVar14 + uVar9 * 8);
    } while (uVar10 != uVar9);
    fputc(10,stderr);
  }
  free(__ptr);
  return 0;
}


