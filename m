Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 6D67F2BC85E
	for <lists+usrp-users@lfdr.de>; Sun, 22 Nov 2020 20:09:27 +0100 (CET)
Received: from [::1] (port=40290 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1kgujl-0006y9-NI; Sun, 22 Nov 2020 14:09:25 -0500
Received: from mail-oi1-f172.google.com ([209.85.167.172]:40750)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
 (Exim 4.93) (envelope-from <wade.fife@ettus.com>) id 1kgujh-0006ro-R1
 for usrp-users@lists.ettus.com; Sun, 22 Nov 2020 14:09:21 -0500
Received: by mail-oi1-f172.google.com with SMTP id a130so9113202oif.7
 for <usrp-users@lists.ettus.com>; Sun, 22 Nov 2020 11:09:01 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=ettus-com.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=r0ZKysi+jMFfrxV8zMToz0ir0BsDJCidyhjuCFHfgjg=;
 b=QSPjOe1RGZmyP/GcW50TLSOSPzyV2LNSwojra3pN8I6QjYX7ZK6Kj0Ry/hWQ5s+1GY
 KWK2mh+Eisz749R3i7OajlKMXy4NfaJRLTYPCDHOyAOURODLFpqeOSbq1sJi6zuvBAd3
 wYVqbvMT1s/AI3MLwqAHGctVdhAYsl17mVcYsbn/YKfNf8lP7dtQ8XGmk2K+LdBDPGyp
 /f8zCCS4GuvSni9e8IvBDnLB7qRJJSWy/+8+aJrfCHH13me486iBdGgWsrsvQ7avrnUT
 R2IAbx7ahkQcU9WEx5M8oOPgX7iWmW6f4ePmbJYb+kD+7d1hDJ60WDe5FcFauzXBqwfy
 eVzg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=r0ZKysi+jMFfrxV8zMToz0ir0BsDJCidyhjuCFHfgjg=;
 b=I+dIo1YWhyx3K8v40youaFWA8HCVzY8NWqMO+9ZhKkRQz5cgsC4rKBJDEOeck77nrn
 hbBH64Pl8inXawL7MZp/q/WzRaymyTjbKafr7jc2c+Hb5556wYpl++ctn+jGTVdMdKX6
 8onXPehZtgzdAKxTCsXN9VOxPTcSRvfXZfkBoWh3hDzhub/kKSWV1IpfyxRV+59Bor/q
 WejDGp58ZHUgPHy9u4L1RY9GWR7kpCTE3J5gQsR0j2APrUCYIkXJNOWN4D2r475yuKAI
 E8aZ7GiiSk0Suo1pDrNcljRSSgt/TjVdW7ZVnYJfJKHt4c3fqf5yzwwiLzbU/RgWLMZ7
 G/5g==
X-Gm-Message-State: AOAM530ryfKClSkopeKURBl1Yc1GlHKglilyzR6RWnV+WDALpzazVoJo
 j/Fbkrqi89A+L1RjE6NoFihmizcCXrR2/n/SM3pdKj5kklT3Oe/F
X-Google-Smtp-Source: ABdhPJzl+e9J2QEN44qp269poyzi6rabjaJMxkKd35p941Y4q+RJfp2GvjFrSR4MS5nI+Al2zV18M7F1/P42lZLWaiQ=
X-Received: by 2002:aca:5212:: with SMTP id g18mr11940481oib.145.1606072121050; 
 Sun, 22 Nov 2020 11:08:41 -0800 (PST)
MIME-Version: 1.0
References: <CAKHaR3kNBg2WXD2xe+LcQMh16-84d4sLFd_4rnVOZgcnM4j1RA@mail.gmail.com>
In-Reply-To: <CAKHaR3kNBg2WXD2xe+LcQMh16-84d4sLFd_4rnVOZgcnM4j1RA@mail.gmail.com>
Date: Sun, 22 Nov 2020 13:08:31 -0600
Message-ID: <CAFche=hu+owQn99PRnmff+tjPfuJXB2kg6yixDctBYaCHqffmg@mail.gmail.com>
To: Dario Pennisi <dario@iptronix.com>
Cc: usrp-users <usrp-users@lists.ettus.com>
Subject: Re: [USRP-users] ILA in UHD 4
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
Content-Type: multipart/mixed; boundary="===============1291133844455196659=="
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

--===============1291133844455196659==
Content-Type: multipart/alternative; boundary="000000000000425d7d05b4b6ce6c"

--000000000000425d7d05b4b6ce6c
Content-Type: text/plain; charset="UTF-8"

Hi Dario,

I'm not sure why you're getting that error. Your initial command doesn't
look right ("GUI=1 make n310_rfnoc_image_core") but maybe that's just a
typo. Did you perhaps make changes to the clocking or constraints in the
design? I wouldn't expect building with the ILA to cause this problem. You
might consider running "make cleanall" and rebuilding to make sure
everything is in a clean state and builds correctly. You could also try
your steps on an unmodified design to see if you get different behavior.

Here's the process I typically use to insert an ILA in UHD 4.0. Maybe you
can try it and see if it works for you? I start by marking for debug all
the registers I want to see in the ILA by adding (* mark_debug = "true" *)
to them in the Verilog code. To synthesize the design I would run the
following:

# Run rfnoc_image_builder to update the image Verilog, if needed
rfnoc_image_builder -y n310_rfnoc_image_core.yml --generate-only
# Run synthesis only, in the GUI (be sure to use the N310 target you want
if not N310_XG)
make N310_XG GUI=1 SYNTH=1

