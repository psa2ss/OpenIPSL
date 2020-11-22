within OpenIPSL.Electrical.Controls.PSSE.TG.BaseClasses.GGOV1;
block RSELECT "Selects the feedback signal used in GGOV1 and GGOV1DU frequency control systems"
  // extends Modelica.Blocks.Icons.Block;
  parameter Integer Rselect;
  Modelica.Blocks.Interfaces.RealOutput y annotation (Placement(transformation(
          extent={{100,-12},{120,8}})));
  Modelica.Blocks.Interfaces.RealInput Pelect annotation (Placement(
        transformation(extent={{-140,36},{-100,76}}), iconTransformation(extent
          ={{-140,36},{-100,76}})));
  Modelica.Blocks.Interfaces.RealInput ValveStroke annotation (Placement(
        transformation(extent={{4,-80},{44,-40}}), iconTransformation(
        extent={{-20,-20},{20,20}},
        rotation=90,
        origin={8,-120})));
  Modelica.Blocks.Interfaces.RealInput GovernorOutput annotation (Placement(
        transformation(extent={{6,-136},{46,-96}}), iconTransformation(
        extent={{-20,-20},{20,20}},
        rotation=90,
        origin={84,-120})));
equation
  y = if Rselect == 1 then Pelect elseif Rselect == (-1) then ValveStroke
     elseif Rselect == (-2) then GovernorOutput else 0;
  annotation (
    Icon(coordinateSystem(
        preserveAspectRatio=true,
        extent={{-100,-100},{100,100}}), graphics={Text(
          extent={{-51,31},{51,-31}},
          lineColor={0,0,255},
          textString="Rselect
 1 -  electrical power
-1 - valve stroke
-2 - governor output
 0 - isochronous",
          horizontalAlignment=TextAlignment.Left,
          origin={-11,-1},
          rotation=270),Rectangle(extent={{-100,100},{100,-100}}, lineColor={0,
          0,255})}),
    Documentation(info="<html>
<p>The following documentation is adapted from 
<a href=\"modelica://OpenIPSL.UsersGuide.References\">[PSSE-Models], chapter 7.12</a>:</p>
<blockquote>
<p>
This model allows the user to determine which feedback signal will be used in the droop control for GGOV1 and GGOV1DU models. 
Note that the permanent droop <code>r<\code> should also be set to 0 if the isochronous mode is chosen (0 is selected).
</p>
</blockquote>
</html>", revisions="<html>
<table cellspacing=\"1\" cellpadding=\"1\" border=\"1\"><tr>
<td><p>Reference</p></td>
<td><p>PSS&reg;E Models</p></td>
</tr>
<tr>
<td><p>Last update</p></td>
<td><p>2020-11-22</p></td>
</tr>
<tr>
<td><p>Author</p></td>
<td><p><a href=\"https://github.com/maguilerac\">@maguilerac</a></p></td>
<td><p><a href=\"https://github.com/marcelofcastro\">@marcelofcastro</a></p></td>
</tr>
<tr>
<td><p>Contact</p></td>
<td><p>see <a href=\"modelica://OpenIPSL.UsersGuide.Contact\">UsersGuide.Contact</a></p></td>
</tr>
</table>
</html>"),
    Diagram(coordinateSystem(preserveAspectRatio=true, extent={{-100,-100},{100,
            100}}), graphics={Rectangle(extent={{-100,100},{100,-100}},
          lineColor={0,0,255})}));
end RSELECT;
