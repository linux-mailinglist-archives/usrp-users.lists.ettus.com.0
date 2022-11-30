Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 9F62963E3D5
	for <lists+usrp-users@lfdr.de>; Wed, 30 Nov 2022 23:59:01 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id AAA323845B7
	for <lists+usrp-users@lfdr.de>; Wed, 30 Nov 2022 17:59:00 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1669849140; bh=r2Ng+7xyAE3k0EQw74qSOFbPMIr0RfdPq7ft0Sq/0VM=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From;
	b=uKcSFGZ7H3ewJ3QCNMOYD1Xd5LTMFj8oICBwbBTAsNCby3KlwNZoEn6gZ0nZEotHF
	 GjnQxkrEb5HZE5LuiEDn1t5zIAaDsNgypC2prkWoMzRJXE8PwSxhR9FOTQpk+S++ZU
	 aZOrTPvSAikE492Gv+QVaHQ2B6Yea3yuq61M7fSLvnaeSGAZP3u1JZGCuyJ84/WW5j
	 Xyg8v8UVDERV5AKw3UEpVo56kXSWV5QWBnzZ9+1TOw8KoxmFgZiPC0cyWG8Vgbh0da
	 QO6+W8WiUmtGiD2rDiylXtZs90xc1qwGilCAskp1GokAF6QQQaloD5ptZltYoznGQZ
	 LrfFgjYzc41IA==
Received: from mail-qk1-f182.google.com (mail-qk1-f182.google.com [209.85.222.182])
	by mm2.emwd.com (Postfix) with ESMTPS id A863638457A
	for <usrp-users@lists.ettus.com>; Wed, 30 Nov 2022 17:57:42 -0500 (EST)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="eSkQsMpN";
	dkim-atps=neutral
Received: by mail-qk1-f182.google.com with SMTP id x18so13483783qki.4
        for <usrp-users@lists.ettus.com>; Wed, 30 Nov 2022 14:57:42 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=in-reply-to:from:references:to:content-language:subject:user-agent
         :mime-version:date:message-id:from:to:cc:subject:date:message-id
         :reply-to;
        bh=pX0qCurrbzVxYBeEu3INUxviAttc5SqY03r+Py9bhWg=;
        b=eSkQsMpNrsnYUwaRGw0WWftovt9hFc6hgezOeqWQjKX4FAhAp2KD2ehmL9zGsleust
         kMUK1g+dMPj4WYZKqGP0RWgeWeySTihPuWPLb9pnFF8VPuzB5E42trjKZuaq17qLr0pg
         +UCxYtROBqqjKIYAwOPzaFowrcwVf9QKygvCJDJkadB1wffqmPn3sSZvuo4gNeTiKW7C
         R4VbdzwlmyhqnrHC7BPdIheKIUUchcG+xbllDIBTuXeMbGqpDV/iCB+sgyvLKhni0u0l
         tZJvebSRgD3yM62ta/TnFSzKs4hhonzO/FRTfQl/sSRADGguVnlXla+MNqkEkQ+lBObG
         x+xg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=in-reply-to:from:references:to:content-language:subject:user-agent
         :mime-version:date:message-id:x-gm-message-state:from:to:cc:subject
         :date:message-id:reply-to;
        bh=pX0qCurrbzVxYBeEu3INUxviAttc5SqY03r+Py9bhWg=;
        b=M/h4ymHbnBNCr+4pHtxnGJjbz083WwpIlg7vx64v+JKtThjRUjZ6kBWyLifDMUhImk
         VHRowJC5K34T+Nj3SWY9lq00LeRv9ldk/wmcMv9vjc+RhwnZHoUBfG3vlFdUgru9kQXP
         n/d+XS1dE0XPbLD+lWQJ84MT8ClNg2DBfjNqOtAoPIGAphUA5Sj5mmlF6qfjsgTjzb8Z
         UpXyG3Kr81hwj9aNWAVovqfTEgK9atUYev0RsAiVrMiq6ep+Ycl3Pi2neHgwqYjq2Ry2
         NQKFeouyaIyBahobXeCjJfZkdsGW+9xz5Z7LIxigIoQQYD64bak0LnLGdgLY3xbAdLU/
         EniA==
X-Gm-Message-State: ANoB5pltNSPckGtQyM2yiZCT9dVlJ41yftVmr+OXt11CIUFQX01QcW3/
	g9kmjmMb3GPnaq5gVWWwBcNDchml9saW+g==