After synthesis finishes in the Vivado GUI, I use the debug wizard to
insert the ILA and add the signals I want to see (from the Vivado menu,
click Tools -> Setup Debug...). After I finish the steps in the wizard, I
run the following commands in the Tcl console of the GUI to finish place
and route with the ILA (you can just copy and paste these commands all at
once):

opt_design
place_design
route_design
write_debug_probes -force debug_01.ltx
write_bitstream -force debug_01.bit

After that finishes, I use uhd_image_loader to download the debug
bitstream. For example:

# Copy the correct device tree source file to the same location/name as the
# debug bitstream, if it's different from what's already loaded on the N310.
cd ./build/usrp_n310_fpga_XG.dts ./build-N310_XG/debug_01.dts
# Load the FPGA bitstream
uhd_image_loader --args type=n3xx --fpga-path ./build-N310_XG/debug_01.bit
# Run uhd_usrp_probe to make sure everything is up and running
uhd_usrp_probe

After that, you should be able to see the ILA in the Vivado Hardware
Manager. Load the probes file (debug_01.ltx) to see the debug signal names
you added to the ILA.

There are other flows that should also work.

Thanks,

Wade

On Sat, Nov 21, 2020 at 6:21 PM Dario Pennisi via USRP-users <
usrp-users@lists.ettus.com> wrote:

> Hi,
> i am trying to debug my block and to do so i ran
>
> GUI=1 make n310_rfnoc_image_core
>
> this brings up vivado and allows me to synthesize the design and setup
> ILA. when i try fitting and generating bitstream i get the following error:
>
> [DRC PDRC-29] MMCM_adv_ClkFrequency_clkin1: The calculated frequency
> value, 0.000 MHz, of the CLKIN1_PERIOD attribute on the MMCME2_ADV site
> MMCME2_ADV_X0Y0 (cell n3xx_clocking_i/misc_clock_gen_i/inst/mmcm_adv_inst)
> is outside the allowed range (10.000 - 933.000 MHz). Please change the
> CLKIN1_PERIOD attribute value in order to be within the allowed range for
> this device.
> [DRC PDRC-29] MMCM_adv_ClkFrequency_clkin1: The calculated frequency
> value, 0.000 MHz, of the CLKIN1_PERIOD attribute on the MMCME2_ADV site
> MMCME2_ADV_X1Y5 (cell
> u_ddr3_32bit/u_ddr3_32bit_mig/u_ddr3_infrastructure/gen_mmcm.mmcm_i) is
> outside the allowed range (10.000 - 933.000 MHz). Please change the
> CLKIN1_PERIOD attribute value in order to be within the allowed range for
> this device.
> [DRC PDRC-38] PLL_adv_ClkFrequency_clkin1: The calculated frequency value,
> 0.000 MHz, of the CLKIN1_PERIOD attribute on the PLLE2_ADV site
> PLLE2_ADV_X1Y5 (cell
> u_ddr3_32bit/u_ddr3_32bit_mig/u_ddr3_infrastructure/plle2_i) is outside the
> allowed range (19.000 - 933.000 MHz). Please change the CLKIN1_PERIOD
> attribute value in order to be within the allowed range for this device.
>
> strange enough i don't get these when running from console.
> any suggestions?
>
> Dario Pennisi
>
> _______________________________________________
> USRP-users mailing list
> USRP-users@lists.ettus.com
> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
>

--000000000000425d7d05b4b6ce6c
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Hi Dario,</div><div><br></div><div>I&#39;m not sure w=
hy you&#39;re getting that error. Your initial command doesn&#39;t look rig=
ht (&quot;GUI=3D1 make n310_rfnoc_image_core&quot;) but maybe that&#39;s ju=
st a typo. Did you perhaps make changes to the clocking or constraints in t=
he design? I wouldn&#39;t expect building with the ILA to cause this proble=
m. You might consider running &quot;make cleanall&quot; and rebuilding to m=
ake sure everything is in a clean state and builds correctly. You could als=
o try your steps on an unmodified design to see if you get different behavi=
or.<br></div><div><br></div><div>Here&#39;s the process I typically use to =
insert an ILA in UHD 4.0. Maybe you can try it and see if it works for you?=
 I start by marking for debug all the registers I want to see in the ILA by=
 adding (* mark_debug =3D &quot;true&quot; *) to them in the Verilog code. =
To synthesize the design I would run the following:<br></div><div><br></div=
><div># Run rfnoc_image_builder to update the image Verilog, if needed</div=
><div>rfnoc_image_builder -y n310_rfnoc_image_core.yml --generate-only</div=
><div></div><div># Run synthesis only, in the GUI (be sure to use the N310 =
target you want if not N310_XG)<br></div><div>make N310_XG GUI=3D1 SYNTH=3D=
1<br></div><div><br></div><div>After synthesis finishes in the Vivado GUI, =
I use the debug wizard to insert the ILA and add the signals I want to see =
(from the Vivado menu, click Tools -&gt; Setup Debug...). After I finish th=
e steps in the wizard, I run the following commands in the Tcl console of t=
he GUI to finish place and route with the ILA (you can just copy and paste =
these commands all at once):</div><div><br></div><div>opt_design<br>place_d=
esign<br>route_design<br>write_debug_probes -force debug_01.ltx<br>write_bi=
tstream -force debug_01.bit</div><div><br></div><div>After that finishes, I=
 use uhd_image_loader to download the debug bitstream.=20
For example:<br></div><div><br></div><div># Copy the correct device tree so=
urce file to the same location/name as the <br></div><div># debug bitstream=
, if it&#39;s different from what&#39;s already loaded on the N310.<br></di=
v><div>cd ./build/usrp_n310_fpga_XG.dts ./build-N310_XG/debug_01.dts</div><=
div># Load the FPGA bitstream<br></div><div>uhd_image_loader --args type=3D=
n3xx --fpga-path ./build-N310_XG/debug_01.bit</div><div># Run uhd_usrp_prob=
e to make sure everything is up and running<br></div><div>uhd_usrp_probe<br=
></div><div></div><div></div><div><br></div><div>After that, you should be =
able to see the ILA in the Vivado Hardware Manager. Load the probes file (d=
ebug_01.ltx) to see the debug signal names you added to the ILA.</div><div>=
<br></div><div>There are other flows that should also work.<br></div><div><=
br></div><div>Thanks,</div><div><br></div><div>Wade<br></div></div><br><div=
 class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Sat, Nov 21=
