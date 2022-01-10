Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 97E3848A066
	for <lists+usrp-users@lfdr.de>; Mon, 10 Jan 2022 20:47:51 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 39D203850C9
	for <lists+usrp-users@lfdr.de>; Mon, 10 Jan 2022 14:47:50 -0500 (EST)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="h9oxOhDp";
	dkim-atps=neutral
Received: from mail-qv1-f47.google.com (mail-qv1-f47.google.com [209.85.219.47])
	by mm2.emwd.com (Postfix) with ESMTPS id B551238509E
	for <usrp-users@lists.ettus.com>; Mon, 10 Jan 2022 14:46:46 -0500 (EST)
Received: by mail-qv1-f47.google.com with SMTP id jr5so4747640qvb.11
        for <usrp-users@lists.ettus.com>; Mon, 10 Jan 2022 11:46:46 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :references:from:in-reply-to;
        bh=rKhUSFN0Ag2reMc2P2MG4iIhMEpi6W5Wvs6yI44v9FI=;
        b=h9oxOhDp1+XSJDzalSHhljguptxy4TdQPP5gJBONiA/VTY94NKJfiMQWv+3B6u8t68
         HBEYdsGce+PspEF4heeuCZCgwWEimnbwHE2vhzfUnmBTk7CjBCpd5nDH2MS9qKOlzsez
         8wKvyyrX+qEw8YpUL6o+/spzIIv/i9zhgkYp39hEtv2yWmKkAaA0fF1gASTKtzoVfnLn
         eWo9cOMF0sTsUAnRLcjzCFSaTFhLHVqjKnE40tfBiuLDvUcPcEfFEZ7A6pwUrX75TjSK
         RpoSNjvZwJjxdngjHA7DJ2ORiX76+dymvOXOHLlMCEhYcVJWnc1BO/aVtQB1CfwadFTn
         j/6w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:references:from:in-reply-to;
        bh=rKhUSFN0Ag2reMc2P2MG4iIhMEpi6W5Wvs6yI44v9FI=;
        b=FpiR0n5yKzOzE2N1W3jOav3RHF7ssjTQGBP4N73hpnyCw7x3lsOJmqW7dwrqlNNDb4
         rPP9Lkuq7hEXu9TAMOpY8FwGTX14z6zfn3dR19kBKqiXXSUXMidfzsxEo++iJWw9T9Q/
         2Khux8AusMIkw210rJdlMyycOLBpBaUDCCdDh+TspHSydD1I1Klr4Lz4+Ld4ti45DrZc
         tJUMFoK/xKdmLTYtPTjUYlVt/CtSOYAifoLwNPKooJbrpPUI+kfxgAr/6uxZ/L0HiJ13
         hPLOiTsevcNwGGPO0/nWGugxUnrfxGytOAsycrtW96gqgTumoW4g7MmEbrLd5C4N4NUK
         3pkQ==
X-Gm-Message-State: AOAM530CMzbJI1idZLfEShJlDU96yH4bl9oTBOtDgkeg5lwlng7CTFCn
	UsAEGLq/nplJ3Fkw+cJ+1mjLiQMSUKeKBQ==
X-Google-Smtp-Source: ABdhPJx467CqoFp+PMIiBe2QLEVz9A4hhONHqUOhJXU/YShRjm4HUoXSs5q+2/mBaVNZBbD5SLHcog==
X-Received: by 2002:a05:6214:ca6:: with SMTP id s6mr929967qvs.114.1641844005989;
        Mon, 10 Jan 2022 11:46:45 -0800 (PST)
Received: from [192.168.2.225] (bras-base-smflon1825w-grc-05-174-88-53-52.dsl.bell.ca. [174.88.53.52])
        by smtp.googlemail.com with ESMTPSA id n15sm539334qta.81.2022.01.10.11.46.45
        for <usrp-users@lists.ettus.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 10 Jan 2022 11:46:45 -0800 (PST)
Message-ID: <abd33fbf-cdc0-c73d-090f-4d05a9733635@gmail.com>
Date: Mon, 10 Jan 2022 14:46:44 -0500
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.3.1
Content-Language: en-US
To: usrp-users@lists.ettus.com
References: <SG2PR04MB362861400819A64BBA9A1A5DFD509@SG2PR04MB3628.apcprd04.prod.outlook.com>
From: "Marcus D. Leech" <patchvonbraun@gmail.com>
In-Reply-To: <SG2PR04MB362861400819A64BBA9A1A5DFD509@SG2PR04MB3628.apcprd04.prod.outlook.com>
Message-ID-Hash: YOZUXIUL4TBBUVPUJSSAK7MWV4DQTBGG
X-Message-ID-Hash: YOZUXIUL4TBBUVPUJSSAK7MWV4DQTBGG
X-MailFrom: patchvonbraun@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: X310 based programs cannot run stably for a long time
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/YOZUXIUL4TBBUVPUJSSAK7MWV4DQTBGG/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============7577885461659156040=="

This is a multi-part message in MIME format.
--===============7577885461659156040==
Content-Type: multipart/alternative;
 boundary="------------UbuOVLX0ksfsEJDBmRajJNee"
Content-Language: en-US

This is a multi-part message in MIME format.
--------------UbuOVLX0ksfsEJDBmRajJNee
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: quoted-printable

