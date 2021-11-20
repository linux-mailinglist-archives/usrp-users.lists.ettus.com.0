Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 9BA9E458040
	for <lists+usrp-users@lfdr.de>; Sat, 20 Nov 2021 21:03:39 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 96D7B38116D
	for <lists+usrp-users@lfdr.de>; Sat, 20 Nov 2021 15:03:38 -0500 (EST)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=ettus-com.20210112.gappssmtp.com header.i=@ettus-com.20210112.gappssmtp.com header.b="WanQsHak";
	dkim-atps=neutral
Received: from mail-ot1-f53.google.com (mail-ot1-f53.google.com [209.85.210.53])
	by mm2.emwd.com (Postfix) with ESMTPS id AA0EC380859
	for <usrp-users@lists.ettus.com>; Sat, 20 Nov 2021 15:02:48 -0500 (EST)
Received: by mail-ot1-f53.google.com with SMTP id 47-20020a9d0332000000b005798ac20d72so3771753otv.9
        for <usrp-users@lists.ettus.com>; Sat, 20 Nov 2021 12:02:48 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ettus-com.20210112.gappssmtp.com; s=20210112;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=jBYp9TsrF7a+P3zzNkO8oP4OUMo90vraClth+Ah8Gh4=;
        b=WanQsHakyr3B/7PFxHBdQ9ntIH1ld3x87j04WlrfXZSHuWyjzE8ZXOncRA/kLL1hsQ
         sJs3d2/wUzfCh+/+DAXtHaYU3zOmATOBKCIBPmphU0kB5zP0kK5UWJ8aQL9nBaKWQMF1
         UJbCnLQZPtOKM7R5Nr1auUUesc+PBYZ4UBP/3zj+cqM0o8ZwtGmrePldbA69K2sNGYr/
         pO3QbSfol/eSke2NVogNgNSR0gB52EcPPA2nMd1QDzfewYPbR3iR4L5p0pWNzWHdMY55
         MwXwjEMEHLQ1qzN+QpGz+NNnK55Vw4WjVU8yy73SdH1mDJCsp9UJlXxDJwf5PJRsvPqZ
         goEw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=jBYp9TsrF7a+P3zzNkO8oP4OUMo90vraClth+Ah8Gh4=;
        b=lVXh6sbbJfP4anra/5FnNwIe0zjgOeC3gO73G54uXz1tbx1f052ArVPygyZkMaSCE8
         PBgeu4aSXkF+K8pyZWR4sootyl+2dGHEdmJlUhS1D65QRoPktYPS9kIUXEWCBlk4fojn
         1qvEg540HomGDYz4kLxOktFiEnn4u8GQ3/qU4V9SuFOIwZQwMr5ZcX/dMELNu30ssf0n
         ucd9XOtV6sdsbPeln0f5Sl9i9t5zxqQtR+fz8fDysWgCELrictFKHlVrXn+IhiziHwAb
         ocr0ODLltMUuwXurl2QHLEQU11+RyrEGs6Hy4nAvw7PqPKYF5v4Nh3mVu6NjlOrdurMB
         wwAQ==
X-Gm-Message-State: AOAM530OTYC6mUQbykfHoKG67P31zH4VhYH/RdmPDhZdmVqb7DqLDgjn
	rhLjjGkCI0DiRCoCNsmNnKWuKxrjxXEl6DEkZ4IHeSlK67UJgv9Q
X-Google-Smtp-Source: ABdhPJyDenBK06EhjwEsVz/kKinA8wJWyZlv/HUVqos0aIYBu+dPj5tW/HFtQklb/LpHoRg+w/kAPAXP2SQH/zKNRIA=
X-Received: by 2002:a05:6830:2643:: with SMTP id f3mr13817443otu.187.1637438567921;
 Sat, 20 Nov 2021 12:02:47 -0800 (PST)
MIME-Version: 1.0
References: <d078107dcf9a451fa06aabce9066ae81@gtri.gatech.edu>
 <CAB__hTSsRx7v0Ob4YNsju08O=8J8ESE+P89KOApWiKifPNRQAw@mail.gmail.com>
 <CAFche=gNebkUovuoP0FFNbzpg1cS6CEJwXrrJtdAaHQF-vVHqA@mail.gmail.com> <9464a8d9b1f6458da01df55f89972acd@gtri.gatech.edu>