X-Google-Smtp-Source: AA0mqf6fp5uUPNSRtVADvb2oSI3Pt93mk1SEkes4PpB+jNsFqeXIWh8LQEHCUuy3S5wazIMRe2iS2A==
X-Received: by 2002:ae9:f106:0:b0:6fa:59b4:f37b with SMTP id k6-20020ae9f106000000b006fa59b4f37bmr54661043qkg.349.1669849061948;
        Wed, 30 Nov 2022 14:57:41 -0800 (PST)
Received: from [192.168.2.198] (bras-base-smflon1825w-grc-06-174-88-54-67.dsl.bell.ca. [174.88.54.67])
        by smtp.googlemail.com with ESMTPSA id j11-20020ac8550b000000b003434d3b5938sm1640470qtq.2.2022.11.30.14.57.41
        for <usrp-users@lists.ettus.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 30 Nov 2022 14:57:41 -0800 (PST)
Message-ID: <30062802-543b-a00d-b0f9-3a72a082b76a@gmail.com>
Date: Wed, 30 Nov 2022 17:57:41 -0500
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.4.2
Content-Language: en-US
To: usrp-users@lists.ettus.com
References: <BN7PR05MB450083ED49C51CD1D1808E36D5159@BN7PR05MB4500.namprd05.prod.outlook.com>
 <CAB__hTQGa4a4Ut3EC7+UnGR5Gt2+7vtuFQzy+amGsdUB5=MS_g@mail.gmail.com>
From: "Marcus D. Leech" <patchvonbraun@gmail.com>
In-Reply-To: <CAB__hTQGa4a4Ut3EC7+UnGR5Gt2+7vtuFQzy+amGsdUB5=MS_g@mail.gmail.com>
Message-ID-Hash: P5STR7SV5OVUMSUALUZL4QCPMLNN6JQY
X-Message-ID-Hash: P5STR7SV5OVUMSUALUZL4QCPMLNN6JQY
X-MailFrom: patchvonbraun@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: TX from N310 External LO Error
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/P5STR7SV5OVUMSUALUZL4QCPMLNN6JQY/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============8920957989144978256=="

This is a multi-part message in MIME format.
--===============8920957989144978256==
Content-Type: multipart/alternative;
 boundary="------------DNXoYxdAvGBA5IeAzRBdyqD4"
Content-Language: en-US

This is a multi-part message in MIME format.
--------------DNXoYxdAvGBA5IeAzRBdyqD4
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: quoted-printable

On 30/11/2022 17:46, Rob Kossler wrote:
> Hi Jonathan,
> At startup, the init_cal will always be conducted at 2.5GHz=20
> requiring=C2=A0an external LO at 5 GHz.=C2=A0 After the init cal, then =
you can=20
> re-tune your external LO to twice the desired operating frequency.=C2=A0=
 It=20
> wasn't clear to me from your comment if your external LO is initially=20
> configured to 5 GHz or to 2 GHz.=C2=A0 If the latter, try with 5 GHz an=
d if=20
> startup occurs correctly, retune it to 2 GHz after that point.
> Rob
It has also been suggested to use "init_cals=3DBASIC" in the device=20
argument in this situation.=C2=A0 It's not clear to me exactly what
 =C2=A0 that does.


