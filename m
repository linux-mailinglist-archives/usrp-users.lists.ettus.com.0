Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 4DB8D63E559
	for <lists+usrp-users@lfdr.de>; Thu,  1 Dec 2022 00:20:27 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 30C0E3845B1
	for <lists+usrp-users@lfdr.de>; Wed, 30 Nov 2022 18:20:26 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1669850426; bh=2YWHUN4cuPTpNWZVR2DZEJTZu/hUUMzh9lAiGD8ssJQ=;
	h=References:In-Reply-To:From:Date:To:CC:Subject:List-Id:
	 List-Archive:List-Help:List-Owner:List-Post:List-Subscribe:
	 List-Unsubscribe:From;
	b=P7TT2g+CfwT2Q+9XXNB9sAKbhq93sESgxBWwi95PSjEgu/f4L4vO8TF/GZ8S7uP+M
	 etyaMErgSMeVfbVeVCE6/QIrooXw7ZCotDBaCBA3b4T3zntfbOJbMnNYPGX/nXhH6e
	 1rOeHCPCEEVpZ3anXNovPT+vI9DlUrBlymY2I6izik+QJaP85MqrakuP4+UmIvKqUO
	 D6STjgb5YAX+ImqRl+WOzOytZd1xyOeqcP0M3QjTwJBVeyZSsLo1LnNt5pF9Lf5vxL
	 Q0JshZQrE+4qi2BWNckw/CuINNTLFGv311vnM3zkvUUGSc+xEO8CzAXGTeaHTHJLky
	 a+R+fxb7EOluw==
Received: from mail-pl1-f174.google.com (mail-pl1-f174.google.com [209.85.214.174])
	by mm2.emwd.com (Postfix) with ESMTPS id 2161D38445D
	for <usrp-users@lists.ettus.com>; Wed, 30 Nov 2022 18:20:18 -0500 (EST)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="N5K8RoyS";
	dkim-atps=neutral
Received: by mail-pl1-f174.google.com with SMTP id s7so2475010plk.5
        for <usrp-users@lists.ettus.com>; Wed, 30 Nov 2022 15:20:18 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=EzlMttKUIo63QwM1OQu7u1Tch28QK5CkpLwfKj45Vwo=;
        b=N5K8RoySqDfRSVtmTIcqstuwAarT5OhKB2HhZthCnjtmL94LEXNxZWRRK109jSBXkG
         pxrOQqCGk6ugagLZYpJtEoKTt/4220SIX1T6qoYs5jI9Zt5XJ27EpE0F6lalBU3+xkrU
         EmC5x8OnU69C02swep7AV6TIRaPV2MDRFS2/TlEl2OTDAMg1RUtJbbnghiURpUZ5dd6z
         37Fastbq0lmuZyQPq7B0ZgkVajrTVSXnZ7cayS9btpbPp/Rv+55539ozr1Gt4kHoaQUB
         1Dx77n/ooH6aopnQQrQNhDIckItxcP3jcaoiB6bEwMTaeyyelIQDUKMm8qvGGe1QsFTa
         oU7w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=EzlMttKUIo63QwM1OQu7u1Tch28QK5CkpLwfKj45Vwo=;
        b=ZrtK6sROJVnUuh+aHPChHSHX49yhg44ffuWkFRO279nn7ypWn+CuERqO8KtOo5QI3w
         6ri/ylEnGTZRQu/QBI/gT/lN67x7X/HKR3vtlr/m+ytsftMdOkNsKECXPmXz5sVJuH02
         fNd0mS0EZ5AghQt57Pe/lwoSOcH2HlrBxnF0qBnmczB8joCCnbNf21M5SUhBqvWRpUq6
         mT5o1CbzSXqFSYsUOQKY03inrQbT9xz85SAv118wdEGgMy9pzc+aajYXdlol6RfDa3wc
         FHj8raceq7ZwsRMkfsZsWO4m07OJ/E5mveo2mKWO/rEo8HJWHHUZlWWZUmSYVdnCVLRO
         R9yw==
X-Gm-Message-State: ANoB5plP2ysuV3spdWpe/unLCIDnSxeT6qyP9V6bN3zH0eWnonUjXpES
	fpTMyPtxl6+CtEeUJoqgnzlmNF/hp/ElQNvhjtI=
