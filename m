Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 871D948E32A
	for <lists+usrp-users@lfdr.de>; Fri, 14 Jan 2022 05:09:34 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 75590384687
	for <lists+usrp-users@lfdr.de>; Thu, 13 Jan 2022 23:09:33 -0500 (EST)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="B22R4Uhk";
	dkim-atps=neutral
Received: from mail-qt1-f174.google.com (mail-qt1-f174.google.com [209.85.160.174])
	by mm2.emwd.com (Postfix) with ESMTPS id 852A438491E
	for <USRP-users@lists.ettus.com>; Thu, 13 Jan 2022 23:08:38 -0500 (EST)
Received: by mail-qt1-f174.google.com with SMTP id f17so9583901qtf.8
        for <USRP-users@lists.ettus.com>; Thu, 13 Jan 2022 20:08:38 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :references:from:in-reply-to;
        bh=jwJ+IuesRarQ3nSiCat7SehJKp0Q4v72IHPAmSD+l9U=;
        b=B22R4UhkCDwiCSn9OWIOoepwzdT0FMtUwYII1iAekrBqZCXORH7xkPt5sDkONhxkss
         19brdAtnoauce+zDsuGFuSjFebGHlVr/KyNwexuObyZv4gJAKRdmSDlK/LeySHSLeVa5
         bXBHaJTwegEIcKuj3aPEfyXWJ+QhZWRtBXQLafW3CU6MnYHGP9K3h2YOcm31gh0rEuDg
         7R93a3S7GNZAYta3WIdDW8DnaWLal1Wlm+chiEyEVdaPgkmGhOqUmVMeCf55G2Ih53c2
         3bfc2fhswuwBnU3PkTbbt+SxG1s+843jLnmKTPLNJsuJ5xjiUT8K9EysmxSaH9Jqz+S2
         7o3w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:references:from:in-reply-to;
        bh=jwJ+IuesRarQ3nSiCat7SehJKp0Q4v72IHPAmSD+l9U=;
        b=6acXVMSl4LObEjNtNXUAjylgOeG/tt5gtNwEnNBELa1SuuM5XTwu4/IwgMjbSVeUPA
         PlZACGU/d9OZSLUPJVl0kQmtuqO1i2GWgYOWvvvCBek/sIYOR2+Bzwdd004a+VN8FdEf
         Faxim/IeyRToN2Kv8oGJu4oWp4vWg8S1QpEvREhnYYErdSjm4ST+o0GDWb3WzBEhelS0
         GMfOqlw+JpuXHNa3Kbi/43EWjs3gfCfV7419AKkNlLuzvRK9+kS6sl6PSkcwwasF31XL
         wwSq0yDIm20uQJA5lYtANjIsj51sVxly/+L7pFyAlMrjHAleNfGWcgAAtSHpsN0kamyQ
         /S5g==
X-Gm-Message-State: AOAM532cTst+pdHgrtfAyfLYUFvAL927JOig8THWyGVWaq8HhsbtCtKh
	GEMgtyyy9wG+6HSKF1SJlws=
X-Google-Smtp-Source: ABdhPJzo2scHf6x5qdATao60WPBecA6Z8Cj3S8LZ/0IeSM8EAs5S4/eGo/INY86c9EP0FKsa7FzyyQ==
X-Received: by 2002:a05:622a:3c7:: with SMTP id k7mr6303390qtx.307.1642133318383;
        Thu, 13 Jan 2022 20:08:38 -0800 (PST)
Received: from [192.168.2.225] (bras-base-smflon1825w-grc-05-174-88-53-52.dsl.bell.ca. [174.88.53.52])
        by smtp.googlemail.com with ESMTPSA id o6sm2945650qtr.83.2022.01.13.20.08.37
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 13 Jan 2022 20:08:37 -0800 (PST)
Message-ID: <0387900f-aba0-df7d-7a28-152478627373@gmail.com>
Date: Thu, 13 Jan 2022 23:08:37 -0500
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.3.1
Content-Language: en-US
To: jason pro <jason_proj@outlook.com>,
 "usrp-users@lists.ettus.com" <USRP-users@lists.ettus.com>