On 2022-01-10 14:37, jason pro wrote:
> Hi dear Engineers of Ettus Research,
>
> Our application written based on UHD and USRP X310 cannot run for a=20
> long time(The longest time did not exceed 48 hours).
> The x310 is connected to the computer through a 10GbE network card (X52=
0).
> We have tried to use versions 3.15 and 4.1.0.5. UHD throws different=20
> errors:
>
> 1. UHD 4.1.0.5
> X300 fw communication failure #1
> EnvironmentError: IO Error:x300 fw peek32 -reply timed out
> Terminate called after throwing an instance of 'uhd::assertion_error'
> What():AssertionError:reply.sequence =3D=3D request.sequence
> in virtual uint32_t=20
> x300_ctrl_iface_enet::_peek32(uhd::wb_iface::wb_addr_type)
> at/home/xxx/uhd/host/lib/usrp/x300/x300_fw_ctrl.cpp:165
>
> 2. UHD 3.15
> terminate called after throwing an instance of =E2=80=98uhd:: io_error=E2=
=80=99
> what() : EnvironmentError : IOError : Block ctrl(CE_01_Port_40) no=20
> response packet =E2=80=93 AssertionError : bool(buff)
> in uint64_t ctrl_iface_impl<_endianness> ::=20
> wait_for_ack(bool,double)[with uhd :: endianness_t_endianness =3D=20
> uhd::ENDIANNESS_BIG;uint64_t =3D long unsigned int]=20
> at/home/xxx/uhd_3.15.0/uhd/host/lib/rfnoc/ctrl_iface.cpp:151
>
> Is there a solution?
>
> Best regards,
> Jason
>
> _______________________________________________
> USRP-users mailing list --usrp-users@lists.ettus.com
> To unsubscribe send an email tousrp-users-leave@lists.ettus.com
We're going to need a lot more information about your application. What=20
sample rates?=C2=A0=C2=A0 Is it TX/RX or TX-only? RX-only?

Can you run one of the examples for extended periods, like=20
rx_samples_to_file, and then have it write to "/dev/null"??

What OS are you on?


--------------UbuOVLX0ksfsEJDBmRajJNee
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<html>
  <head>
    <meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3DUTF=
-8">
  </head>
  <body>
    <div class=3D"moz-cite-prefix">On 2022-01-10 14:37, jason pro wrote:<=
br>
    </div>
    <blockquote type=3D"cite"
cite=3D"mid:SG2PR04MB362861400819A64BBA9A1A5DFD509@SG2PR04MB3628.apcprd04=
.prod.outlook.com">
      <meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3DU=
TF-8">
      <style type=3D"text/css" style=3D"display:none;">P {margin-top:0;ma=
rgin-bottom:0;}</style>
      <div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif;
        font-size: 12pt; color: rgb(0, 0, 0);">
        Hi dear Engineers of Ettus Research,
        <div><br>
        </div>
        <div>Our application written based on UHD and USRP X310 cannot
          run for a long time(The longest time did not exceed 48 hours).
        </div>
        <div>The x310 is connected to the computer through a 10GbE
          network card (X520).<br>
          <span></span>We have tried to use versions 3.15 and 4.1.0.5.
          UHD throws different errors:</div>
        <div><br>
        </div>
        <div>1. UHD 4.1.0.5</div>
        <div>X300 fw communication failure #1</div>
        <div>EnvironmentError: IO Error:x300 fw peek32 -reply timed out</=
div>
        <div>Terminate called after throwing an instance of
          'uhd::assertion_error'</div>
        <div>What():AssertionError:reply.sequence =3D=3D request.sequence=
</div>
        <div>in virtual uint32_t
          x300_ctrl_iface_enet::_peek32(uhd::wb_iface::wb_addr_type)</div=
>
        <div>at/home/xxx/uhd/host/lib/usrp/x300/x300_fw_ctrl.cpp:165</div=
>
        <div><br>
        </div>
        <div>2. <span style=3D"background-color:rgb(255, 255,
            255);display:inline !important">
            UHD</span> 3.15</div>
        <div>terminate called after throwing an instance of =E2=80=98uhd:=
:
          io_error=E2=80=99</div>
        <div>what() : EnvironmentError : IOError : Block
          ctrl(CE_01_Port_40) no response packet =E2=80=93 AssertionError=
 :
          bool(buff)</div>
        <div>in uint64_t ctrl_iface_impl&lt;_endianness&gt; ::
          wait_for_ack(bool,double)[with uhd :: endianness_t_endianness
          =3D uhd::ENDIANNESS_BIG;uint64_t =3D long unsigned int]
          at/home/xxx/uhd_3.15.0/uhd/host/lib/rfnoc/ctrl_iface.cpp:151</d=
iv>
        <div><br>
        </div>
        <div>Is there a solution?<br>
          <span></span><br>
        </div>
        <div>Best regards,</div>
        Jason<br>
      </div>
      <br>
      <fieldset class=3D"mimeAttachmentHeader"></fieldset>
      <pre class=3D"moz-quote-pre" wrap=3D"">____________________________=
___________________
USRP-users mailing list -- <a class=3D"moz-txt-link-abbreviated" href=3D"=
mailto:usrp-users@lists.ettus.com">usrp-users@lists.ettus.com</a>
To unsubscribe send an email to <a class=3D"moz-txt-link-abbreviated" hre=
f=3D"mailto:usrp-users-leave@lists.ettus.com">usrp-users-leave@lists.ettu=
s.com</a>
</pre>
    </blockquote>
    We're going to need a lot more information about your application.=C2=
=A0
    What sample rates?=C2=A0=C2=A0 Is it TX/RX or TX-only? RX-only?<br>
    <br>
    Can you run one of the examples for extended periods, like
    rx_samples_to_file, and then have it write to "/dev/null"??<br>
    <br>
    What OS are you on?<br>
    <br>
    <br>
  </body>
</html>
--------------UbuOVLX0ksfsEJDBmRajJNee--

--===============7577885461659156040==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============7577885461659156040==--