X-Google-Smtp-Source: AA0mqf7L8woO1v/sxocBtTuR6EjJ7fpOB9s6WSQ7Cm2jlNJDyyl/THIw3g1u25zDJ24ckUn/4DHdxyzyxNuc+Zfwf+Q=
X-Received: by 2002:a17:902:b712:b0:189:98b0:8845 with SMTP id
 d18-20020a170902b71200b0018998b08845mr12312309pls.101.1669850417821; Wed, 30
 Nov 2022 15:20:17 -0800 (PST)
MIME-Version: 1.0
References: <BN7PR05MB450083ED49C51CD1D1808E36D5159@BN7PR05MB4500.namprd05.prod.outlook.com>
 <CAB__hTQGa4a4Ut3EC7+UnGR5Gt2+7vtuFQzy+amGsdUB5=MS_g@mail.gmail.com>
In-Reply-To: <CAB__hTQGa4a4Ut3EC7+UnGR5Gt2+7vtuFQzy+amGsdUB5=MS_g@mail.gmail.com>
From: Kenneth Burchfield <ksburchfield@gmail.com>
Date: Wed, 30 Nov 2022 17:20:07 -0600
Message-ID: <CAChZci-a2thTXR70iXBQzT6qC=gqGA7SsuUwAWMwQ9XAmRZmFw@mail.gmail.com>
To: Rob Kossler <rkossler@nd.edu>
Message-ID-Hash: GITQ6BTV64RDGYGEAX7J6MGY4HZ4NSDS
X-Message-ID-Hash: GITQ6BTV64RDGYGEAX7J6MGY4HZ4NSDS
X-MailFrom: ksburchfield@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: Jonathan Tobin <Tobin@augustusaero.com>, usrp-users <usrp-users@lists.ettus.com>
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: TX from N310 External LO Error
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/GITQ6BTV64RDGYGEAX7J6MGY4HZ4NSDS/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============3814737350655358326=="

--===============3814737350655358326==
Content-Type: multipart/alternative; boundary="000000000000fb7c9805eeb858ee"

--000000000000fb7c9805eeb858ee
Content-Type: text/plain; charset="UTF-8"

Hi Jonathan,

What Rob said is correct.  You need to supply a 5 GHz LO initially so that
the startup calibrations for the N310 will be correct.  However, if I
recall correctly, the device should still initialize even with an LO not
equal to 5 GHz (though your going to see imaging / possible LO leakage in
the frequency domain if this is the case).

Is your LO power within spec of the device?  The ad9371 requires an
external LO between +0 dBm and +6 dBm with higher frequencies requiring
higher power.  Providing an LO below that power spec will give you the
MYKONOS_waitInitCals() error.

If you are within that spec, then you can modify your init_cals and
incrementally test adding calibrations until you figure out which
calibration is throwing the error.  So your args would look like this
initially ( --args
"addr=192.168.10.2,master_clock_rate=153.6e6,tx_lo_source=external,init_cals=BASIC")
and then you can add more init_cals by doing
init_cals=BASIC|TX_ATTENUATION_DELAY|PATH_DELAY etc.  The | is the append
operation.  The calibrations are listed in the link below.

https://files.ettus.com/manual/page_usrp_n3xx.html#n3xx_mg_calibrations

Hope this helps
Scott

On Wed, Nov 30, 2022 at 4:48 PM Rob Kossler <rkossler@nd.edu> wrote:

> Hi Jonathan,
> At startup, the init_cal will always be conducted at 2.5GHz requiring an
> external LO at 5 GHz.  After the init cal, then you can re-tune your
> external LO to twice the desired operating frequency.  It wasn't clear to
> me from your comment if your external LO is initially configured to 5 GHz
> or to 2 GHz.  If the latter, try with 5 GHz and if startup occurs
> correctly, retune it to 2 GHz after that point.
> Rob
>
> On Wed, Nov 30, 2022 at 1:43 PM Jonathan Tobin <Tobin@augustusaero.com>
> wrote:
>
>> Hello all - I am trying to transmit a test waveform from an N310 using
>> the sample program tx_waveforms. When I set "tx_lo_source=external" I get
>> the error below. When I set it to internal, the program runs smoothly, but
>> there is no output. I am supplying an external LO at twice the desired
>> output frequency. I am using uhd 4.3.0.0.
>>
>>
>> ./tx_waveforms --args
>> "addr=192.168.10.2,master_clock_rate=153.6e6,tx_lo_source=external" --freq
>> 1e9 --gain 10 --bw 1e6 --rate 9.6e6 --subdev "A:1" --channels "0"
>> --wave-freq 100e3
>>
>> Creating the usrp device with:
>> addr=192.168.10.2,master_clock_rate=153.6e6,tx_lo_source=external...
>> [INFO] [UHD] linux; GNU C++ version 7.5.0; Boost_106501;
>> UHD_4.3.0.HEAD-0-g1f8fd345
>> [INFO] [MPMD] Initializing 1 device(s) in parallel with args:
>> mgmt_addr=192.168.10.2,type=n3xx,product=n310,serial=3218B5F,name=ni-n3xx-3218B5F,fpga=HG,claimed=False,addr=192.168.10.2,master_clock_rate=153.6e6,tx_lo_source=external
>> [INFO] [MPM.PeriphManager] init() called with device args
>> `fpga=HG,master_clock_rate=153.6e6,mgmt_addr=192.168.10.2,name=ni-n3xx-3218B5F,product=n310,tx_lo_source=external,clock_source=internal,time_source=internal'.
>> [ERROR] [RPC] RuntimeError: MYKONOS_waitInitCals() returned an ARM error
>>
>> [ERROR] [MPM.RPCServer] init() failed with error: RuntimeError:
>> MYKONOS_waitInitCals() returned an ARM error
>>
>> Error: RuntimeError: Error during RPC call to `init'. Error message:
>> RuntimeError: MYKONOS_waitInitCals() returned an ARM error
>>
>>
>>
>> Thanks,
>> Jonathan
>> _______________________________________________
>> USRP-users mailing list -- usrp-users@lists.ettus.com
>> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>>
> _______________________________________________
> USRP-users mailing list -- usrp-users@lists.ettus.com
> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>

--000000000000fb7c9805eeb858ee
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi Jonathan,<div><br></div><div>What Rob said is correct.=
=C2=A0 You need to supply a 5 GHz LO initially so that the startup calibrat=
ions for the N310 will be correct.=C2=A0 However, if I recall correctly, th=
e device should still initialize even with an LO not equal to 5 GHz (though=
 your going to see imaging / possible LO leakage in the frequency domain if=
 this is the case).</div><div><br></div><div>Is your LO power within spec o=
f the device?=C2=A0 The ad9371 requires an external LO between=C2=A0+0 dBm =
and=C2=A0+6 dBm with higher frequencies requiring higher power.=C2=A0 Provi=
ding an LO below that power spec will give you the MYKONOS_waitInitCals() e=
rror.</div><div><br></div><div>If you are within that spec, then you can mo=
dify your init_cals and incrementally test adding calibrations until you fi=
gure out which calibration is throwing the error.=C2=A0 So your args would =
look like this initially ( --args &quot;addr=3D192.168.10.2,master_clock_ra=
te=3D153.6e6,tx_lo_source=3Dexternal,init_cals=3DBASIC&quot;)=C2=A0 and the=
n you can add more init_cals by doing init_cals=3DBASIC|TX_ATTENUATION_DELA=
Y|PATH_DELAY etc.=C2=A0 The | is the append operation.=C2=A0 The calibratio=
ns are listed in the link below.</div><div><br></div><div><a href=3D"https:=
//files.ettus.com/manual/page_usrp_n3xx.html#n3xx_mg_calibrations">https://=
files.ettus.com/manual/page_usrp_n3xx.html#n3xx_mg_calibrations</a><br></di=
v><div><br></div><div>Hope this helps</div><div>Scott</div></div><br><div c=
lass=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Wed, Nov 30, =
2022 at 4:48 PM Rob Kossler &lt;<a href=3D"mailto:rkossler@nd.edu">rkossler=
@nd.edu</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"=
margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-lef=
t:1ex"><div dir=3D"ltr"><div dir=3D"ltr">Hi Jonathan,<div>At startup, the i=
nit_cal will always be conducted at 2.5GHz requiring=C2=A0an external LO at=
 5 GHz.=C2=A0 After the init cal, then you can re-tune your external LO to =
twice the desired operating frequency.=C2=A0 It wasn&#39;t clear to me from=
 your comment if your external LO is initially configured to 5 GHz or to 2 =
GHz.=C2=A0 If the latter, try with 5 GHz and if startup occurs correctly, r=
etune it to 2 GHz after that point.</div><div>Rob</div></div><br><div class=
=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Wed, Nov 30, 2022=
 at 1:43 PM Jonathan Tobin &lt;<a href=3D"mailto:Tobin@augustusaero.com" ta=