References: <SG2PR04MB362861400819A64BBA9A1A5DFD509@SG2PR04MB3628.apcprd04.prod.outlook.com>
 <abd33fbf-cdc0-c73d-090f-4d05a9733635@gmail.com>
 <SG2PR04MB3628572183773857FEAEA033FD539@SG2PR04MB3628.apcprd04.prod.outlook.com>
From: "Marcus D. Leech" <patchvonbraun@gmail.com>
In-Reply-To: <SG2PR04MB3628572183773857FEAEA033FD539@SG2PR04MB3628.apcprd04.prod.outlook.com>
Message-ID-Hash: ZBXUYZNZFI2R5T26J7SS46H6JO2LA3B4
X-Message-ID-Hash: ZBXUYZNZFI2R5T26J7SS46H6JO2LA3B4
X-MailFrom: patchvonbraun@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: X310 based programs cannot run stably for a long time
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/ZBXUYZNZFI2R5T26J7SS46H6JO2LA3B4/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============4206125372627777055=="

This is a multi-part message in MIME format.
--===============4206125372627777055==
Content-Type: multipart/alternative;
 boundary="------------RS5rrfi9VIDS0vkrvtvLFyto"
Content-Language: en-US

This is a multi-part message in MIME format.
--------------RS5rrfi9VIDS0vkrvtvLFyto
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: quoted-printable

On 2022-01-13 18:28, jason pro wrote:
> Hi Marcus,
>
> Sorry for the delay.
> The sample rate is 15.36Msps.
> This is a system similar to 5g NR. It is a full duplex communication=20
> system. It transmits signal in burst mode; Reception has been ongoing.
> This program can run stably for several hours to more than 30 hours.=20
> Then I encountered the error mentioned in the last email.
>
> Best regards,
> Damon
>
Given that a single 15.36Msps channel can be supported with a simple=20
1GiGe link, have you tried a simple 1GiGe link?

Have you tried switching cables and/or SFP+ adaptors?




> -----------------------------------------------------------------------=
-
> *From:* Marcus D. Leech <patchvonbraun@gmail.com>
> *Sent:* Tuesday, January 11, 2022 3:46 AM
> *To:* usrp-users@lists.ettus.com <usrp-users@lists.ettus.com>
> *Subject:* [USRP-users] Re: X310 based programs cannot run stably for=20
> a long time
> On 2022-01-10 14:37, jason pro wrote:
>> Hi dear Engineers of Ettus Research,
>>
>> Our application written based on UHD and USRP X310 cannot run for a=20
>> long time(The longest time did not exceed 48 hours).
>> The x310 is connected to the computer through a 10GbE network card=20
>> (X520).
>> We have tried to use versions 3.15 and 4.1.0.5. UHD throws different=20
>> errors:
>>
>> 1. UHD 4.1.0.5
>> X300 fw communication failure #1
>> EnvironmentError: IO Error:x300 fw peek32 -reply timed out
>> Terminate called after throwing an instance of 'uhd::assertion_error'
>> What():AssertionError:reply.sequence =3D=3D request.sequence
>> in virtual uint32_t=20
>> x300_ctrl_iface_enet::_peek32(uhd::wb_iface::wb_addr_type)
>> at/home/xxx/uhd/host/lib/usrp/x300/x300_fw_ctrl.cpp:165
>>
>> 2. UHD 3.15
>> terminate called after throwing an instance of =E2=80=98uhd:: io_error=
=E2=80=99
>> what() : EnvironmentError : IOError : Block ctrl(CE_01_Port_40) no=20
>> response packet =E2=80=93 AssertionError : bool(buff)
>> in uint64_t ctrl_iface_impl<_endianness> ::=20
>> wait_for_ack(bool,double)[with uhd :: endianness_t_endianness =3D=20
>> uhd::ENDIANNESS_BIG;uint64_t =3D long unsigned int]=20
>> at/home/xxx/uhd_3.15.0/uhd/host/lib/rfnoc/ctrl_iface.cpp:151
>>
>> Is there a solution?
>>
>> Best regards,
>> Jason
>>
>> _______________________________________________
>> USRP-users mailing list --usrp-users@lists.ettus.com  <mailto:usrp-use=
rs@lists.ettus.com>
>> To unsubscribe send an email tousrp-users-leave@lists.ettus.com  <mail=
to:usrp-users-leave@lists.ettus.com>
> We're going to need a lot more information about your application.=C2=A0=
=20
> What sample rates?=C2=A0=C2=A0 Is it TX/RX or TX-only? RX-only?
>
> Can you run one of the examples for extended periods, like=20
> rx_samples_to_file, and then have it write to "/dev/null"??
>
> What OS are you on?
>
>

