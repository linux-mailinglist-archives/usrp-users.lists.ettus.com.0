Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 876BF6078EA
	for <lists+usrp-users@lfdr.de>; Fri, 21 Oct 2022 15:55:40 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 81A683808E8
	for <lists+usrp-users@lfdr.de>; Fri, 21 Oct 2022 09:55:39 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1666360539; bh=JFa3W20scf/UoGLUPgK1vhcWeZJUZTSjlm4VJ87HZU8=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From;
	b=LRaPpFGBMsrp8QFsVzs71HyYoF4qUwM1CacsqZMGVOb3XWyBFavnEuQyZOhZGiRpI
	 nP7xoBkPPd+IQ+g+9wTEBQSEuJ3aFuHohlcHuhRZrSYJKrujMqvaip1aCX9tyrbf4I
	 iShoYycWLtZpWVrSxnutY6XMMt2PzGJC3eq8Ety00zEuwhqXsPmrXNHFIKrm9xKw6Y
	 HFJ/bguY2MJkHdL3nsk9K8snPog2sgrmZH3TQVbnST/YXvuwoO4Mh5dzIBzptZ3ma1
	 QOPFK4q6lWiS6xHg58eD4QfQPAMBFEChP6100tDXcfQ8OXbkZXRushBcSrBBJ8k+wP
	 Ajs1k6nRciojg==
Received: from mail-qt1-f169.google.com (mail-qt1-f169.google.com [209.85.160.169])
	by mm2.emwd.com (Postfix) with ESMTPS id E557C3808E8
	for <usrp-users@lists.ettus.com>; Fri, 21 Oct 2022 09:53:53 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="Vh0PmE/W";
	dkim-atps=neutral
Received: by mail-qt1-f169.google.com with SMTP id bb5so1628838qtb.11
        for <usrp-users@lists.ettus.com>; Fri, 21 Oct 2022 06:53:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=in-reply-to:from:references:to:content-language:subject:user-agent
         :mime-version:date:message-id:from:to:cc:subject:date:message-id
         :reply-to;
        bh=MszWjIZYy1PfSlsmF4Ey93WHjq5oXP9Q6HM7s4Vzc9Y=;
        b=Vh0PmE/WfB+qQUkxQH0R2uSznfWu4/X2H6rTsHJyabAM8Yp+pucYZjYxlTpMyRTcsi
         gj5VIFaWgoNozVnVtD7pfZDHNqokYKKqo6K6zMvlBYbO+08P9QZe/VOPXCqiwRsGkCpH
         luSUQu7WgHAnrHH2wYC+VuORqS2eVGTR8WBdkeTmqqBX6K/iov3o8qhFy6rMFWFnyTtj
         yA6fzWAMg1x+QID2b2+bkm+d7Am6FLCO374DmNWeVyvln2tp8O6sPHrR3G/IbYn3JG1g
         AoaDDDGGWs9Zc6d7bbdX+BRYoc4H7lnhCuqTtTJ36A6O/C1UNibYEfrRBo3ICT+1szE0
         PoZw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=in-reply-to:from:references:to:content-language:subject:user-agent
         :mime-version:date:message-id:x-gm-message-state:from:to:cc:subject
         :date:message-id:reply-to;
        bh=MszWjIZYy1PfSlsmF4Ey93WHjq5oXP9Q6HM7s4Vzc9Y=;
        b=ILMXo2p83aXR/55E22w/XON1KGC0EjdhdZekouFRceCKS2ryNWLDhIYCOuJLL7vqpA
         ppGNBRp/Z4n4F/F8cBksnsziRZF2CwdsYAhjRA+Ty5hwEA4yW1HEIRESawM5JPo1hZOE
         jWJu97UP2C7CX68gAHTPFwI0GUp9m7SHMkARKqtSofLamdOCkuY3J0AN74Rxao08XV04
         yhiKi1tDhcbzqjBRn1xDcIOgZqksxZqtu+mNFGU8SvojNT6MEeXdY5Ib3hMkHE6JsvOc
         wgxjEkCEjXNiS89jPfric402Azr3vJbOxcSARoKM686/SB+0hSE/AaBc/lWM3ioC19gC
         A4wA==
X-Gm-Message-State: ACrzQf1rq6vf3aTeKA7OYDkzsIoQALUsr1BvacrlHOK5lRTktiG6KLjj
	N7jCrFj67o5pxvnsrecjX22WrPWF3vM=
X-Google-Smtp-Source: AMsMyM4zarI7Ez/JeJYgITOlfRcapwu6otEX9vGINCipPsAHtacFVq0cB4fXXx4pTVk+K19FUoMjGg==
X-Received: by 2002:ac8:5894:0:b0:39d:13b5:1afd with SMTP id t20-20020ac85894000000b0039d13b51afdmr6228278qta.127.1666360433237;
        Fri, 21 Oct 2022 06:53:53 -0700 (PDT)