In-Reply-To: <9464a8d9b1f6458da01df55f89972acd@gtri.gatech.edu>
From: Wade Fife <wade.fife@ettus.com>
Date: Sat, 20 Nov 2021 14:02:32 -0600
Message-ID: <CAFche=hDQTP1=TkT0k0bG5Y+KSUpDHqM3BxW9JKn81jH_2Hp8Q@mail.gmail.com>
To: "Rich, Michael" <Michael.Rich@gtri.gatech.edu>
Message-ID-Hash: PY55P4F5OQ6MSCJANXYAPEZFRTOYAG4T
X-Message-ID-Hash: PY55P4F5OQ6MSCJANXYAPEZFRTOYAG4T
X-MailFrom: wade.fife@ettus.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: Rob Kossler <rkossler@nd.edu>, "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Testbench Compile Error
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/PY55P4F5OQ6MSCJANXYAPEZFRTOYAG4T/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============8556666465452425263=="

--===============8556666465452425263==
Content-Type: multipart/alternative; boundary="0000000000002ecaeb05d13de0b1"

--0000000000002ecaeb05d13de0b1
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

I agree, modifying gray2bin is not a great solution. The root of the
problem is really in some other file. I did a grep and found these files
set the default_nettype without changing it back. Some are testbenches,
others are from the fosphor block IP.

axis_pyld_ctxt_converter_tb.sv
ctrlport_endpoint_tb.sv
rfnoc_block_null_src_sink_tb.sv

f15_avg.v
f15_packetizer.v
f15_histo_mem.v
delay.v
f15_maxhold.v
f15_wf_agg.v
f15_logpwr.vrng.v
f15_rise_decay.v
f15_binmap.v
axi_logpwr.vfifo_srl.v
f15_core.v
f15_line_mem.v
f15_eoseq.v

Are you compiling any of those? I'll see if we can update those files so
they don't cause problems in the future. If you figure out which file it
is, let me know. I don't have any problems when I compile those files, but
I might have just lucked out with my compile order.

Modifying gray2bin should be a quick way to work around the issue. Any
chance you didn't enter it correctly? Make sure you use the backtick `
before default_nettype and that it's before the module declaration in
gray2bin.v. Like this:

`default_nettype wire

Another option is to modify the gray input of gray2bin.v to make the type
explicit, by changing "input [WIDTH-1:0] gray," to "input wire [WIDTH-1:0]
gray". But this might just move the problem to the next file.

https://github.com/EttusResearch/uhd/blob/master/fpga/usrp3/lib/control/gra=
y2bin.v#L13

Thanks,

Wade

On Fri, Nov 19, 2021 at 5:03 PM Rich, Michael <Michael.Rich@gtri.gatech.edu=
>
wrote:

> Thanks for the info on how the default-nettype is used. I usually work in
> VHDL and am not very familiar with Verilog.
>
>
>
> The testbench SystemVerilog files seem to be set up by default exactly as
> you=E2=80=99ve said, with =E2=80=9Cdefault_nettype none=E2=80=9D at the t=
op and =E2=80=9Cdefault_nettype
> wire=E2=80=9D at the end. This is the case for both of my testbenches, bu=
t only one
> of them is exhibiting this issue. That said, I tried changing the
> default-nettype at the top of the offending testbench to wire, but I get
> the same error. I even tried setting the default-nettype to wire directly
> in the gray2bin.v file (even though modifying the UHD code didn=E2=80=99t=
 seem like
> the best approach) and that had no effect either.
>
>
>
> Any other suggestions?
>
>
>
> Thank you,
>
>
>
> *Michael H. Rich*
>
> *Electronic Systems Laboratory*
>
> *Georgia Tech Research Institute=C2=AE*
>
> Phone: (404) 407-8358
>
> E-mail: michael.rich@gtri.gatech.edu
>
>
>
> *From:* Wade Fife <wade.fife@ettus.com>
> *Sent:* Friday, November 19, 2021 4:34 PM
> *To:* Rob Kossler <rkossler@nd.edu>
> *Cc:* Rich, Michael <Michael.Rich@gtri.gatech.edu>;
> usrp-users@lists.ettus.com
> *Subject:* Re: [USRP-users] Re: Testbench Compile Error
>
>
>
> This means there's a file that set default_nettype to none somewhere. Tha=
t
> setting will affect the files that get compiled after it, and in your cas=
e
> gray2bin.v doesn't like it.
>
>
>
> Like Rob said, you can add "`default_nettype wire" to the top of the file
> that's having issues and it should compile after that.
>
>
>
> Check any files you've added to make sure they don't leave the
> default_nettype as none. The general convention is to put "`default_netty=
pe
> none" at the top of a file but have "`default_nettype wire"at the end of =
a
> file to avoid messing up any other files in the compile.
>
>
>
> Wade
>
>
>
> On Fri, Nov 19, 2021 at 1:04 PM Rob Kossler <rkossler@nd.edu> wrote:
>
> Are you able to run the testbench for the provided "rfnoc-example"
> folder?  I notice that the gain testbench that is part of this example ha=
s
> the following as the last statement. Perhaps this is needed?
>
>
>
> `default_nettype wire
>
>
>
> On Fri, Nov 19, 2021 at 11:53 AM Rich, Michael via USRP-users <
> usrp-users@lists.ettus.com> wrote:
>
> I=E2=80=99m trying to run the testbench for a new module I created (UHD4)=
 and I=E2=80=99m