--------------RS5rrfi9VIDS0vkrvtvLFyto
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<html>
  <head>
    <meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3DUTF=
-8">
  </head>
  <body>
    <div class=3D"moz-cite-prefix">On 2022-01-13 18:28, jason pro wrote:<=
br>
    </div>
    <blockquote type=3D"cite"
cite=3D"mid:SG2PR04MB3628572183773857FEAEA033FD539@SG2PR04MB3628.apcprd04=
.prod.outlook.com">
      <meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3DU=
TF-8">
      <style type=3D"text/css" style=3D"display:none;">P {margin-top:0;ma=
rgin-bottom:0;}</style>
      <div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif;
        font-size: 12pt; color: rgb(0, 0, 0);">
        Hi Marcus,</div>
      <div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif;
        font-size: 12pt; color: rgb(0, 0, 0);">
        <br>
      </div>
      <div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif;
        font-size: 12pt; color: rgb(0, 0, 0);">
        Sorry for the delay.<br>
      </div>
      <div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif;
        font-size: 12pt; color: rgb(0, 0, 0);">
        The sample rate is 15.36Msps.</div>
      <div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif;
        font-size: 12pt; color: rgb(0, 0, 0);">
        This is a system similar to 5g NR. It is a full duplex
        communication system. It transmits signal in burst mode;
        Reception has been ongoing.<br>
        <span></span>This program can run stably for several hours to
        more than 30 hours. Then I encountered the error mentioned in
        the last email.<br>
        <span></span><br>
      </div>
      <div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif;
        font-size: 12pt; color: rgb(0, 0, 0);">
        Best regards,</div>
      <div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif;
        font-size: 12pt; color: rgb(0, 0, 0);">
        Damon</div>
      <div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif;
        font-size:12pt; color:rgb(0,0,0)">
        <br>
      </div>
    </blockquote>
    Given that a single 15.36Msps channel can be supported with a simple
    1GiGe link, have you tried a simple 1GiGe link?<br>
    <br>
    Have you tried switching cables and/or SFP+ adaptors?<br>
    <br>
    <br>
    <br>
    <br>
    <blockquote type=3D"cite"
cite=3D"mid:SG2PR04MB3628572183773857FEAEA033FD539@SG2PR04MB3628.apcprd04=
.prod.outlook.com">
      <div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif;
        font-size:12pt; color:rgb(0,0,0)">
      </div>
      <hr tabindex=3D"-1" style=3D"display:inline-block; width:98%">
      <div id=3D"divRplyFwdMsg" dir=3D"ltr"><font style=3D"font-size:11pt=
"
          face=3D"Calibri, sans-serif" color=3D"#000000"><b>From:</b> Mar=
cus
          D. Leech <a class=3D"moz-txt-link-rfc2396E" href=3D"mailto:patc=
hvonbraun@gmail.com">&lt;patchvonbraun@gmail.com&gt;</a><br>
          <b>Sent:</b> Tuesday, January 11, 2022 3:46 AM<br>
          <b>To:</b> <a class=3D"moz-txt-link-abbreviated" href=3D"mailto=
:usrp-users@lists.ettus.com">usrp-users@lists.ettus.com</a>
          <a class=3D"moz-txt-link-rfc2396E" href=3D"mailto:usrp-users@li=
