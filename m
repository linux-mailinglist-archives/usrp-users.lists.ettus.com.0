Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 859691A25A2
	for <lists+usrp-users@lfdr.de>; Wed,  8 Apr 2020 17:40:07 +0200 (CEST)
Received: from [::1] (port=46732 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1jMCo7-0001EC-BE; Wed, 08 Apr 2020 11:40:03 -0400
Received: from mail-oi1-f169.google.com ([209.85.167.169]:44306)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
 (Exim 4.93) (envelope-from <rkossler@nd.edu>) id 1jMCo3-000193-VM
 for usrp-users@lists.ettus.com; Wed, 08 Apr 2020 11:40:00 -0400
Received: by mail-oi1-f169.google.com with SMTP id r21so314912oij.11
 for <usrp-users@lists.ettus.com>; Wed, 08 Apr 2020 08:39:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nd.edu; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=SYge2b+gU8tC/eWp9lxL/Hlv9CFHMKfwORgwa4LrmMU=;
 b=kmX1LwrGIHTP70GWBvul4hMAI/TWtvrH9eElmJ9ju1pHmZzKOZs2QaFmpl/i7qiwFp
 hzepskL8f8nJZ7tTMj8xfO0AxXCfuAezF5e6OuYg6uFeXOUpBYVtHSwqXeI3iQbxjmYp
 qPwUtIUz1G/Rw+tJ7XYj9SjfjIBhHEjNR6ALti7ovWNN9P1GEz0ByjYOk7E9iZXPLs64
 LPtP+BqaahmYWgcKycSNnPoitJD6/UsR8xqhlhX7CaIaHcGR1ERKdr63hgLeRjJqGHk4
 pjnP4TY/uJNsmny7h/mnw4ABZge64kr+0DGpCuoWOLeLqEXi97WkhVpJ54Ob6H7pG4CH
 ZHAg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=SYge2b+gU8tC/eWp9lxL/Hlv9CFHMKfwORgwa4LrmMU=;
 b=oUYhlqMtjXNsTPzlr8wCmVU6nKz7XSCTRhie+764wpTO/A9TzmoLffNrP4wIEFjVHF
 VFuCNH3LgU9+9oV126Jw1EMQYhWQnGikPoE3A2uVX6kjGjXebIYt3PFk0m9kJOnPSfQX
 uKzmyMhtYRa5YEYCr0l1+QcXm0vnJ/7t4fqYVEqUam49bYKhQ5Roeg1kDGHkOGLsJM1n
 GgkohjhFGccBtsQ2t80ImwkcnkHjRcaf34EWX4CSU0o3DNaVor3BFjgJcPI38tM/8te8
 0xYbl4ft5RsF5fkaIGLIxp4FpctzN1b71DjcvfFKvG1/HCnCLL7opeNF3xQkE9gxm/6V
 MRHA==
X-Gm-Message-State: AGi0PuZfXC/Gt0cvH2d7ENfnW3tveAqmR9Zl6QdqYFWLrgD7q3xkwTP4
 gj0enDgeQicYsr6bPwCQ82mOvMT6uKHw5wt4D77A+PN04Io=
X-Google-Smtp-Source: APiQypKlZGzCmoJuCVzXFQ0zMskM1WsPHrBuVWaJBCIoas9XTvT+G7SUM71GVbjxoXzJF23xirD05dZPHuAYjdmK34E=
X-Received: by 2002:aca:f288:: with SMTP id q130mr2703879oih.33.1586356360315; 
 Wed, 08 Apr 2020 07:32:40 -0700 (PDT)
MIME-Version: 1.0
References: <CAPRRyxu2JFofL0pDvrm46YEv-FMgdhf=sG7=nUgo1E-JdArhWQ@mail.gmail.com>
 <5E88C8C6.7070201@gmail.com>
 <CAPRRyxtsdm4XdtZ+9ZDpiSo_mu4+kuUF_U2_6yHNFcC-etkQ7Q@mail.gmail.com>
In-Reply-To: <CAPRRyxtsdm4XdtZ+9ZDpiSo_mu4+kuUF_U2_6yHNFcC-etkQ7Q@mail.gmail.com>
Date: Wed, 8 Apr 2020 10:32:29 -0400
Message-ID: <CAB__hTQEcLdREXPeieeVTwTHwvP-sUbyi+ZBzy3KmCZCqG9bPg@mail.gmail.com>
To: Ivan Zahartchuk <adray0001@gmail.com>
Subject: Re: [USRP-users] Recieve on two channels simultaneously USRP E310
X-BeenThere: usrp-users@lists.ettus.com
X-Mailman-Version: 2.1.29
Precedence: list
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
List-Unsubscribe: <http://lists.ettus.com/mailman/options/usrp-users_lists.ettus.com>, 
 <mailto:usrp-users-request@lists.ettus.com?subject=unsubscribe>
List-Archive: <http://lists.ettus.com/pipermail/usrp-users_lists.ettus.com/>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Subscribe: <http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com>, 
 <mailto:usrp-users-request@lists.ettus.com?subject=subscribe>
From: Rob Kossler via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Rob Kossler <rkossler@nd.edu>
Cc: usrp-users <usrp-users@lists.ettus.com>,
 discuss-gnuradio <discuss-gnuradio@gnu.org>
Content-Type: multipart/mixed; boundary="===============3425528913524072489=="
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

--===============3425528913524072489==
Content-Type: multipart/alternative; boundary="00000000000058741b05a2c85f83"

--00000000000058741b05a2c85f83
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi Ivan,
You should be able to build an FPGA image with 2 FFT blocks and 2 window
blocks.  I have done something similar on the E310 where I have 2 FFT
blocks and then 2 custom blocks which pass/discard selected FFT bins (and
is actually reasonably similar to the window block).  A couple of points:

   - You will want to create your own FFT IP component from the Vivado IP
   builder tool.  The Ettus FFT noc block includes a 4096 point FFT.  In or=
der
   to conserve resources, you could reduce the size, change the option to b=
e
   fixed size (rather than variable size), and change the architecture (fro=
m
   pipelined to radix-4 or radix-2).  Each of these will affect overall
   resources and performance.  If you need the FFT to keep up at the full
   radio rate, though, you probably need to stick with 'pipelined'.
   - If your FFT is bigger than 512 points, you will need to set
   RESIZE_OUTPUT_PACKET=3D1 in the axi_wrapper so that it can change the
   outgoing packet size to match the incoming packet size.  Otherwise, the =
FFT
   output packets of 1024 points or more will be a problem for the E310.
   - You will likely want to combine the FFT and window functionality into
   1 new noc block.  My original plan of 2 FFTs and 2 custom blocks did not
   build, but when I combined the functionality into a total of 2 blocks (e=
ach
   with one FFT and one custom block), it built.  So, perhaps there is a
   non-negligible amount of overhead in having things in separate noc block=
s.
   You could even try to combine all of your functionality into a single 2x=
2
   noc block.
   - Depending on whether or not you need Tx capability, you could
   potentially not include the DUC.  Also, if you plan to run at full radio
   rates such that you won't need a DDC, you could eliminate the DDC from t=
he
   build.

My experience is with 3.13, 3.14, 3.15.  I have not tried any builds with
the new 'master' branch (eventually becoming 4.0).  From what I understand
about the new 'master', you could statically connect your noc blocks such
that you might not need to do my 'trick' of putting multiple noc block
functionality into a single noc block in order to save resources.

Rob


On Sat, Apr 4, 2020 at 2:04 PM Ivan Zahartchuk via USRP-users <
usrp-users@lists.ettus.com> wrote:

> Yes, I really get an error
>  The packing of instances into the device could not be ovailable, however=
, the unplaced instances require 9681 slices. Please analyze your design to=
 determine if the number of LUTs, FFs, and / or control sets can be reduced=
.
> ERROR: [Place 30-99] Placer failed with error: 'Detail Placement failed p=
lease check previous errors for details.'
> beyed. There are a total of 13300 slices in the pblock, of which 8368 sli=
ces are available, however, the unplaced instances require 9681 slices. Ple=
ase analyze your design to determine if the number of LUTs, FFs, and / or c=
ontrol sets can be reduced.
> ERROR: [Place 30-99] Placer failed with error: 'Detail Placement failed p=
lease check previous errors for details.
> But do not tell me if there are blocks in gnuradio to control gpio. The g=
eneral idea is to implement an amplitude or phase direction finder on a giv=
en board. Perhaps you have any suggestions or examples. Because in programm=
ing on FPGAs I am unfortunately very weak and I need decent speed.
>
>
> =D1=81=D0=B1, 4 =D0=B0=D0=BF=D1=80. 2020 =D0=B3. =D0=B2 20:50, Marcus D. =
Leech via USRP-users <
> usrp-users@lists.ettus.com>:
>
>> On 04/04/2020 01:39 PM, Ivan Zahartchuk via USRP-users wrote:
>>
>>
>> Hello. Can I create a binary file with two fft blocks and two window
>> blocks for usrp E310 for rfnoc? And if so, how ? The idea is to receive =
a
>> signal from two channels simultaneously.
>>
>>
>> _______________________________________________
>> USRP-users mailing listUSRP-users@lists.ettus.comhttp://lists.ettus.com/=
mailman/listinfo/usrp-users_lists.ettus.com
>>
>> There may not be enough room for two FFT blocks in the E310 FPGA.  But
>> regardless, you'd need Xylinx Vivado tooling to generate up an RFNOC
>>   FPGA image that has the appropriate blocks generated into it. There is
>> no "dynamic" generation of blocks in the FPGA.  The only "dynamic"
>>   part is the connection of those blocks across the cross-bar construct
>> that RFNoC uses.
>>
>> This document may be helpful:
>>
>> https://kb.ettus.com/Getting_Started_with_RFNoC_Development
>> _______________________________________________
>> USRP-users mailing list
>> USRP-users@lists.ettus.com
>> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
>>
> _______________________________________________
> USRP-users mailing list
> USRP-users@lists.ettus.com
> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
>

--00000000000058741b05a2c85f83
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr">Hi Ivan,<div>You should be able to build =
an FPGA image with 2 FFT blocks=C2=A0and 2 window blocks.=C2=A0 I have done=
 something similar on the E310 where I have 2 FFT blocks and then 2 custom =
blocks which pass/discard selected FFT bins (and is actually reasonably sim=
ilar to the window block).=C2=A0 A couple of points:</div><div><ul><li>You =
will want to create your own FFT IP component from the Vivado IP builder to=
ol.=C2=A0 The Ettus FFT noc block includes a 4096 point FFT.=C2=A0 In order=
 to conserve resources, you could reduce the size, change the option to be =
fixed size (rather than variable size), and change the architecture (from p=
ipelined to radix-4 or radix-2).=C2=A0 Each of these will affect overall re=
sources and performance.=C2=A0 If you need the=C2=A0FFT to keep up at the f=
ull radio rate, though, you probably need to stick with &#39;pipelined&#39;=
.</li><li>If your FFT is bigger than 512 points, you will need to set RESIZ=
E_OUTPUT_PACKET=3D1 in the axi_wrapper so that it can change the outgoing p=
acket size to match the incoming packet size.=C2=A0 Otherwise, the FFT outp=
ut packets of 1024 points or more will be a problem for the=C2=A0E310.</li>=
<li>You will likely want to combine the FFT and window functionality into 1=
 new noc block.=C2=A0 My original plan of 2 FFTs and 2 custom blocks did no=
t build, but when I combined the functionality into a total of 2 blocks (ea=
ch with one FFT and one custom block), it built.=C2=A0 So, perhaps there is=
 a non-negligible amount of overhead in having things in separate noc block=
s. You could even try to combine all of your functionality into a single 2x=
2 noc block.</li><li>Depending on whether or not you need Tx capability, yo=
u could potentially not include the DUC.=C2=A0 Also, if you plan to run at =
full radio rates such that you won&#39;t need a DDC, you could eliminate th=
e DDC from the build.</li></ul><div>My experience is with 3.13, 3.14, 3.15.=
=C2=A0 I have not tried any builds with the new &#39;master&#39; branch (ev=
entually becoming 4.0).=C2=A0 From what I understand about the new &#39;mas=
ter&#39;, you could statically connect your noc blocks such that you might =
not need to do my &#39;trick&#39; of putting multiple noc block functionali=
ty into a single noc block in order to save resources.</div></div><div><br>=
</div><div>Rob</div><div><br></div></div><br><div class=3D"gmail_quote"><di=
v dir=3D"ltr" class=3D"gmail_attr">On Sat, Apr 4, 2020 at 2:04 PM Ivan Zaha=
rtchuk via USRP-users &lt;<a href=3D"mailto:usrp-users@lists.ettus.com" tar=
get=3D"_blank">usrp-users@lists.ettus.com</a>&gt; wrote:<br></div><blockquo=
te class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px =
solid rgb(204,204,204);padding-left:1ex"><div dir=3D"ltr"><div dir=3D"ltr">=
<pre id=3D"m_-2151742424605867505gmail-m_4105219211917340668gmail-m_-716412=
119897584000gmail-tw-target-text" dir=3D"ltr" style=3D"unicode-bidi:isolate=
;line-height:36px;background-color:rgb(248,249,250);border:none;padding:2px=
 0.14em 2px 0px;overflow:hidden;width:277px;white-space:pre-wrap"><span lan=
