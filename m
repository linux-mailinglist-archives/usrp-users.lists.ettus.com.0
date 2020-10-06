Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id C84C32850DD
	for <lists+usrp-users@lfdr.de>; Tue,  6 Oct 2020 19:34:59 +0200 (CEST)
Received: from [::1] (port=53908 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1kPqrX-0001et-GW; Tue, 06 Oct 2020 13:34:55 -0400
Received: from mail-oo1-f48.google.com ([209.85.161.48]:36237)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
 (Exim 4.93) (envelope-from <wade.fife@ettus.com>) id 1kPqrU-0001XB-Hk
 for usrp-users@lists.ettus.com; Tue, 06 Oct 2020 13:34:52 -0400
Received: by mail-oo1-f48.google.com with SMTP id z1so3393942ooj.3
 for <usrp-users@lists.ettus.com>; Tue, 06 Oct 2020 10:34:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=ettus-com.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=ivV0MfhSslG5wfYlTHuwY/pm+/6ABNBYmv0BIySAnX4=;
 b=qZL/2GN3sSYAZ66KlsZ15hDHdYEiOOd1TDTW+0UrYiVzUgWThRaeKx0AOe7jLypF8z
 U51jL51nqwBKmvQIV59wtj1apwiVU2xuZpsH55X/WjegufKiMd7yLQIwHExLCler2rcM
 +ySeOjNtbcDBPH0Doi5sp0IK9HKsbzjlRNGP72RqYu3svrLkAc7u7LK17SYA572iaPyq
 4+CmWDaA4YWABy0Em8uqKS7+ne4BHAqp5qJB0G7kTRbfA3tD7Z9KgnZRAQpojr6XrJGD
 MHpSFC+tUYu9UL2bqvf1NrIyitYcd2ClbNO8Aj+9CHGjNkqmjrqNCuvufBWuwF9VKpOr
 yLAA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=ivV0MfhSslG5wfYlTHuwY/pm+/6ABNBYmv0BIySAnX4=;
 b=U68stnfGaAiGOKSBVE68I6aE9taIDzFuz6TKXsi8HlIihz2WiToRFtYaK+9+kJFkOA
 INxeFUdkvV1lZGLjVH76s6mo6VhpbFkHR4SJdDVK/742P1CsZtJ91/x+3yhTUnzKzOwo
 tUwEtY26AmzNiDTYSVXqNOkH2fQALKSXEZoP5h+xnDDuMLpvhN2K8wFgro+RJfAaBsZj
 chwP5RvCY9REiQ9vB6J1Ml+r/MACpDY9ZR6QlWXwUpJJcxQVqpv33Z7WrK8RhEJfT0ca
 6mXdrpW1mtpSEFMvqaAioowfp0f+xKsxAbnZT3NB7VKt8YihF5R/AU6WPPLZhXAym6aI
 J5Jw==
X-Gm-Message-State: AOAM533CEhsRixQVjS331N5uUBcKtOCRQfSYBC7HVl3+s0M9U2BOhjU/
 2itXeI/gtS+c6o3u4JmU2poTlzdFUC9qGiKZIY7MbCbFoyGTevjg
X-Google-Smtp-Source: ABdhPJyi3LNkGwS9B+3WBL1ic2BJMxaWyR2/wOfTupkTAcEkxbLlnS5qESV3PoRhJK/gczMY2+N3czImoXoAX+S2GTU=
X-Received: by 2002:a4a:9e87:: with SMTP id u7mr498090ook.15.1602005651798;
 Tue, 06 Oct 2020 10:34:11 -0700 (PDT)
MIME-Version: 1.0
References: <CANzM3hxtiW0TL5ULrUhhKMfzYrr0z171M8RgtQ7E5-E6pwTb7w@mail.gmail.com>
In-Reply-To: <CANzM3hxtiW0TL5ULrUhhKMfzYrr0z171M8RgtQ7E5-E6pwTb7w@mail.gmail.com>
Date: Tue, 6 Oct 2020 12:34:01 -0500
Message-ID: <CAFche=gQKn2hXZdjj4ncMuo+tTgUH524Nj4rZgsGncS8zCRKPQ@mail.gmail.com>
To: Arash Jafari <arash.jafari.telecom@gmail.com>
Cc: usrp-users <usrp-users@lists.ettus.com>
Subject: Re: [USRP-users] X310 FPGA build problem
X-BeenThere: usrp-users@lists.ettus.com
X-Mailman-Version: 2.1.33
Precedence: list
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
List-Unsubscribe: <http://lists.ettus.com/mailman/options/usrp-users_lists.ettus.com>, 
 <mailto:usrp-users-request@lists.ettus.com?subject=unsubscribe>
List-Archive: <http://lists.ettus.com/pipermail/usrp-users_lists.ettus.com/>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Subscribe: <http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com>, 
 <mailto:usrp-users-request@lists.ettus.com?subject=subscribe>
From: Wade Fife via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Wade Fife <wade.fife@ettus.com>
Content-Type: multipart/mixed; boundary="===============0782026948665316605=="
Errors-To: usrp-users-bounces@lists.ettus.com
Sender: "USRP-users" <usrp-users-bounces@lists.ettus.com>
X-AntiAbuse: This header was added to track abuse, please include it with any abuse report
X-AntiAbuse: Primary Hostname - mm2.emwd.com
X-AntiAbuse: Original Domain - lfdr.de
X-AntiAbuse: Originator/Caller UID/GID - [47 12] / [47 12]
X-AntiAbuse: Sender Address Domain - lists.ettus.com
X-Get-Message-Sender-Via: mm2.emwd.com: acl_c_authenticated_local_user: mailman/mailman
X-Authenticated-Sender: mm2.emwd.com: mailman@lists.ettus.com
X-Source: 
X-Source-Args: 
X-Source-Dir: 

--===============0782026948665316605==
Content-Type: multipart/alternative; boundary="000000000000cdd49d05b10401c5"

--000000000000cdd49d05b10401c5
Content-Type: text/plain; charset="UTF-8"

Arash,

You might consider following the build process in the documentation after
making your changes rather than trying to manage your own project. When you
run "make X310_HG" it builds the FPGA in what Xilinx calls "non-project
mode". That's the normal process we use. In your case, you created your own
project from the results, effectively switching to "project mode".

Looking at your error, the source of your problem is that it can't find the
file LvFpga_Chinch_Interface.vh. According to the error message, the file
x300.v is here:

/home/scoe-adm/Downloads/uhd-master/fpga/usrp3/top/x300/build-X310_HG/X310.srcs/sources_1/imports/usrp3/top/x300/x300.v

And it's trying to include "../../lib/io_port2/LvFpga_Chinch_Interface.vh",
which, using its relative path, it expects to find here:

/home/scoe-adm/Downloads/uhd-master/fpga/usrp3/top/x300/build-X310_HG/X310.srcs/sources_1/imports/usrp3/lib/io_port2/LvFpga_Chinch_Interface.vh


I'm guessing that file is missing for you? It looks like you did something
to import a copy of the code into your project instead of using the code in
the original location, and perhaps some of the files were missed in that
process. When I do a "save as" in Vivado to create a project, it leaves the
files in their current location.

Wade


On Tue, Oct 6, 2020 at 2:00 AM Arash Jafari via USRP-users <
usrp-users@lists.ettus.com> wrote:

> Dear All,
>
> I followed the build instruction for generation 3 on the website.
> All requirement and dependencies are fulfilled as well as Xilinx Vivado
> 2019.1.
> I would like to save the project in Vivado for future customization,
> therefore I ran "*make X310_HG GUI=1*".
> The makefile launch Vivado successfully, after configuration is done when
> I save the project using *save as *option in the Vivado. as I press
> generate bitstream in the Vivado, It automatically starts from synthesis
> phase, and it gives me the following errors in the synthesis phase:
> My UHD version is currently 3.14 LTS, I tried the FPGA source from
> different branches (e.g uhd3.14 LTS and uhd3.15 LTS) always results in the
> same errors.
>
>
>
> *[Synth 8-1766] cannot open include file
> ../../lib/io_port2/LvFpga_Chinch_Interface.vh
> ["/home/scoe-adm/Downloads/uhd-master/fpga/usrp3/top/x300/build-X310_HG/X310.srcs/sources_1/imports/usrp3/top/x300/x300.v":18]*
>
>
> *[Synth 8-2715] syntax error near ;
> ["/home/scoe-adm/Downloads/uhd-master/fpga/usrp3/top/x300/build-X310_HG/X310.srcs/sources_1/imports/usrp3/top/x300/x300.v":656]*
>
>
> *[Synth 8-1031] DMA_STREAM_WIDTH is not declared
> ["/home/scoe-adm/Downloads/uhd-master/fpga/usrp3/top/x300/build-X310_HG/X310.srcs/sources_1/imports/usrp3/top/x300/x300.v":664]*
>
> *[Common 17-69] Command failed: Synthesis failed - please see the console
> or run log file for details*
>
> I'm absolutely blocked, any help is highly appreciated.
>
> Kind Regards,
>
> -----------------------------------------
> Dipl.-Ing. Arash Jafari
>
> Phone: +43 650 844 3617
> E-mail: arash.jafari.telecom@gmail.com
> _______________________________________________
> USRP-users mailing list
> USRP-users@lists.ettus.com
> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
>

--000000000000cdd49d05b10401c5
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Arash,</div><div><br></div><div>You might consider fo=
llowing the build process in the documentation after making your changes ra=
ther than trying to manage your own project.=20
When you run &quot;make X310_HG&quot; it builds the FPGA in what Xilinx cal=
ls &quot;non-project mode&quot;. That&#39;s the normal process we use. In y=
our case, you created your own project from the results, effectively switch=
ing to &quot;project mode&quot;.<br></div><div></div><div><br></div>Looking=
 at your error, the source of your problem is that it can&#39;t find the fi=
le LvFpga_Chinch_Interface.vh. According to the error message, the file x30=
0.v is here:<br><div><br></div><div>/home/scoe-adm/Downloads/uhd-master/fpg=
a/usrp3/top/x300/build-X310_HG/X310.srcs/sources_1/imports/usrp3/top/x300/x=
300.v</div><div><br></div><div>And it&#39;s trying to include &quot;../../l=
ib/io_port2/LvFpga_Chinch_Interface.vh&quot;, which, using its relative pat=
h, it expects to find here:</div><div><br></div><div>
/home/scoe-adm/Downloads/uhd-master/fpga/usrp3/top/x300/build-X310_HG/X310.=
srcs/sources_1/imports/usrp3/lib/io_port2/LvFpga_Chinch_Interface.vh <br></=
div><div><br></div><div>I&#39;m guessing that file is missing for you? It l=
ooks like you did something to import a copy of the code into your project =
instead of using the code in the original location, and perhaps some of the=
 files were missed in that process. When I do a &quot;save as&quot; in Viva=
do to create a project, it leaves the files in their current location.<br><=
/div><div><br></div><div>Wade<br></div><div><br></div></div><br><div class=
=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Tue, Oct 6, 2020 =
at 2:00 AM Arash Jafari via USRP-users &lt;<a href=3D"mailto:usrp-users@lis=
ts.ettus.com">usrp-users@lists.ettus.com</a>&gt; wrote:<br></div><blockquot=
e class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px s=
olid rgb(204,204,204);padding-left:1ex"><div dir=3D"ltr">Dear All,<div><br>=
</div><div>I followed the build instruction for generation 3 on the website=
.</div><div>All requirement and dependencies are fulfilled as well as Xilin=
x Vivado 2019.1.</div><div>I would like to save the project in Vivado for f=
uture customization, therefore I ran &quot;<b>make X310_HG GUI=3D1</b>&quot=
;.</div><div>The makefile launch Vivado successfully, after configuration i=
s done when I save the project using <b>save as=C2=A0</b>option in the Viva=
do. as I press generate bitstream in the Vivado, It automatically=C2=A0star=
ts from synthesis phase, and it gives me the following errors in the synthe=
sis phase:</div><div>My UHD version is currently 3.14 LTS, I tried the FPGA=
 source from different branches (e.g uhd3.14 LTS and uhd3.15 LTS) always re=
sults in the same errors.</div><div><i><br></i></div><div><i><br></i></div>=
<div><i>[Synth 8-1766] cannot open include file ../../lib/io_port2/LvFpga_C=
hinch_Interface.vh [&quot;/home/scoe-adm/Downloads/uhd-master/fpga/usrp3/to=
p/x300/build-X310_HG/X310.srcs/sources_1/imports/usrp3/top/x300/x300.v&quot=
;:18]<br></i></div><div><i><br></i></div><div><i>[Synth 8-2715] syntax erro=
r near ; [&quot;/home/scoe-adm/Downloads/uhd-master/fpga/usrp3/top/x300/bui=
ld-X310_HG/X310.srcs/sources_1/imports/usrp3/top/x300/x300.v&quot;:656]<br>=
</i></div><div><i><br></i></div><div><div><i>[Synth 8-1031] DMA_STREAM_WIDT=
H is not declared [&quot;/home/scoe-adm/Downloads/uhd-master/fpga/usrp3/top=
/x300/build-X310_HG/X310.srcs/sources_1/imports/usrp3/top/x300/x300.v&quot;=
:664]<br></i></div><div><i><br></i></div><div><i>[Common 17-69] Command fai=
led: Synthesis failed - please see the console or run log file for details<=
/i><br></div><div><br></div><div>I&#39;m absolutely blocked, any help is hi=
ghly appreciated.</div><div><br></div><div>Kind Regards,</div><div><br></di=
v>-----------------------------------------<br><div dir=3D"ltr"><div dir=3D=
"ltr"><div><div dir=3D"ltr"><div dir=3D"ltr"><div dir=3D"ltr"><span style=
=3D"color:rgb(0,0,0);font-family:monospace,monospace">Dipl.-Ing. Arash Jafa=
ri</span><font size=3D"2" face=3D"monospace, monospace" color=3D"#000000">=
=C2=A0</font><div><br></div><font size=3D"2" color=3D"#000000"><span style=
=3D"font-family:monospace">Phone: +43 650 844 3617</span><br style=3D"font-=
family:monospace" clear=3D"none"></font><div><span style=3D"font-family:mon=
ospace"><font size=3D"2" color=3D"#000000">E-mail: <a href=3D"mailto:arash.=
jafari.telecom@gmail.com" target=3D"_blank">arash.jafari.telecom@gmail.com<=
/a></font></span></div></div></div></div></div></div></div></div></div>
_______________________________________________<br>
USRP-users mailing list<br>
<a href=3D"mailto:USRP-users@lists.ettus.com" target=3D"_blank">USRP-users@=
lists.ettus.com</a><br>
<a href=3D"http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.c=
om" rel=3D"noreferrer" target=3D"_blank">http://lists.ettus.com/mailman/lis=
tinfo/usrp-users_lists.ettus.com</a><br>
</blockquote></div>

--000000000000cdd49d05b10401c5--


--===============0782026948665316605==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============0782026948665316605==--