sts.ettus.com">&lt;usrp-users@lists.ettus.com&gt;</a><br>
          <b>Subject:</b> [USRP-users] Re: X310 based programs cannot
          run stably for a long time</font>
        <div>=C2=A0</div>
      </div>
      <div>
        <div class=3D"x_moz-cite-prefix">On 2022-01-10 14:37, jason pro
          wrote:<br>
        </div>
        <blockquote type=3D"cite">
          <div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif;
            font-size:12pt; color:rgb(0,0,0)">
            Hi dear Engineers of Ettus Research,
            <div><br>
            </div>
            <div>Our application written based on UHD and USRP X310
              cannot run for a long time(The longest time did not exceed
              48 hours).
            </div>
            <div>The x310 is connected to the computer through a 10GbE
              network card (X520).<br>
              <span></span>We have tried to use versions 3.15 and
              4.1.0.5. UHD throws different errors:</div>
            <div><br>
            </div>
            <div>1. UHD 4.1.0.5</div>
            <div>X300 fw communication failure #1</div>
            <div>EnvironmentError: IO Error:x300 fw peek32 -reply timed
              out</div>
            <div>Terminate called after throwing an instance of
              'uhd::assertion_error'</div>
            <div>What():AssertionError:reply.sequence =3D=3D
              request.sequence</div>
            <div>in virtual uint32_t
              x300_ctrl_iface_enet::_peek32(uhd::wb_iface::wb_addr_type)<=
/div>
            <div>at/home/xxx/uhd/host/lib/usrp/x300/x300_fw_ctrl.cpp:165<=
/div>
            <div><br>
            </div>
            <div>2. <span style=3D"background-color:rgb(255,255,255);
                display:inline!important">
                UHD</span> 3.15</div>
            <div>terminate called after throwing an instance of =E2=80=98=
uhd::
              io_error=E2=80=99</div>
            <div>what() : EnvironmentError : IOError : Block
              ctrl(CE_01_Port_40) no response packet =E2=80=93 AssertionE=
rror :
              bool(buff)</div>
            <div>in uint64_t ctrl_iface_impl&lt;_endianness&gt; ::
              wait_for_ack(bool,double)[with uhd ::
              endianness_t_endianness =3D uhd::ENDIANNESS_BIG;uint64_t =3D
              long unsigned int]
              at/home/xxx/uhd_3.15.0/uhd/host/lib/rfnoc/ctrl_iface.cpp:15=
1</div>
            <div><br>
            </div>
            <div>Is there a solution?<br>
              <span></span><br>
            </div>
            <div>Best regards,</div>
            Jason<br>
          </div>
          <br>
          <fieldset class=3D"x_mimeAttachmentHeader"></fieldset>
          <pre class=3D"x_moz-quote-pre">________________________________=
_______________
USRP-users mailing list -- <a class=3D"x_moz-txt-link-abbreviated moz-txt=
-link-freetext" href=3D"mailto:usrp-users@lists.ettus.com" moz-do-not-sen=
d=3D"true">usrp-users@lists.ettus.com</a>
To unsubscribe send an email to <a class=3D"x_moz-txt-link-abbreviated mo=
z-txt-link-freetext" href=3D"mailto:usrp-users-leave@lists.ettus.com" moz=
-do-not-send=3D"true">usrp-users-leave@lists.ettus.com</a>
</pre>
        </blockquote>
        We're going to need a lot more information about your
        application.=C2=A0 What sample rates?=C2=A0=C2=A0 Is it TX/RX or =
TX-only?
        RX-only?<br>
        <br>
        Can you run one of the examples for extended periods, like
        rx_samples_to_file, and then have it write to "/dev/null"??<br>
        <br>
        What OS are you on?<br>
        <br>
        <br>
      </div>
    </blockquote>
    <br>
  </body>
</html>
--------------RS5rrfi9VIDS0vkrvtvLFyto--

--===============4206125372627777055==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============4206125372627777055==--