> getting the following error:
>
>
>
> INFO: [VRFC 10-2263] Analyzing Verilog file
> "/home/nvd/uhd/fpga/usrp3/lib/control/gray2bin.v" into library
> xil_defaultlib
>
> INFO: [VRFC 10-311] analyzing module gray2bin
>
> ERROR: [VRFC 10-1103] net type must be explicitly specified for 'gray'
> when default_nettype is none
> [/home/nvd/uhd/fpga/usrp3/lib/control/gray2bin.v:13]
>
> ERROR: [VRFC 10-3594] non-net port 'gray' cannot be of mode input
> [/home/nvd/uhd/fpga/usrp3/lib/control/gray2bin.v:13]
>
> ERROR: [VRFC 10-845] illegal operand for operator ^
> [/home/nvd/uhd/fpga/usrp3/lib/control/gray2bin.v:21]
>
> ERROR: [VRFC 10-2865] module 'gray2bin' ignored due to previous errors
> [/home/nvd/uhd/fpga/usrp3/lib/control/gray2bin.v:10]
>
>
>
> This file seems to compile without issue on my previous testbench, so I=
=E2=80=99m
> not sure what the difference would be here. If anyone has any insights in=
to
> what could be going on I=E2=80=99d greatly appreciate it.
>
>
>
> Thank you,
>
>
>
> *Michael H. Rich*
>
> *Electronic Systems Laboratory*
>
> *Georgia Tech Research Institute=C2=AE*
>
> Phone: (404) 407-8358
>
> E-mail: michael.rich@gtri.gatech.edu
>
>
>
> _______________________________________________
> USRP-users mailing list -- usrp-users@lists.ettus.com
> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>
> _______________________________________________
> USRP-users mailing list -- usrp-users@lists.ettus.com
> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>
>

--0000000000002ecaeb05d13de0b1
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>I agree, modifying gray2bin is not a great solution. =
The root of the problem is really in some other file. I did a grep and foun=
d these files set the default_nettype without changing it back. Some are te=
stbenches, others are from the fosphor block IP.</div><br><div><a href=3D"h=
ttp://axis_pyld_ctxt_converter_tb.sv">axis_pyld_ctxt_converter_tb.sv</a></d=
iv><div><a href=3D"http://ctrlport_endpoint_tb.sv">ctrlport_endpoint_tb.sv<=
/a></div><div><a href=3D"http://rfnoc_block_null_src_sink_tb.sv">rfnoc_bloc=
k_null_src_sink_tb.sv</a></div><div><br></div><div>f15_avg.v</div><div>f15_=
packetizer.v</div><div>f15_histo_mem.v</div><div>delay.v</div><div>f15_maxh=
old.v</div><div>f15_wf_agg.v</div><div>f15_logpwr.vrng.v</div><div>f15_rise=
_decay.v</div><div>f15_binmap.v</div><div>axi_logpwr.vfifo_srl.v</div><div>=
f15_core.v</div><div>f15_line_mem.v</div><div>f15_eoseq.v</div><br><div>Are=
 you compiling any of those? I&#39;ll see if we can update those files so t=