>
> On Wed, Nov 30, 2022 at 1:43 PM Jonathan Tobin=20
> <Tobin@augustusaero.com> wrote:
>
>     Hello all - I am trying to transmit a test waveform from an N310
>     using the sample program tx_waveforms. When I set
>     "tx_lo_source=3Dexternal" I get the error below. When I set it to
>     internal, the program runs smoothly, but there is no output. I am
>     supplying an external LO at twice the desired output frequency. I
>     am using uhd 4.3.0.0.
>
>
>     ./tx_waveforms --args
>     "addr=3D192.168.10.2,master_clock_rate=3D153.6e6,tx_lo_source=3Dext=
ernal"
>     --freq 1e9 --gain 10 --bw 1e6 --rate 9.6e6 --subdev "A:1"
>     --channels "0" --wave-freq 100e3
>
>     Creating the usrp device with:
>     addr=3D192.168.10.2,master_clock_rate=3D153.6e6,tx_lo_source=3Dexte=
rnal...
>     [INFO] [UHD] linux; GNU C++ version 7.5.0; Boost_106501;
>     UHD_4.3.0.HEAD-0-g1f8fd345
>     [INFO] [MPMD] Initializing 1 device(s) in parallel with args:
>     mgmt_addr=3D192.168.10.2,type=3Dn3xx,product=3Dn310,serial=3D3218B5=
F,name=3Dni-n3xx-3218B5F,fpga=3DHG,claimed=3DFalse,addr=3D192.168.10.2,ma=
ster_clock_rate=3D153.6e6,tx_lo_source=3Dexternal
>     [INFO] [MPM.PeriphManager] init() called with device args
>     `fpga=3DHG,master_clock_rate=3D153.6e6,mgmt_addr=3D192.168.10.2,nam=
e=3Dni-n3xx-3218B5F,product=3Dn310,tx_lo_source=3Dexternal,clock_source=3D=
internal,time_source=3Dinternal'.
>     [ERROR] [RPC] RuntimeError: MYKONOS_waitInitCals() returned an ARM
>     error
>
>     [ERROR] [MPM.RPCServer] init() failed with error: RuntimeError:
>     MYKONOS_waitInitCals() returned an ARM error
>
>     Error: RuntimeError: Error during RPC call to `init'. Error
>     message: RuntimeError: MYKONOS_waitInitCals() returned an ARM error
>
>
>
>     Thanks,
>     Jonathan
>     _______________________________________________
>     USRP-users mailing list -- usrp-users@lists.ettus.com
>     To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>
>
> _______________________________________________
> USRP-users mailing list --usrp-users@lists.ettus.com
> To unsubscribe send an email tousrp-users-leave@lists.ettus.com

--------------DNXoYxdAvGBA5IeAzRBdyqD4
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<html>
  <head>
    <meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3DUTF=
-8">
  </head>
  <body>
    <div class=3D"moz-cite-prefix">On 30/11/2022 17:46, Rob Kossler wrote=
:<br>
    </div>
    <blockquote type=3D"cite"
cite=3D"mid:CAB__hTQGa4a4Ut3EC7+UnGR5Gt2+7vtuFQzy+amGsdUB5=3DMS_g@mail.gm=
ail.com">
      <meta http-equiv=3D"content-type" content=3D"text/html; charset=3DU=
TF-8">
      <div dir=3D"ltr">
        <div dir=3D"ltr">Hi Jonathan,
          <div>At startup, the init_cal will always be conducted at
            2.5GHz requiring=C2=A0an external LO at 5 GHz.=C2=A0 After th=
e init
            cal, then you can re-tune your external LO to twice the
            desired operating frequency.=C2=A0 It wasn't clear to me from
            your comment if your external LO is initially configured to
            5 GHz or to 2 GHz.=C2=A0 If the latter, try with 5 GHz and if
            startup occurs correctly, retune it to 2 GHz after that
            point.</div>
          <div>Rob</div>
        </div>
      </div>
    </blockquote>
    It has also been suggested to use "init_cals=3DBASIC" in the device
    argument in this situation.=C2=A0 It's not clear to me exactly what<b=
r>
    =C2=A0 that does.<br>
    <br>
    <br>
    <blockquote type=3D"cite"
cite=3D"mid:CAB__hTQGa4a4Ut3EC7+UnGR5Gt2+7vtuFQzy+amGsdUB5=3DMS_g@mail.gm=
ail.com">
      <div dir=3D"ltr"><br>
        <div class=3D"gmail_quote">
          <div dir=3D"ltr" class=3D"gmail_attr">On Wed, Nov 30, 2022 at 1=
:43
            PM Jonathan Tobin &lt;<a
              href=3D"mailto:Tobin@augustusaero.com"
              moz-do-not-send=3D"true" class=3D"moz-txt-link-freetext">To=
bin@augustusaero.com</a>&gt;
            wrote:<br>
          </div>
          <blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px
            0.8ex;border-left:1px solid
            rgb(204,204,204);padding-left:1ex">
            <div class=3D"msg2089835146940256322">
              <div dir=3D"ltr">
                <div
style=3D"font-family:Calibri,Arial,Helvetica,sans-serif;font-size:12pt;co=
lor:rgb(0,0,0);background-color:rgb(255,255,255)">Hello
                  all - I am trying to transmit a test waveform from an
                  N310 using the sample program tx_waveforms. When I set
                  "tx_lo_source=3Dexternal" I get the error below. When I
                  set it to internal, the program runs smoothly, but
                  there is no output. I am supplying an external LO at
                  twice the desired output frequency. I am using uhd
                  4.3.0.0.</div>
                <div
