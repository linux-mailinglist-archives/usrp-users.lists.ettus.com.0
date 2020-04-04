Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 10AF419E6F7
	for <lists+usrp-users@lfdr.de>; Sat,  4 Apr 2020 20:04:46 +0200 (CEST)
Received: from [::1] (port=43150 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1jKn9u-0003IR-Bf; Sat, 04 Apr 2020 14:04:42 -0400
Received: from mail-io1-f45.google.com ([209.85.166.45]:45234)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
 (Exim 4.93) (envelope-from <adray0001@gmail.com>) id 1jKn9p-0003Bz-9W
 for usrp-users@lists.ettus.com; Sat, 04 Apr 2020 14:04:37 -0400
Received: by mail-io1-f45.google.com with SMTP id y14so11146189iol.12
 for <usrp-users@lists.ettus.com>; Sat, 04 Apr 2020 11:04:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to;
 bh=OTaIi6kMQ76qmmZ5HVC8MShmu4lBZVmmYMAw0mYSZ7I=;
 b=BsvjHllCuKXMDFxZw1KnFTio7prtWrxrv3r0rW9ByCwrAXZ7LZ22DFyqe8jgJ4hH1S
 6HrWJggl+l3n30Pu/7H7vvB/2VtMlzParHhrzdlEZglPK5Jn/+1PXkAwoQrYWQ5Xly+X
 tkaz9y+9yozpGgSSn9eFjIOvxXJOdxDypZqLBiY8oappqRDgLTQbOBIdcjmK+waOzc/P
 THY3FXU0cgLLZTqrsbkICMw3ABtCbaYz76E4UEBC7XoTFPOND1j8WzduWJGvxWxp7WjE
 SdwP8GykpT1QxAP130+YKLpfRiAbyHJgWOc2wKlkuTSqmrE9QffXjMduKnKV/W3BEZXh
 pD0Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to;
 bh=OTaIi6kMQ76qmmZ5HVC8MShmu4lBZVmmYMAw0mYSZ7I=;
 b=hVAvABSodjrMf2bFCRuQJV9qY2/3meEOd/PhoIc27cDLViKfCaD64rUX1EgBmJBNy4
 S71PdZhTO82xHE2vwKoxENEvA98/SzDsQktbAKAV5sShtdHZ3Fb4ZQRjIdVLdtjCFlVh
 bxk3dEJ1MGbp1ntjjs+9uLzKLzdV+JYkDjp0LrxghkqV22Gxrzky3orRFygMxp1s4vm3
 zVrWiaP8q2sIOvAtddXTl+lDvgtM6g8zyxaTsnvQ5ZBICLeacQbEiffwlAFsRf2Guihz
 s21txFlN3oQjsr4lNW38yxKd9+bm9gZ4qhtDSeA/qHY4KhF9n3lr4Y3gA4HQqBT0KvOm
 09dw==
X-Gm-Message-State: AGi0PuY97Jxc7TL4WQiBNuMU3sVL0fum/zEB+bGoAXPGG9xzQOFMh/1f
 I27Q3mTahnC9MsbX4E7M3MY2XobxJaYJEU7raMo=
X-Google-Smtp-Source: APiQypKHspjNjwYExpnDyBPC/xjEyqhmheFQDa0IQlXJ4JSDSO4jiXqQM1bODrV66R0PYQ901nX13ZEw2VYJfC8XsXE=
X-Received: by 2002:a02:716b:: with SMTP id n43mr8175014jaf.97.1586023436613; 
 Sat, 04 Apr 2020 11:03:56 -0700 (PDT)
MIME-Version: 1.0
References: <CAPRRyxu2JFofL0pDvrm46YEv-FMgdhf=sG7=nUgo1E-JdArhWQ@mail.gmail.com>
 <5E88C8C6.7070201@gmail.com>
In-Reply-To: <5E88C8C6.7070201@gmail.com>
Date: Sat, 4 Apr 2020 21:03:45 +0300
Message-ID: <CAPRRyxtsdm4XdtZ+9ZDpiSo_mu4+kuUF_U2_6yHNFcC-etkQ7Q@mail.gmail.com>
To: "Marcus D. Leech" <patchvonbraun@gmail.com>,
 usrp-users <usrp-users@lists.ettus.com>, 
 discuss-gnuradio <discuss-gnuradio@gnu.org>
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
From: Ivan Zahartchuk via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Ivan Zahartchuk <adray0001@gmail.com>
Content-Type: multipart/mixed; boundary="===============7500994727095753506=="
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

--===============7500994727095753506==
Content-Type: multipart/alternative; boundary="0000000000008b7a8c05a27adbc6"

--0000000000008b7a8c05a27adbc6
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Yes, I really get an error
 The packing of instances into the device could not be ovailable,
however, the unplaced instances require 9681 slices. Please analyze
your design to determine if the number of LUTs, FFs, and / or control
sets can be reduced.
ERROR: [Place 30-99] Placer failed with error: 'Detail Placement
failed please check previous errors for details.'
beyed. There are a total of 13300 slices in the pblock, of which 8368
slices are available, however, the unplaced instances require 9681
slices. Please analyze your design to determine if the number of LUTs,
FFs, and / or control sets can be reduced.
ERROR: [Place 30-99] Placer failed with error: 'Detail Placement
failed please check previous errors for details.
But do not tell me if there are blocks in gnuradio to control gpio.
The general idea is to implement an amplitude or phase direction
finder on a given board. Perhaps you have any suggestions or examples.
Because in programming on FPGAs I am unfortunately very weak and I
need decent speed.


=D1=81=D0=B1, 4 =D0=B0=D0=BF=D1=80. 2020 =D0=B3. =D0=B2 20:50, Marcus D. Le=
ech via USRP-users <
usrp-users@lists.ettus.com>:

> On 04/04/2020 01:39 PM, Ivan Zahartchuk via USRP-users wrote:
>
>
> Hello. Can I create a binary file with two fft blocks and two window
> blocks for usrp E310 for rfnoc? And if so, how ? The idea is to receive a
> signal from two channels simultaneously.
>
>
> _______________________________________________
> USRP-users mailing listUSRP-users@lists.ettus.comhttp://lists.ettus.com/m=
ailman/listinfo/usrp-users_lists.ettus.com
>
> There may not be enough room for two FFT blocks in the E310 FPGA.  But
> regardless, you'd need Xylinx Vivado tooling to generate up an RFNOC
>   FPGA image that has the appropriate blocks generated into it. There is
> no "dynamic" generation of blocks in the FPGA.  The only "dynamic"
>   part is the connection of those blocks across the cross-bar construct
> that RFNoC uses.
>
> This document may be helpful:
>
> https://kb.ettus.com/Getting_Started_with_RFNoC_Development
> _______________________________________________
> USRP-users mailing list
> USRP-users@lists.ettus.com
> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
>

--0000000000008b7a8c05a27adbc6
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr"><pre class=3D"gmail-tw-data-text gmail-tw=
-text-large gmail-tw-ta" id=3D"gmail-tw-target-text" dir=3D"ltr" style=3D"u=
nicode-bidi:isolate;line-height:36px;background-color:rgb(248,249,250);bord=
er:none;padding:2px 0.14em 2px 0px;overflow:hidden;width:277px;white-space:=
pre-wrap"><span lang=3D"en" style=3D""><font face=3D"tahoma, sans-serif">Ye=
s, I really get an error
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
m">usrp-users@lists.ettus.com</a>&gt;:<br></font></div><blockquote class=3D=
"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(2=
04,204,204);padding-left:1ex">
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
<a href=3D"mailto:USRP-users@lists.ettus.com" target=3D"_blank" style=3D"">=
USRP-users@lists.ettus.com</a><br>
<a href=3D"http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.c=
om" rel=3D"noreferrer" target=3D"_blank" style=3D"">http://lists.ettus.com/=
mailman/listinfo/usrp-users_lists.ettus.com</a></font><br>
</blockquote></div></div>

--0000000000008b7a8c05a27adbc6--


--===============7500994727095753506==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============7500994727095753506==--