, 2020 at 6:21 PM Dario Pennisi via USRP-users &lt;<a href=3D"mailto:usrp-u=
sers@lists.ettus.com">usrp-users@lists.ettus.com</a>&gt; wrote:<br></div><b=
lockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-le=
ft:1px solid rgb(204,204,204);padding-left:1ex"><div dir=3D"ltr"><div>Hi,</=
div><div>i am trying to debug my block and to do so i ran <br></div><div><b=
r></div><div>GUI=3D1 make n310_rfnoc_image_core</div><div><br></div><div>th=
is brings up vivado and allows me to  synthesize the design and setup ILA. =
when i try fitting and generating bitstream i get the following error:</div=
><div><br></div><div>[DRC PDRC-29] MMCM_adv_ClkFrequency_clkin1: The calcul=
ated frequency value, 0.000 MHz, of the CLKIN1_PERIOD attribute on the MMCM=
E2_ADV site MMCME2_ADV_X0Y0 (cell n3xx_clocking_i/misc_clock_gen_i/inst/mmc=
m_adv_inst) is outside the allowed range (10.000 - 933.000 MHz). Please cha=
nge the CLKIN1_PERIOD attribute value in order to be within the allowed ran=
ge for this device.<br></div><div>[DRC PDRC-29] MMCM_adv_ClkFrequency_clkin=
1: The calculated frequency value, 0.000 MHz, of the CLKIN1_PERIOD attribut=
e on the MMCME2_ADV site MMCME2_ADV_X1Y5 (cell u_ddr3_32bit/u_ddr3_32bit_mi=
g/u_ddr3_infrastructure/gen_mmcm.mmcm_i) is outside the allowed range (10.0=
00 - 933.000 MHz). Please change the CLKIN1_PERIOD attribute value in order=
 to be within the allowed range for this device.<br>[DRC PDRC-38] PLL_adv_C=
lkFrequency_clkin1: The calculated frequency value, 0.000 MHz, of the CLKIN=
1_PERIOD attribute on the PLLE2_ADV site PLLE2_ADV_X1Y5 (cell u_ddr3_32bit/=
u_ddr3_32bit_mig/u_ddr3_infrastructure/plle2_i) is outside the allowed rang=
e (19.000 - 933.000 MHz). Please change the CLKIN1_PERIOD attribute value i=
n order to be within the allowed range for this device.<br></div><div><br><=
/div><div>strange enough i don&#39;t get these when running from console.</=
div><div>any suggestions?<br></div><div>=C2=A0<br><div dir=3D"ltr"><div dir=
=3D"ltr"><span style=3D"color:rgb(0,0,0);font-family:Calibri,sans-serif;fon=
t-size:13.3333px">Dario Pennisi</span><br style=3D"color:rgb(0,0,0);font-fa=
mily:Calibri,sans-serif;font-size:13.3333px"><span style=3D"color:rgb(0,0,0=
);font-family:Calibri,sans-serif;font-size:13.3333px"></span><br></div></di=
v></div></div>
_______________________________________________<br>
USRP-users mailing list<br>
<a href=3D"mailto:USRP-users@lists.ettus.com" target=3D"_blank">USRP-users@=
lists.ettus.com</a><br>
<a href=3D"http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.c=
om" rel=3D"noreferrer" target=3D"_blank">http://lists.ettus.com/mailman/lis=
tinfo/usrp-users_lists.ettus.com</a><br>
</blockquote></div>

--000000000000425d7d05b4b6ce6c--


--===============1291133844455196659==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============1291133844455196659==--