Received: from [192.168.2.182] (bras-base-smflon1825w-grc-09-174-93-2-222.dsl.bell.ca. [174.93.2.222])
        by smtp.googlemail.com with ESMTPSA id bq8-20020a05622a1c0800b00394fce5fa64sm8036781qtb.9.2022.10.21.06.53.52
        for <usrp-users@lists.ettus.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 21 Oct 2022 06:53:52 -0700 (PDT)
Message-ID: <a50a95da-de77-472e-6b92-fd696703fa50@gmail.com>
Date: Fri, 21 Oct 2022 09:53:52 -0400
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.2.2
Content-Language: en-US
To: usrp-users@lists.ettus.com
References: <CAFPzw1m8+T8ApDoskGitdvJJq5QKprG9cWWWPi=DNf8RM0f++g@mail.gmail.com>
 <CAFPzw1kqEJkZk3vNhBstYwEwvmrJ0BdqNjC_JHpAw5t4_MDwzg@mail.gmail.com>
From: "Marcus D. Leech" <patchvonbraun@gmail.com>
In-Reply-To: <CAFPzw1kqEJkZk3vNhBstYwEwvmrJ0BdqNjC_JHpAw5t4_MDwzg@mail.gmail.com>
Message-ID-Hash: XJGLEOPF77PYB2HDCWW7LFA4F36BJ56D
X-Message-ID-Hash: XJGLEOPF77PYB2HDCWW7LFA4F36BJ56D
X-MailFrom: patchvonbraun@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Fwd: Initializing block control DmaFIFO_0 module error
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/XJGLEOPF77PYB2HDCWW7LFA4F36BJ56D/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============5625976612305374501=="

This is a multi-part message in MIME format.
--===============5625976612305374501==
Content-Type: multipart/alternative;
 boundary="------------rGNq0vzUmNxk9AtJpUoML01d"
Content-Language: en-US

This is a multi-part message in MIME format.
--------------rGNq0vzUmNxk9AtJpUoML01d
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: quoted-printable

On 2022-10-21 09:04, Anabel Almodovar wrote:
> Hello,
>
> I am working with two X310 and TwinRx in both, Ubuntu 16.04 LTE and=20
> UHD 3.12.
> I am trying to execute any code and I get an error in the=20
> initialization of the cards in the DmaFIFO_0 module. This is my output=20
> from running the /uhd_usrp_probe/ command for each individual card and=20
> for the set.
>
> Before the modification of one of my codes the cards worked perfectly.=20
> Due to the malfunction of the code tests that I have carried out, I=20
> have had to cut the operation of the cards by force (ctrl + z), is it=20
> possible that this has caused the error in the cards? How can I solve=20
> this error?
>
> Thanks in advance.
>
> All the best
> Anabel Almodovar
>
> /*rs3lab@rs3lab-HP-Z8-G4-Workstation:~/workarea-uhd/uhd/host/examples/b=
uild$=20
> uhd_usrp_probe
> [INFO] [UHD] linux; GNU C++ version 5.4.0 20160609; Boost_105800;=20
> UHD_3.12.0.0-69-g46ab88b4
> [INFO] [X300] X300 initialization sequence...
> [INFO] [X300] Maximum frame size: 8000 bytes.
> [INFO] [X300] Radio 1x clock: 200 MHz
> [INFO] [GPS] No GPSDO found
> [INFO] [0/DmaFIFO_0] Initializing block control (NOC ID:=20
> 0xF1F0D00000000000)
> [ERROR] [UHD] Exception caught in safe-call.
> =C2=A0 in ctrl_iface_impl<_endianness>::~ctrl_iface_impl() [with=20
> uhd::endianness_t _endianness =3D (uhd::endianness_t)0u]
> =C2=A0 at /home/rs3lab/workarea-uhd/uhd/host/lib/rfnoc/ctrl_iface.cpp:6=
0
> this->send_cmd_pkt(0, 0, true); -> EnvironmentError: IOError: Block=20
> ctrl (CE_00_Port_30) packet parse error - EnvironmentError: IOError:=20
> Expected packet index: 18 Received index: 20
> Error: EnvironmentError: IOError: Block ctrl (CE_00_Port_30) packet=20
> parse error - EnvironmentError: IOError: Expected packet index: 17=20
> Received index: 19
> rs3lab@rs3lab-HP-Z8-G4-Workstation:~/workarea-uhd/uhd/host/examples/bui=
ld$=20
> sudo uhd_usrp_probe
> [INFO] [UHD] linux; GNU C++ version 5.4.0 20160609; Boost_105800;=20
> UHD_3.12.0.0-69-g46ab88b4
> [INFO] [X300] X300 initialization sequence...
> [INFO] [X300] Maximum frame size: 8000 bytes.
> [INFO] [X300] Radio 1x clock: 200 MHz
> [INFO] [0/DmaFIFO_0] Initializing block control (NOC ID:=20
> 0xF1F0D00000000000)
> [ERROR] [UHD] Exception caught in safe-call.
> =C2=A0 in ctrl_iface_impl<_endianness>::~ctrl_iface_impl() [with=20
> uhd::endianness_t _endianness =3D (uhd::endianness_t)0u]
> =C2=A0 at /home/rs3lab/workarea-uhd/uhd/host/lib/rfnoc/ctrl_iface.cpp:6=
0
> this->send_cmd_pkt(0, 0, true); -> EnvironmentError: IOError: Block=20
> ctrl (CE_00_Port_30) packet parse error - EnvironmentError: IOError:=20
> Expected packet index: 17 Received index: 20
> Error: EnvironmentError: IOError: Block ctrl (CE_00_Port_30) no=20
> response packet - AssertionError: bool(buff)
> =C2=A0 in uint64_t ctrl_iface_impl<_endianness>::wait_for_ack(bool, dou=
ble)=20
> [with uhd::endianness_t _endianness =3D (uhd::endianness_t)0u; uint64_t=
=20
> =3D long unsigned int]
> =C2=A0 at /home/rs3lab/workarea-uhd/uhd/host/lib/rfnoc/ctrl_iface.cpp:1=
54*/
>
>
> _______________________________________________
> USRP-users mailing list --usrp-users@lists.ettus.com
> To unsubscribe send an email tousrp-users-leave@lists.ettus.com
Have you power-cycled the X310?=C2=A0 Can you ping your devices, and is i=
t=20
reliable?=C2=A0=C2=A0 The error you're seeing implies
 =C2=A0 a problem with network communications during command packets.