g=3D"en"><font face=3D"tahoma, sans-serif">Yes, I really get an error
=C2=A0The packing of instances into the device could not be ovailable, howe=
ver, the unplaced instances require 9681 slices. Please analyze your design=
 to determine if the number of LUTs, FFs, and / or control sets can be redu=
ced.
ERROR: [Place 30-99] Placer failed with error: &#39;Detail Placement failed=
 please check previous errors for details.&#39;
beyed. There are a total of 13300 slices in the pblock, of which 8368 slice=
s are available, however, the unplaced instances require 9681 slices. Pleas=
e analyze your design to determine if the number of LUTs, FFs, and / or con=
trol sets can be reduced.
ERROR: [Place 30-99] Placer failed with error: &#39;Detail Placement failed=
 please check previous errors for details.
But do not tell me if there are blocks in gnuradio to control gpio. The gen=
eral idea is to implement an amplitude or phase direction finder on a given=
 board. Perhaps you have any suggestions or examples. Because in programmin=
g on FPGAs I am unfortunately very weak and I need decent speed.</font></sp=
an></pre></div><font face=3D"tahoma, sans-serif"><br></font><div class=3D"g=
mail_quote"><div dir=3D"ltr" class=3D"gmail_attr"><font face=3D"tahoma, san=
s-serif">=D1=81=D0=B1, 4 =D0=B0=D0=BF=D1=80. 2020 =D0=B3. =D0=B2 20:50, Mar=
cus D. Leech via USRP-users &lt;<a href=3D"mailto:usrp-users@lists.ettus.co=
m" target=3D"_blank">usrp-users@lists.ettus.com</a>&gt;:<br></font></div><b=
lockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-le=
ft:1px solid rgb(204,204,204);padding-left:1ex">
 =20
   =20
 =20
  <div bgcolor=3D"#FFFFFF">
    <div><font face=3D"tahoma, sans-serif">On 04/04/2020 01:39 PM, Ivan Zah=