hey don&#39;t cause problems in the future. If you figure out which file it=
 is, let me know. I don&#39;t have any problems when I compile those files,=
 but I might have just lucked out with my compile order.<br></div><div><br>=
</div><div>Modifying gray2bin should be a quick way to work around the issu=
e. Any chance you didn&#39;t enter it correctly? Make sure you use the back=
tick ` before default_nettype and that it&#39;s before the module declarati=
on in gray2bin.v. Like this:<div><br></div><div>`default_nettype wire</div>=
<div><br></div>Another option is to modify the gray input of gray2bin.v to =
make the type explicit, by changing &quot;input [WIDTH-1:0] gray,&quot; to =
&quot;input wire [WIDTH-1:0] gray&quot;. But this might just move the probl=
em to the next file.<br><div><br></div><div><a href=3D"https://github.com/E=
ttusResearch/uhd/blob/master/fpga/usrp3/lib/control/gray2bin.v#L13">https:/=
/github.com/EttusResearch/uhd/blob/master/fpga/usrp3/lib/control/gray2bin.v=
#L13</a></div>

</div><div><br></div><div>Thanks,</div><div><br></div>Wade</div><br><div cl=
ass=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Fri, Nov 19, 2=
021 at 5:03 PM Rich, Michael &lt;<a href=3D"mailto:Michael.Rich@gtri.gatech=
.edu">Michael.Rich@gtri.gatech.edu</a>&gt; wrote:<br></div><blockquote clas=
s=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid r=
gb(204,204,204);padding-left:1ex"><div lang=3D"EN-US"><div class=3D"gmail-m=
_7363550068360930829WordSection1"><p class=3D"MsoNormal"><span style=3D"fon=
t-size:11pt;font-family:&quot;Calibri&quot;,sans-serif;color:rgb(31,73,125)=
">Thanks for the info on how the default-nettype is used. I usually work in=
 VHDL and am not very familiar with Verilog. <u></u><u></u></span></p><p cl=
ass=3D"MsoNormal"><span style=3D"font-size:11pt;font-family:&quot;Calibri&q=
uot;,sans-serif;color:rgb(31,73,125)"><u></u>=C2=A0<u></u></span></p><p cla=
ss=3D"MsoNormal"><span style=3D"font-size:11pt;font-family:&quot;Calibri&qu=
ot;,sans-serif;color:rgb(31,73,125)">The testbench SystemVerilog files seem=
 to be set up by default exactly as you=E2=80=99ve said, with =E2=80=9Cdefa=
ult_nettype none=E2=80=9D at the top and =E2=80=9Cdefault_nettype wire=E2=
=80=9D at the end. This is the case for both of my testbenches, but only on=
e of them is exhibiting this issue. That said, I tried changing the default=
-nettype at the top of the offending testbench to wire, but I get the same =
error. I even tried setting the default-nettype to wire directly in the gra=
y2bin.v file (even though modifying the UHD code didn=E2=80=99t seem like t=
he best approach) and that had no effect either. <u></u><u></u></span></p><=
p class=3D"MsoNormal"><span style=3D"font-size:11pt;font-family:&quot;Calib=
ri&quot;,sans-serif;color:rgb(31,73,125)"><u></u>=C2=A0<u></u></span></p><p=
 class=3D"MsoNormal"><span style=3D"font-size:11pt;font-family:&quot;Calibr=
