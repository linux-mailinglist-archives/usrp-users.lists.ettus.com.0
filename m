Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 03D6560AE9E
	for <lists+usrp-users@lfdr.de>; Mon, 24 Oct 2022 17:10:38 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id EA552383F87
	for <lists+usrp-users@lfdr.de>; Mon, 24 Oct 2022 11:10:36 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1666624236; bh=YpTIdxYG0KejS2YJw+PGDbPM69GNEihWu7wMmQL93Os=;
	h=References:In-Reply-To:From:Date:To:CC:Subject:List-Id:
	 List-Archive:List-Help:List-Owner:List-Post:List-Subscribe:
	 List-Unsubscribe:From;
	b=EJ+GCHo3wK7+jDOiYPX7/NGpu+4TvBpJ+ol+dC9DM/flJqZVYcmwzzBzz1XRs41iC
	 Ric15OMpnVWoDfVrHESqmsAs5ROqT+bUhCjOOIKU6u4z9CM2Ur+ddDb2AUYkAQgTEt
	 jaF+SnLrrAiXjpYKENhlj8eTj/kCyXLZ9uB6wSnHwLoSB44wbKk6k7oU2qDSPfpsmO
	 aslDFdKWkqsLJlP7Y5V7kokPboUJiEIFLXmjZUTev7f7mEw5d75OIrjdnwS5OgSvQG
	 PTg3nnlzuSlfPG0JxcVMFnXifS+3fy6ldx/JpY8IlgEAf0E7P/u5zQPOOZ7WGmaAr3
	 pCbHqdjlaQCFg==
Received: from mail-oa1-f51.google.com (mail-oa1-f51.google.com [209.85.160.51])
	by mm2.emwd.com (Postfix) with ESMTPS id 9E54F380989
	for <usrp-users@lists.ettus.com>; Mon, 24 Oct 2022 11:09:27 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="DFiOik6j";
	dkim-atps=neutral
Received: by mail-oa1-f51.google.com with SMTP id 586e51a60fabf-13ae8117023so12167631fac.9
        for <usrp-users@lists.ettus.com>; Mon, 24 Oct 2022 08:09:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=ZRFME/9bA1e55E33fFCF7iagBUEWiWgyd+C7TFYN9HA=;
        b=DFiOik6j1MH+D65UIEgKbwpvZhwqcT8eLhLvKtJ0lxdSXt7qIGVBmk4oZu1NNOcq/A
         359veYcwMcjGKF0VZHvgGWWm2KIVTWNA6K7JumLzRcXwLOizwUxenWHYZoUeNbWmmAXl
         hzup6GTIjEXdFTkdeybJebli7OrqDIVMSL1ql47CMQq2xT4J+Aj7bqCPC0+2XEYJEh73
         qFDc1SusRRgpbYOsdCyzYcloE5IOgfaWeRZoUZMIYpIh3LU4uizIZcCQVozak5p5DrNa
         NRtdjRJSwk6HjvGgPhVziWLYlnR0U4gbfxm01+kTFrC3hClKmbDGSAhgZF6MkAO/B7Of
         7/kA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=ZRFME/9bA1e55E33fFCF7iagBUEWiWgyd+C7TFYN9HA=;
        b=QUOPM/6F03y6+IC0WgAx4mR4jOSF41M6Rz+i4nHKEl0td1bel122qGN2fgAcFDUSaG
         Kzc33dF8+irVvf3HhrRXdLhdN4jqS1Y03W/2aD5PLxJ126fKzVMeT3CSPBQXqodGERSX
         45xfAA49/eR3QoA9/q6coltaPQoaY2PRgfYG/ULKfV/Smr9X9qB/ScGlnOGHcr6JzZ0U
         6FlfEXeVMYeq+93llO/ZKam8fcpjDTMkM0OTm/gbe5WFjma0hvaBNRtZcU4xnZ5M19Zy
         HYe/G59uENb1srskGVcTR302v8G8luZVBmchL8EQK0GlKOuAdIMvd1CGt+csGeV3Htz0
         qV1A==
X-Gm-Message-State: ACrzQf3PUNbObKWpLEw433ohC4m80npdJE7CeIu6y9Ae5DlyLvck49nl
	3IBqO88toJN836Eqm9kPzmKqYf7KlDI7iHaoczg=
X-Google-Smtp-Source: AMsMyM6ZTnd30/QLopeu1zFbf/w5GUeZOgAWGcMj6ojb/lAgz++NbStE3FFDw6PaTUCJgssn7W7VEl7rYkv3rTJ2Tfs=
X-Received: by 2002:a05:6870:c084:b0:132:f48a:b488 with SMTP id
 c4-20020a056870c08400b00132f48ab488mr37868590oad.94.1666624166781; Mon, 24
 Oct 2022 08:09:26 -0700 (PDT)
