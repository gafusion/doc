.. _tgyro_scenarios:

Scenarios and connection to energy sources
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

.. math::
   \begin{align}
   q_e^\mathrm{aux} = &~\mathtt{qohme}+\mathtt{qbeame}+\mathtt{qrfe}+\mathtt{qione} \\
   q_i^\mathrm{aux} = &~\mathtt{qcxi}+\mathtt{qbeami}+\mathtt{qrfi}+\mathtt{qioni} \\
   q_e^\mathrm{rad} = &~\mathtt{qbrem}+\mathtt{qsync}+\mathtt{qline} \\
   q_e^\mathrm{fus} = &~\mathtt{qfuse} \\
   q_i^\mathrm{fus} = &~\mathtt{qfusi} \\
   q_{ei}           = &~\mathtt{qei}
   \end{align}

.. math::
   \begin{align}
   q_e^\mathrm{TOT} = &~-q_{ei}+q_e^\mathrm{aux}+q_e^\mathrm{fus}-q_e^\mathrm{rad}\\
   q_i^\mathrm{TOT} = &~+q_{ei}+q_i^\mathrm{aux}+q_i^\mathrm{fus}
   \end{align}

:math:`\mathtt{LOC\_SCENARIO=1}` (static exchange)

.. math::
   \begin{align}
   q_e = &~ q_e^\mathrm{TOT}\\
   q_i = &~ q_i^\mathrm{TOT}
   \end{align}
  
:math:`\mathtt{LOC\_SCENARIO=2}` (dynamic exchange)

.. math::
   \begin{align}
   q_e = &~ \left( q_e^\mathrm{TOT} + q_{ei} \right) - q_{ei}' \\
   q_i = &~ \left( q_e^\mathrm{TOT} - q_{ei} \right) + q_{ei}' 
   \end{align}
  
:math:`\mathtt{LOC\_SCENARIO=3}` (reactor)

.. math::
   \begin{align}
   q_e = &~ q_e^\mathrm{aux} + (q_e^\mathrm{fus})' - (q_e^\mathrm{rad})' - q_{ei}' \\
   q_i = &~ q_i^\mathrm{aux} + (q_i^\mathrm{fus})' + q_{ei}'
   \end{align}
  