i&quot;,sans-serif;color:rgb(31,73,125)">Any other suggestions?<u></u><u></=
u></span></p><p class=3D"MsoNormal"><span style=3D"font-size:11pt;font-fami=
ly:&quot;Calibri&quot;,sans-serif;color:rgb(31,73,125)"><u></u>=C2=A0<u></u=
></span></p><p class=3D"MsoNormal"><span style=3D"font-size:11pt;font-famil=
y:&quot;Calibri&quot;,sans-serif;color:rgb(31,73,125)">Thank you,<u></u><u>=
</u></span></p><p class=3D"MsoNormal"><span style=3D"font-size:11pt;font-fa=
mily:&quot;Calibri&quot;,sans-serif;color:rgb(31,73,125)"><u></u>=C2=A0<u><=
/u></span></p><p class=3D"MsoNormal"><b><span style=3D"font-family:&quot;Ca=
libri&quot;,sans-serif;color:black">Michael H. Rich</span></b><span style=
=3D"font-size:11pt;font-family:&quot;Calibri&quot;,sans-serif;color:rgb(31,=
73,125)"><u></u><u></u></span></p><p class=3D"MsoNormal"><i><span style=3D"=
font-size:10pt;font-family:&quot;Calibri&quot;,sans-serif;color:black">Elec=
tronic Systems Laboratory</span></i><span style=3D"font-size:11pt;font-fami=
ly:&quot;Calibri&quot;,sans-serif;color:rgb(31,73,125)"><u></u><u></u></spa=
n></p><p class=3D"MsoNormal"><b><i><span style=3D"font-size:10pt;font-famil=
y:&quot;Calibri&quot;,sans-serif;color:black">Georgia Tech Research Institu=
te=C2=AE</span></i></b><span style=3D"font-size:11pt;font-family:&quot;Cali=
bri&quot;,sans-serif;color:rgb(31,73,125)"><u></u><u></u></span></p><p clas=
s=3D"MsoNormal"><span style=3D"font-size:10pt;font-family:&quot;Calibri&quo=
t;,sans-serif;color:black">Phone: (404) 407-8358</span><span style=3D"font-=
size:11pt;font-family:&quot;Calibri&quot;,sans-serif;color:rgb(31,73,125)">=
<u></u><u></u></span></p><p class=3D"MsoNormal"><span style=3D"font-size:10=
pt;font-family:&quot;Calibri&quot;,sans-serif;color:black">E-mail:</span><s=
pan style=3D"font-size:10pt;font-family:&quot;Calibri&quot;,sans-serif;colo=
r:rgb(31,73,125)"> <a href=3D"mailto:michael.rich@gtri.gatech.edu" target=
=3D"_blank">michael.rich@gtri.gatech.edu</a></span><span style=3D"font-size=
:11pt;font-family:&quot;Calibri&quot;,sans-serif;color:rgb(31,73,125)"><u><=
/u><u></u></span></p><p class=3D"MsoNormal"><span style=3D"font-size:11pt;f=
ont-family:&quot;Calibri&quot;,sans-serif;color:rgb(31,73,125)"><u></u>=C2=
=A0<u></u></span></p><p class=3D"MsoNormal"><b><span style=3D"font-size:11p=
t;font-family:&quot;Calibri&quot;,sans-serif">From:</span></b><span style=
=3D"font-size:11pt;font-family:&quot;Calibri&quot;,sans-serif"> Wade Fife &=
lt;<a href=3D"mailto:wade.fife@ettus.com" target=3D"_blank">wade.fife@ettus=
.com</a>&gt; <br><b>Sent:</b> Friday, November 19, 2021 4:34 PM<br><b>To:</=
b> Rob Kossler &lt;<a href=3D"mailto:rkossler@nd.edu" target=3D"_blank">rko=
ssler@nd.edu</a>&gt;<br><b>Cc:</b> Rich, Michael &lt;<a href=3D"mailto:Mich=
ael.Rich@gtri.gatech.edu" target=3D"_blank">Michael.Rich@gtri.gatech.edu</a=
>&gt;; <a href=3D"mailto:usrp-users@lists.ettus.com" target=3D"_blank">usrp=
-users@lists.ettus.com</a><br><b>Subject:</b> Re: [USRP-users] Re: Testbenc=
h Compile Error<u></u><u></u></span></p><p class=3D"MsoNormal"><u></u>=C2=
=A0<u></u></p><div><div><p class=3D"MsoNormal">This means there&#39;s a fil=
e that set default_nettype to none somewhere. That setting will affect the =
files that get compiled after it, and in your case gray2bin.v doesn&#39;t l=
ike it.<u></u><u></u></p></div><div><p class=3D"MsoNormal"><u></u>=C2=A0<u>=
</u></p></div><div><p class=3D"MsoNormal">Like Rob said, you can add &quot;=
`default_nettype wire&quot; to the top of the file that&#39;s having issues=
 and it should compile after that.<u></u><u></u></p></div><div><p class=3D"=
MsoNormal"><u></u>=C2=A0<u></u></p></div><div><p class=3D"MsoNormal">Check =
any files you&#39;ve added to make sure they don&#39;t leave the default_ne=
ttype as none. The general convention is to put &quot;`default_nettype none=
&quot; at the top of a file but have &quot;`default_nettype wire&quot;at th=
e end of a file to avoid messing up any other files in the compile.<u></u><=
u></u></p></div><div><p class=3D"MsoNormal"><u></u>=C2=A0<u></u></p></div><=
div><p class=3D"MsoNormal">Wade<u></u><u></u></p></div></div><p class=3D"Ms=
oNormal"><u></u>=C2=A0<u></u></p><div><div><p class=3D"MsoNormal">On Fri, N=
ov 19, 2021 at 1:04 PM Rob Kossler &lt;<a href=3D"mailto:rkossler@nd.edu" t=
arget=3D"_blank">rkossler@nd.edu</a>&gt; wrote:<u></u><u></u></p></div><blo=
ckquote style=3D"border-color:currentcolor currentcolor currentcolor rgb(20=
4,204,204);border-style:none none none solid;border-width:medium medium med=
ium 1pt;padding:0in 0in 0in 6pt;margin-left:4.8pt;margin-right:0in"><div><p=
 class=3D"MsoNormal">Are you able to run the testbench for the provided &qu=
ot;rfnoc-example&quot; folder?=C2=A0 I notice that the gain testbench that =
is part of this example has the following as the last statement. Perhaps th=
is is needed?<u></u><u></u></p><div><p class=3D"MsoNormal"><u></u>=C2=A0<u>=
</u></p></div><div><p class=3D"MsoNormal">`default_nettype wire<u></u><u></=
u></p></div></div><p class=3D"MsoNormal"><u></u>=C2=A0<u></u></p><div><div>=
<p class=3D"MsoNormal">On Fri, Nov 19, 2021 at 11:53 AM Rich, Michael via U=
SRP-users &lt;<a href=3D"mailto:usrp-users@lists.ettus.com" target=3D"_blan=
k">usrp-users@lists.ettus.com</a>&gt; wrote:<u></u><u></u></p></div><blockq=
uote style=3D"border-color:currentcolor currentcolor currentcolor rgb(204,2=
04,204);border-style:none none none solid;border-width:medium medium medium=
 1pt;padding:0in 0in 0in 6pt;margin-left:4.8pt;margin-right:0in"><div><div>=