rget=3D"_blank">Tobin@augustusaero.com</a>&gt; wrote:<br></div><blockquote =
class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px sol=
id rgb(204,204,204);padding-left:1ex"><div>




<div dir=3D"ltr">
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif;font-size:12pt=
;color:rgb(0,0,0);background-color:rgb(255,255,255)">
Hello all - I am trying to transmit a test waveform from an N310 using the =
sample program tx_waveforms. When I set &quot;tx_lo_source=3Dexternal&quot;=
 I get the error below. When I set it to internal, the program runs smoothl=
y, but there is no output. I am supplying an
 external LO at twice the desired output frequency. I am using uhd 4.3.0.0.=
</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif;font-size:12pt=
;color:rgb(0,0,0);background-color:rgb(255,255,255)">
<br>
</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif;font-size:12pt=
;color:rgb(0,0,0);background-color:rgb(255,255,255)">
<br>
</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif;font-size:12pt=
;color:rgb(0,0,0);background-color:rgb(255,255,255)">
./tx_waveforms --args &quot;addr=3D192.168.10.2,master_clock_rate=3D153.6e6=
,tx_lo_source=3Dexternal&quot; --freq 1e9 --gain 10 --bw 1e6 --rate 9.6e6 -=
-subdev &quot;A:1&quot; --channels &quot;0&quot; --wave-freq 100e3
<div><br>
</div>
<div>Creating the usrp device with: addr=3D192.168.10.2,master_clock_rate=
=3D153.6e6,tx_lo_source=3Dexternal...</div>
<div>[INFO] [UHD] linux; GNU C++ version 7.5.0; Boost_106501; UHD_4.3.0.HEA=
D-0-g1f8fd345</div>
<div>[INFO] [MPMD] Initializing 1 device(s) in parallel with args: mgmt_add=
r=3D192.168.10.2,type=3Dn3xx,product=3Dn310,serial=3D3218B5F,name=3Dni-n3xx=
-3218B5F,fpga=3DHG,claimed=3DFalse,addr=3D192.168.10.2,master_clock_rate=3D=
153.6e6,tx_lo_source=3Dexternal</div>
<div>[INFO] [MPM.PeriphManager] init() called with device args `fpga=3DHG,m=
aster_clock_rate=3D153.6e6,mgmt_addr=3D192.168.10.2,name=3Dni-n3xx-3218B5F,=
product=3Dn310,tx_lo_source=3Dexternal,clock_source=3Dinternal,time_source=
=3Dinternal&#39;.</div>
<div>[ERROR] [RPC] RuntimeError: MYKONOS_waitInitCals() returned an ARM err=
or</div>
<div><br>
</div>
<div>[ERROR] [MPM.RPCServer] init() failed with error: RuntimeError: MYKONO=
S_waitInitCals() returned an ARM error</div>
<div><br>
</div>
Error: RuntimeError: Error during RPC call to `init&#39;. Error message: Ru=
ntimeError: MYKONOS_waitInitCals() returned an ARM error<br>
</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif;font-size:12pt=
;color:rgb(0,0,0);background-color:rgb(255,255,255)">
<br>
</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif;font-size:12pt=
;color:rgb(0,0,0);background-color:rgb(255,255,255)">
<br>
</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif;font-size:12pt=
;color:rgb(0,0,0);background-color:rgb(255,255,255)">
<br>
</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif;font-size:12pt=
;color:rgb(0,0,0);background-color:rgb(255,255,255)">
Thanks,
<div>Jonathan</div>
</div>
</div>

_______________________________________________<br>
USRP-users mailing list -- <a href=3D"mailto:usrp-users@lists.ettus.com" ta=
rget=3D"_blank">usrp-users@lists.ettus.com</a><br>
To unsubscribe send an email to <a href=3D"mailto:usrp-users-leave@lists.et=
tus.com" target=3D"_blank">usrp-users-leave@lists.ettus.com</a><br>
</div></blockquote></div></div>
_______________________________________________<br>
USRP-users mailing list -- <a href=3D"mailto:usrp-users@lists.ettus.com" ta=
rget=3D"_blank">usrp-users@lists.ettus.com</a><br>
To unsubscribe send an email to <a href=3D"mailto:usrp-users-leave@lists.et=
tus.com" target=3D"_blank">usrp-users-leave@lists.ettus.com</a><br>
</blockquote></div>

--000000000000fb7c9805eeb858ee--

--===============3814737350655358326==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============3814737350655358326==--