MIME-Version: 1.0
References: <CAFPzw1m8+T8ApDoskGitdvJJq5QKprG9cWWWPi=DNf8RM0f++g@mail.gmail.com>
 <CAFPzw1kqEJkZk3vNhBstYwEwvmrJ0BdqNjC_JHpAw5t4_MDwzg@mail.gmail.com> <a50a95da-de77-472e-6b92-fd696703fa50@gmail.com>
In-Reply-To: <a50a95da-de77-472e-6b92-fd696703fa50@gmail.com>
From: Anabel Almodovar <anabel.almodovar@gmail.com>
Date: Mon, 24 Oct 2022 17:09:15 +0200
Message-ID: <CAFPzw1=nJAjCjN+4VYMFa4We-ZD9x+qLHx7A6+MMsvpSOxtJSg@mail.gmail.com>
To: "Marcus D. Leech" <patchvonbraun@gmail.com>
Message-ID-Hash: BW2QREW6CBLW6GMJRAL44QNPRFQHKWTR
X-Message-ID-Hash: BW2QREW6CBLW6GMJRAL44QNPRFQHKWTR
X-MailFrom: anabel.almodovar@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: usrp-users@lists.ettus.com
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Fwd: Initializing block control DmaFIFO_0 module error
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/BW2QREW6CBLW6GMJRAL44QNPRFQHKWTR/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============1814239376201223126=="

--===============1814239376201223126==
Content-Type: multipart/alternative; boundary="0000000000006f655b05ebc92d40"

--0000000000006f655b05ebc92d40
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Dear Marcus,

Thank you very much for your answer.
Yes, I have power-cycled the X310 and then burned the FPGA image again. It
seems that after this and restarting both the X310 and the computer, after
letting them rest a bit, I have managed to solve the problem.

I have tried to update the system to both Ubuntu 18 and Ubuntu 20 with UHD
4.0, however I have not been able to get my system to work correctly
without errors in the acquisition or compatibility of packages, that is why
I continue to use Ubuntu 16 where I'm insured at the moment the performance=
.

Thanks again.

All the best,
Anabel

El vie, 21 oct 2022 a las 15:55, Marcus D. Leech (<patchvonbraun@gmail.com>=
)
escribi=C3=B3:

> On 2022-10-21 09:04, Anabel Almodovar wrote:
>
> Hello,
>
> I am working with two X310 and TwinRx in both, Ubuntu 16.04 LTE and UHD
> 3.12.
> I am trying to execute any code and I get an error in the initialization
> of the cards in the DmaFIFO_0 module. This is my output from running the
> *uhd_usrp_probe* command for each individual card and for the set.
>
> Before the modification of one of my codes the cards worked perfectly. Du=
e
> to the malfunction of the code tests that I have carried out, I have had =
to
> cut the operation of the cards by force (ctrl + z), is it possible that
> this has caused the error in the cards? How can I solve this error?
>
> Thanks in advance.
>
> All the best
> Anabel Almodovar
>
>
>
>
>
>
>
>
>
>
>
>
>
>
>
>
>
>
>
>
>
>
>
>
>
> *rs3lab@rs3lab-HP-Z8-G4-Workstation:~/workarea-uhd/uhd/host/examples/buil=
d$
> uhd_usrp_probe [INFO] [UHD] linux; GNU C++ version 5.4.0 20160609;
> Boost_105800; UHD_3.12.0.0-69-g46ab88b4 [INFO] [X300] X300 initialization
> sequence... [INFO] [X300] Maximum frame size: 8000 bytes. [INFO] [X300]
> Radio 1x clock: 200 MHz [INFO] [GPS] No GPSDO found [INFO] [0/DmaFIFO_0]
> Initializing block control (NOC ID: 0xF1F0D00000000000) [ERROR] [UHD]
> Exception caught in safe-call.   in
> ctrl_iface_impl<_endianness>::~ctrl_iface_impl() [with uhd::endianness_t
> _endianness =3D (uhd::endianness_t)0u]   at
> /home/rs3lab/workarea-uhd/uhd/host/lib/rfnoc/ctrl_iface.cpp:60
> this->send_cmd_pkt(0, 0, true); -> EnvironmentError: IOError: Block ctrl
> (CE_00_Port_30) packet parse error - EnvironmentError: IOError: Expected
> packet index: 18 Received index: 20 Error: EnvironmentError: IOError: Blo=
ck
> ctrl (CE_00_Port_30) packet parse error - EnvironmentError: IOError:
> Expected packet index: 17 Received index: 19
> rs3lab@rs3lab-HP-Z8-G4-Workstation:~/workarea-uhd/uhd/host/examples/build=
$
> sudo uhd_usrp_probe [INFO] [UHD] linux; GNU C++ version 5.4.0 20160609;
> Boost_105800; UHD_3.12.0.0-69-g46ab88b4 [INFO] [X300] X300 initialization
> sequence... [INFO] [X300] Maximum frame size: 8000 bytes. [INFO] [X300]
> Radio 1x clock: 200 MHz [INFO] [0/DmaFIFO_0] Initializing block control
> (NOC ID: 0xF1F0D00000000000) [ERROR] [UHD] Exception caught in safe-call.
> in ctrl_iface_impl<_endianness>::~ctrl_iface_impl() [with uhd::endianness=
_t
> _endianness =3D (uhd::endianness_t)0u]   at
> /home/rs3lab/workarea-uhd/uhd/host/lib/rfnoc/ctrl_iface.cpp:60
> this->send_cmd_pkt(0, 0, true); -> EnvironmentError: IOError: Block ctrl
> (CE_00_Port_30) packet parse error - EnvironmentError: IOError: Expected
> packet index: 17 Received index: 20 Error: EnvironmentError: IOError: Blo=
ck
> ctrl (CE_00_Port_30) no response packet - AssertionError: bool(buff)   in
> uint64_t ctrl_iface_impl<_endianness>::wait_for_ack(bool, double) [with
> uhd::endianness_t _endianness =3D (uhd::endianness_t)0u; uint64_t =3D lon=
g
> unsigned int]   at
> /home/rs3lab/workarea-uhd/uhd/host/lib/rfnoc/ctrl_iface.cpp:154*
>
>
> _______________________________________________
> USRP-users mailing list -- usrp-users@lists.ettus.com
> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>
> Have you power-cycled the X310?  Can you ping your devices, and is it
> reliable?   The error you're seeing implies
>   a problem with network communications during command packets.
>
> I'll note that both Ubuntu 16.04 and UHD 3.12 are both *ancient* releases
> of the respective software.  X310 has had MANY
>   bug fixes since UHD 3.12, as has Ubuntu.
>
> The current version of Ubuntu is 22.04, with UHD 4.1.0.5
>
>
> _______________________________________________
> USRP-users mailing list -- usrp-users@lists.ettus.com
> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>