<p class=3D"MsoNormal">I=E2=80=99m trying to run the testbench for a new mo=
dule I created (UHD4) and I=E2=80=99m getting the following error:<u></u><u=
></u></p><p class=3D"MsoNormal">=C2=A0<u></u><u></u></p><p class=3D"MsoNorm=
al"><span style=3D"font-family:&quot;Courier New&quot;">INFO: [VRFC 10-2263=
] Analyzing Verilog file &quot;/home/nvd/uhd/fpga/usrp3/lib/control/gray2bi=
n.v&quot; into library xil_defaultlib</span><u></u><u></u></p><p class=3D"M=
soNormal"><span style=3D"font-family:&quot;Courier New&quot;">INFO: [VRFC 1=
0-311] analyzing module gray2bin</span><u></u><u></u></p><p class=3D"MsoNor=
mal"><span style=3D"font-family:&quot;Courier New&quot;">ERROR: [VRFC 10-11=
03] net type must be explicitly specified for &#39;gray&#39; when default_n=
ettype is none [/home/nvd/uhd/fpga/usrp3/lib/control/gray2bin.v:13]</span><=
u></u><u></u></p><p class=3D"MsoNormal"><span style=3D"font-family:&quot;Co=
urier New&quot;">ERROR: [VRFC 10-3594] non-net port &#39;gray&#39; cannot b=
e of mode input [/home/nvd/uhd/fpga/usrp3/lib/control/gray2bin.v:13]</span>=
<u></u><u></u></p><p class=3D"MsoNormal"><span style=3D"font-family:&quot;C=
ourier New&quot;">ERROR: [VRFC 10-845] illegal operand for operator ^ [/hom=
e/nvd/uhd/fpga/usrp3/lib/control/gray2bin.v:21]</span><u></u><u></u></p><p =
class=3D"MsoNormal"><span style=3D"font-family:&quot;Courier New&quot;">ERR=
OR: [VRFC 10-2865] module &#39;gray2bin&#39; ignored due to previous errors=
 [/home/nvd/uhd/fpga/usrp3/lib/control/gray2bin.v:10]</span><u></u><u></u><=
