    1  git fetch upstream
    2  git checkout -b eval_p2_1_g2 upstream/eval_p2_1_g2 branch 'eval_p2_1_g2' set up to track 'upstream/eval_p2_1_g2'
    3  git fetch upstream
    4  git checkout -b eval_p2_1_g2 upstream/eval_p2_1_g2
    5  git push -u origin eval_p2_1_g2
    6  history
    7  mv kepler/docs kepler/registros
    8  ls
    9  cd evaluation/
   10  ls
   11  mv kepler/docs kepler/registros
   12  ls
   13  mkdir kepler/plantillas
   14  git add .
   15  git commit -m "Fix Problema 1: estructura de directorios corregida"
   16  history
   17  mv kepler/sensores.log kepler/registros/
   18  mv kepler/ajustes.old kepler/ajustes.conf
   19  git add .
   20  git commit -m "Fix problema 2: archivos movidos y renombrados"
   21  history
   22  chmod 600 kepler/registros/sensores.log 
   23  ls -l
   24  cd kepler/
   25  ls -l
   26  cd registros/
   27  ls -l
   28  git add .
   29  cd ..
   30  git commit -m "Fix problema 3: permisos numericos 600 en sensores.log"
   31  chmod u+x kepler/runner.sh
   32  chmod o-w kepler/ajustes.conf 
   33  cd kepler/ 
   34  ls -l
   35  cd ..
   36  git add .
   37  git commit -m "Fix problema 4: permisos simbolicos corregidos"
   38  history
   39  chmod u+s kepler/runner.sh
   40  cd kepler/
   41  ls -l
   42  cd ..
   43  git add .
   44  git commit -m "Fix problema 5: SUID activado en runner.sh"
   45  history
   46  chmod +t /tmp/kepler_zone
   47  ls -la
   48  cd /tmp
   49  ls -l
   50  cd ..
   51  cd /workspaces/UNIX-02-SIN-A-Mar-Jul-2026/evaluation/
   52  ls
   53  mkdir -p /tmp/kepler_zone
   54  chmod +t /tmp/kepler_zone
   55  cd /tmp
   56  ls -l
   57  cd /workspaces/UNIX-02-SIN-A-Mar-Jul-2026/evaluation/
   58  chmod o+x/tmp/kepler_zone
   59  chmod o+x /tmp/kepler_zone
   60  ls -ld /tmp/kepler_zone/
   61  git add .
   62  git commit -m "Fix problema 6: sticky bit en /tmp/kepler_zone"
   63  history
   64  history > history.sh