artchuk
      via USRP-users wrote:<br>
    </font></div>
    <blockquote type=3D"cite">
      <div dir=3D"ltr"><font face=3D"tahoma, sans-serif"><br>
        <span style=3D"white-space:pre-wrap;background-color:rgb(248,249,25=
0)">Hello.
          Can I create a binary file with two fft blocks and two window
          blocks for usrp E310 for rfnoc? And if so, how ? The idea is
          to receive a signal from two channels simultaneously.</span><br>
      </font></div>
      <font face=3D"tahoma, sans-serif"><br>
      </font><fieldset></fieldset>
      <font face=3D"tahoma, sans-serif"><br>
      </font><pre><font face=3D"tahoma, sans-serif">_______________________=
________________________
USRP-users mailing list
<a href=3D"mailto:USRP-users@lists.ettus.com" target=3D"_blank">USRP-users@=
lists.ettus.com</a>
<a href=3D"http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.c=
om" target=3D"_blank">http://lists.ettus.com/mailman/listinfo/usrp-users_li=
sts.ettus.com</a>
</font></pre>
    </blockquote><font face=3D"tahoma, sans-serif">
    There may not be enough room for two FFT blocks in the E310 FPGA.=C2=A0
    But regardless, you&#39;d need Xylinx Vivado tooling to generate up an
    RFNOC<br>
    =C2=A0 FPGA image that has the appropriate blocks generated into it.
    There is no &quot;dynamic&quot; generation of blocks in the FPGA.=C2=A0=
 The only
    &quot;dynamic&quot;<br>
    =C2=A0 part is the connection of those blocks across the cross-bar
    construct that RFNoC uses.<br>
    <br>
    This document may be helpful:<br>
    <br>
    <a href=3D"https://kb.ettus.com/Getting_Started_with_RFNoC_Development"=
 target=3D"_blank">https://kb.ettus.com/Getting_Started_with_RFNoC_Developm=
ent</a><br>
  </font></div><font face=3D"tahoma, sans-serif">

_______________________________________________<br>
USRP-users mailing list<br>
<a href=3D"mailto:USRP-users@lists.ettus.com" target=3D"_blank">USRP-users@=
lists.ettus.com</a><br>
<a href=3D"http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.c=
om" rel=3D"noreferrer" target=3D"_blank">http://lists.ettus.com/mailman/lis=
tinfo/usrp-users_lists.ettus.com</a></font><br>
</blockquote></div></div>
_______________________________________________<br>
USRP-users mailing list<br>
<a href=3D"mailto:USRP-users@lists.ettus.com" target=3D"_blank">USRP-users@=
lists.ettus.com</a><br>
<a href=3D"http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.c=
om" rel=3D"noreferrer" target=3D"_blank">http://lists.ettus.com/mailman/lis=
tinfo/usrp-users_lists.ettus.com</a><br>
</blockquote></div>
</div>

--00000000000058741b05a2c85f83--


--===============3425528913524072489==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============3425528913524072489==--