/p><p class=3D"MsoNormal">=C2=A0<u></u><u></u></p><p class=3D"MsoNormal">Th=
is file seems to compile without issue on my previous testbench, so I=E2=80=
=99m not sure what the difference would be here. If anyone has any insights=
 into what could be going on I=E2=80=99d greatly appreciate it.<u></u><u></=
u></p><p class=3D"MsoNormal">=C2=A0<u></u><u></u></p><p class=3D"MsoNormal"=
>Thank you,<u></u><u></u></p><p class=3D"MsoNormal"><b><span style=3D"color=
:black">=C2=A0</span></b><u></u><u></u></p><p class=3D"MsoNormal"><b><span =
style=3D"color:black">Michael H. Rich</span></b><u></u><u></u></p><p class=
=3D"MsoNormal"><i><span style=3D"font-size:10pt;color:black">Electronic Sys=
tems Laboratory</span></i><u></u><u></u></p><p class=3D"MsoNormal"><b><i><s=
pan style=3D"font-size:10pt;color:black">Georgia Tech Research Institute=C2=
=AE</span></i></b><u></u><u></u></p><p class=3D"MsoNormal"><span style=3D"f=
ont-size:10pt;color:black">Phone: (404) 407-8358</span><u></u><u></u></p><p=
 class=3D"MsoNormal"><span style=3D"font-size:10pt;color:black">E-mail:</sp=
an><span style=3D"font-size:10pt;color:rgb(31,73,125)"> <a href=3D"mailto:m=
ichael.rich@gtri.gatech.edu" target=3D"_blank">michael.rich@gtri.gatech.edu=
</a></span><u></u><u></u></p><p class=3D"MsoNormal">=C2=A0<u></u><u></u></p=
></div></div><p class=3D"MsoNormal">_______________________________________=
________<br>USRP-users mailing list -- <a href=3D"mailto:usrp-users@lists.e=
ttus.com" target=3D"_blank">usrp-users@lists.ettus.com</a><br>To unsubscrib=
e send an email to <a href=3D"mailto:usrp-users-leave@lists.ettus.com" targ=
et=3D"_blank">usrp-users-leave@lists.ettus.com</a><u></u><u></u></p></block=
quote></div><p class=3D"MsoNormal">________________________________________=
_______<br>USRP-users mailing list -- <a href=3D"mailto:usrp-users@lists.et=
tus.com" target=3D"_blank">usrp-users@lists.ettus.com</a><br>To unsubscribe=
 send an email to <a href=3D"mailto:usrp-users-leave@lists.ettus.com" targe=
t=3D"_blank">usrp-users-leave@lists.ettus.com</a><u></u><u></u></p></blockq=
uote></div></div></div></blockquote></div>

--0000000000002ecaeb05d13de0b1--

--===============8556666465452425263==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============8556666465452425263==--