--0000000000006f655b05ebc92d40
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Dear Marcus,</div><div><br></div><div>Thank you very =
much for your answer.<br>Yes, I have power-cycled the X310 and then burned =
the FPGA image again. It seems that after this and restarting both the X310=
 and the computer, after letting them rest a bit, I have managed to solve t=
he problem.<br><br>I have tried to update the system to both Ubuntu 18 and =
Ubuntu 20 with UHD 4.0, however I have not been able to get my system to wo=
rk correctly without errors in the acquisition or compatibility of packages=
, that is why I continue to use Ubuntu 16 where I&#39;m insured at the mome=
nt the performance.<br><br>Thanks again.<br><br>All the best,<br>Anabel</di=
v></div><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr=
">El vie, 21 oct 2022 a las 15:55, Marcus D. Leech (&lt;<a href=3D"mailto:p=
atchvonbraun@gmail.com">patchvonbraun@gmail.com</a>&gt;) escribi=C3=B3:<br>=
</div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;b=
order-left:1px solid rgb(204,204,204);padding-left:1ex">
 =20
   =20
 =20
  <div>
    <div>On 2022-10-21 09:04, Anabel Almodovar
      wrote:<br>
    </div>
    <blockquote type=3D"cite">
     =20
      <div dir=3D"ltr">
        <div class=3D"gmail_quote">
          <div dir=3D"ltr">
            <div>Hello,</div>
            <div><br>
            </div>
            <div>I am working with two X310 and TwinRx in both, Ubuntu
              16.04 LTE and UHD 3.12.</div>
            I am trying to execute any code and I get an error in the
            initialization of the cards in the DmaFIFO_0 module. This is
            my output from running the <i>uhd_usrp_probe</i> command
            for each individual card and for the set.<br>
            <br>
            Before the modification of one of my codes the cards worked
            perfectly. Due to the malfunction of the code tests that I
            have carried out, I have had to cut the operation of the
            cards by force (ctrl + z), is it possible that this has
            caused the error in the cards? How can I solve this error?<br>
            <br>
            Thanks in advance.<br>
            <br>
            <div>All the best</div>
            <div>Anabel Almodovar<br>
            </div>
            <div><br>
            </div>
            <div><i><b>rs3lab@rs3lab-HP-Z8-G4-Workstation:~/workarea-uhd/uh=