style=3D"font-family:Calibri,Arial,Helvetica,sans-serif;font-size:12pt;co=
lor:rgb(0,0,0);background-color:rgb(255,255,255)"><br>
                </div>
                <div
style=3D"font-family:Calibri,Arial,Helvetica,sans-serif;font-size:12pt;co=
lor:rgb(0,0,0);background-color:rgb(255,255,255)"><br>
                </div>
                <div
style=3D"font-family:Calibri,Arial,Helvetica,sans-serif;font-size:12pt;co=
lor:rgb(0,0,0);background-color:rgb(255,255,255)">./tx_waveforms
                  --args
                  "addr=3D192.168.10.2,master_clock_rate=3D153.6e6,tx_lo_=
source=3Dexternal"
                  --freq 1e9 --gain 10 --bw 1e6 --rate 9.6e6 --subdev
                  "A:1" --channels "0" --wave-freq 100e3
                  <div><br>
                  </div>
                  <div>Creating the usrp device with:
                    addr=3D192.168.10.2,master_clock_rate=3D153.6e6,tx_lo=
_source=3Dexternal...</div>
                  <div>[INFO] [UHD] linux; GNU C++ version 7.5.0;
                    Boost_106501; UHD_4.3.0.HEAD-0-g1f8fd345</div>
                  <div>[INFO] [MPMD] Initializing 1 device(s) in
                    parallel with args:
mgmt_addr=3D192.168.10.2,type=3Dn3xx,product=3Dn310,serial=3D3218B5F,name=
=3Dni-n3xx-3218B5F,fpga=3DHG,claimed=3DFalse,addr=3D192.168.10.2,master_c=
lock_rate=3D153.6e6,tx_lo_source=3Dexternal</div>
                  <div>[INFO] [MPM.PeriphManager] init() called with
                    device args
`fpga=3DHG,master_clock_rate=3D153.6e6,mgmt_addr=3D192.168.10.2,name=3Dni=
-n3xx-3218B5F,product=3Dn310,tx_lo_source=3Dexternal,clock_source=3Dinter=
nal,time_source=3Dinternal'.</div>
                  <div>[ERROR] [RPC] RuntimeError:
                    MYKONOS_waitInitCals() returned an ARM error</div>
                  <div><br>
                  </div>
                  <div>[ERROR] [MPM.RPCServer] init() failed with error:
                    RuntimeError: MYKONOS_waitInitCals() returned an ARM
                    error</div>
                  <div><br>
                  </div>
                  Error: RuntimeError: Error during RPC call to `init'.
                  Error message: RuntimeError: MYKONOS_waitInitCals()
                  returned an ARM error<br>
                </div>
                <div
style=3D"font-family:Calibri,Arial,Helvetica,sans-serif;font-size:12pt;co=
lor:rgb(0,0,0);background-color:rgb(255,255,255)"><br>
                </div>
                <div
style=3D"font-family:Calibri,Arial,Helvetica,sans-serif;font-size:12pt;co=
lor:rgb(0,0,0);background-color:rgb(255,255,255)"><br>
                </div>
                <div
style=3D"font-family:Calibri,Arial,Helvetica,sans-serif;font-size:12pt;co=
lor:rgb(0,0,0);background-color:rgb(255,255,255)"><br>
                </div>
                <div
style=3D"font-family:Calibri,Arial,Helvetica,sans-serif;font-size:12pt;co=
lor:rgb(0,0,0);background-color:rgb(255,255,255)">Thanks,
                  <div>Jonathan</div>
                </div>
              </div>
              _______________________________________________<br>
              USRP-users mailing list -- <a
                href=3D"mailto:usrp-users@lists.ettus.com" target=3D"_bla=
nk"
                moz-do-not-send=3D"true" class=3D"moz-txt-link-freetext">=
usrp-users@lists.ettus.com</a><br>
              To unsubscribe send an email to <a
                href=3D"mailto:usrp-users-leave@lists.ettus.com"
                target=3D"_blank" moz-do-not-send=3D"true"
                class=3D"moz-txt-link-freetext">usrp-users-leave@lists.et=
tus.com</a><br>
            </div>
          </blockquote>
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
    <br>
  </body>
</html>

--------------DNXoYxdAvGBA5IeAzRBdyqD4--

--===============8920957989144978256==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============8920957989144978256==--