I'll note that both Ubuntu 16.04 and UHD 3.12 are both *ancient*=20
releases of the respective software.=C2=A0 X310 has had MANY
 =C2=A0 bug fixes since UHD 3.12, as has Ubuntu.

The current version of Ubuntu is 22.04, with UHD 4.1.0.5


--------------rGNq0vzUmNxk9AtJpUoML01d
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<html>
  <head>
    <meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3DUTF=
-8">
  </head>
  <body>
    <div class=3D"moz-cite-prefix">On 2022-10-21 09:04, Anabel Almodovar
      wrote:<br>
    </div>
    <blockquote type=3D"cite"
cite=3D"mid:CAFPzw1kqEJkZk3vNhBstYwEwvmrJ0BdqNjC_JHpAw5t4_MDwzg@mail.gmai=
l.com">
      <meta http-equiv=3D"content-type" content=3D"text/html; charset=3DU=
TF-8">
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
            caused the error in the cards? How can I solve this error?<br=
>
            <br>
            Thanks in advance.<br>
            <br>
            <div>All the best</div>
            <div>Anabel Almodovar<br>
            </div>
            <div><br>
            </div>
            <div><i><b>rs3lab@rs3lab-HP-Z8-G4-Workstation:~/workarea-uhd/=
uhd/host/examples/build$
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
                  /home/rs3lab/workarea-uhd/uhd/host/lib/rfnoc/ctrl_iface=
.cpp:60<br>
                  this-&gt;send_cmd_pkt(0, 0, true); -&gt;
                  EnvironmentError: IOError: Block ctrl (CE_00_Port_30)
                  packet parse error - EnvironmentError: IOError:
                  Expected packet index: 18 Received index: 20<br>
                  Error: EnvironmentError: IOError: Block ctrl
                  (CE_00_Port_30) packet parse error - EnvironmentError:
                  IOError: Expected packet index: 17 Received index: 19<b=
r>
rs3lab@rs3lab-HP-Z8-G4-Workstation:~/workarea-uhd/uhd/host/examples/build=
$
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
                  /home/rs3lab/workarea-uhd/uhd/host/lib/rfnoc/ctrl_iface=
.cpp:60<br>
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
                  (uhd::endianness_t)0u; uint64_t =3D long unsigned int]<=
br>
                  =C2=A0 at
                  /home/rs3lab/workarea-uhd/uhd/host/lib/rfnoc/ctrl_iface=
.cpp:154</b></i><br>
              <br>
            </div>
          </div>
        </div>
      </div>
      <br>
      <fieldset class=3D"moz-mime-attachment-header"></fieldset>
      <pre class=3D"moz-quote-pre" wrap=3D"">____________________________=
___________________
USRP-users mailing list -- <a class=3D"moz-txt-link-abbreviated" href=3D"=
mailto:usrp-users@lists.ettus.com">usrp-users@lists.ettus.com</a>
To unsubscribe send an email to <a class=3D"moz-txt-link-abbreviated" hre=
f=3D"mailto:usrp-users-leave@lists.ettus.com">usrp-users-leave@lists.ettu=
s.com</a>
</pre>
    </blockquote>
    Have you power-cycled the X310?=C2=A0 Can you ping your devices, and =
is
    it reliable?=C2=A0=C2=A0 The error you're seeing implies<br>
    =C2=A0 a problem with network communications during command packets.<=
br>
    <br>
    I'll note that both Ubuntu 16.04 and UHD 3.12 are both *ancient*
    releases of the respective software.=C2=A0 X310 has had MANY<br>
    =C2=A0 bug fixes since UHD 3.12, as has Ubuntu.<br>
    <br>
    The current version of Ubuntu is 22.04, with UHD 4.1.0.5<br>
    <br>
    <br>
  </body>
</html>

--------------rGNq0vzUmNxk9AtJpUoML01d--

--===============5625976612305374501==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============5625976612305374501==--