d/host/examples/build$
                  uhd_usrp_probe<br>
                  [INFO] [UHD] linux; GNU C++ version 5.4.0 20160609;
                  Boost_105800; UHD_3.12.0.0-69-g46ab88b4<br>
                  [INFO] [X300] X300 initialization sequence...<br>
                  [INFO] [X300] Maximum frame size: 8000 bytes.<br>
                  [INFO] [X300] Radio 1x clock: 200 MHz<br>
                  [INFO] [GPS] No GPSDO found<br>
                  [INFO] [0/DmaFIFO_0] Initializing block control (NOC
                  ID: 0xF1F0D00000000000)<br>
                  [ERROR] [UHD] Exception caught in safe-call.<br>
                  =C2=A0 in
                  ctrl_iface_impl&lt;_endianness&gt;::~ctrl_iface_impl()
                  [with uhd::endianness_t _endianness =3D
                  (uhd::endianness_t)0u]<br>
                  =C2=A0 at
                  /home/rs3lab/workarea-uhd/uhd/host/lib/rfnoc/ctrl_iface.c=
pp:60<br>
                  this-&gt;send_cmd_pkt(0, 0, true); -&gt;
                  EnvironmentError: IOError: Block ctrl (CE_00_Port_30)
                  packet parse error - EnvironmentError: IOError:
                  Expected packet index: 18 Received index: 20<br>
                  Error: EnvironmentError: IOError: Block ctrl
                  (CE_00_Port_30) packet parse error - EnvironmentError:
                  IOError: Expected packet index: 17 Received index: 19<br>
rs3lab@rs3lab-HP-Z8-G4-Workstation:~/workarea-uhd/uhd/host/examples/build$
                  sudo uhd_usrp_probe<br>
                  [INFO] [UHD] linux; GNU C++ version 5.4.0 20160609;
                  Boost_105800; UHD_3.12.0.0-69-g46ab88b4<br>
                  [INFO] [X300] X300 initialization sequence...<br>
                  [INFO] [X300] Maximum frame size: 8000 bytes.<br>
                  [INFO] [X300] Radio 1x clock: 200 MHz<br>
                  [INFO] [0/DmaFIFO_0] Initializing block control (NOC
                  ID: 0xF1F0D00000000000)<br>
                  [ERROR] [UHD] Exception caught in safe-call.<br>
                  =C2=A0 in
                  ctrl_iface_impl&lt;_endianness&gt;::~ctrl_iface_impl()
                  [with uhd::endianness_t _endianness =3D
                  (uhd::endianness_t)0u]<br>
                  =C2=A0 at
                  /home/rs3lab/workarea-uhd/uhd/host/lib/rfnoc/ctrl_iface.c=
pp:60<br>
                  this-&gt;send_cmd_pkt(0, 0, true); -&gt;
                  EnvironmentError: IOError: Block ctrl (CE_00_Port_30)
                  packet parse error - EnvironmentError: IOError:
                  Expected packet index: 17 Received index: 20<br>
                  Error: EnvironmentError: IOError: Block ctrl
                  (CE_00_Port_30) no response packet - AssertionError:
                  bool(buff)<br>
                  =C2=A0 in uint64_t
                  ctrl_iface_impl&lt;_endianness&gt;::wait_for_ack(bool,
                  double) [with uhd::endianness_t _endianness =3D
                  (uhd::endianness_t)0u; uint64_t =3D long unsigned int]<br=
>
                  =C2=A0 at
                  /home/rs3lab/workarea-uhd/uhd/host/lib/rfnoc/ctrl_iface.c=
pp:154</b></i><br>
              <br>
            </div>
          </div>
        </div>
      </div>
      <br>
      <fieldset></fieldset>
      <pre>_______________________________________________
USRP-users mailing list -- <a href=3D"mailto:usrp-users@lists.ettus.com" ta=
rget=3D"_blank">usrp-users@lists.ettus.com</a>
To unsubscribe send an email to <a href=3D"mailto:usrp-users-leave@lists.et=
tus.com" target=3D"_blank">usrp-users-leave@lists.ettus.com</a>
</pre>
    </blockquote>
    Have you power-cycled the X310?=C2=A0 Can you ping your devices, and is
    it reliable?=C2=A0=C2=A0 The error you&#39;re seeing implies<br>
    =C2=A0 a problem with network communications during command packets.<br=
>
    <br>
    I&#39;ll note that both Ubuntu 16.04 and UHD 3.12 are both *ancient*
    releases of the respective software.=C2=A0 X310 has had MANY<br>
    =C2=A0 bug fixes since UHD 3.12, as has Ubuntu.<br>
    <br>
    The current version of Ubuntu is 22.04, with UHD 4.1.0.5<br>
    <br>
    <br>
  </div>

_______________________________________________<br>
USRP-users mailing list -- <a href=3D"mailto:usrp-users@lists.ettus.com" ta=
rget=3D"_blank">usrp-users@lists.ettus.com</a><br>
To unsubscribe send an email to <a href=3D"mailto:usrp-users-leave@lists.et=
tus.com" target=3D"_blank">usrp-users-leave@lists.ettus.com</a><br>
</blockquote></div>

--0000000000006f655b05ebc92d40--

--===============1814239376201223126==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============1814239376201223126==--
