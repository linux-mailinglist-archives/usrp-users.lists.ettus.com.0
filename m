Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 366C963E39B
	for <lists+usrp-users@lfdr.de>; Wed, 30 Nov 2022 23:47:10 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id C42BE38458E
	for <lists+usrp-users@lfdr.de>; Wed, 30 Nov 2022 17:47:08 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1669848428; bh=xXO1GHbxKJLoV2+SxSU3TPT8wIm89ndMTFDdKp/CuOc=;
	h=References:In-Reply-To:From:Date:To:CC:Subject:List-Id:
	 List-Archive:List-Help:List-Owner:List-Post:List-Subscribe:
	 List-Unsubscribe:From;
	b=cn4FxwkSrKOCtAtsBseW+rCcYRMqSZ+BGy2SHYToSTAKzPAVr3zjU8l6/7zRHvNoZ
	 WwS2yM/M5sSRN9PWwhNrpqINYiZHcfEgXrEZmNCgiYdICszXJOI1qnW/EMvwXclVb5
	 VOIk14nAuw2AvpPqEXyJUd0yW4aDfyeuh9+kPY6aDCFVRoYGGyJtmRzR2bDh4UC4Ww
	 Pr2j0VuNrLK6BT9RU8WM6c58wRCcj7uNeBJQ88fWkA86P5rCRkNXhCPJJHl8IsabCh
	 JoJeVvMBsHLqC/T29VyzmrZl6kaqfjiBtIYrWtbSZ6v+jOv21mr6eD2Bar8L1wtoEf
	 TOERFjYoyjOqA==
Received: from mail-ej1-f43.google.com (mail-ej1-f43.google.com [209.85.218.43])
	by mm2.emwd.com (Postfix) with ESMTPS id C1A01384585
	for <usrp-users@lists.ettus.com>; Wed, 30 Nov 2022 17:47:01 -0500 (EST)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=nd.edu header.i=@nd.edu header.b="iNbjoera";
	dkim-atps=neutral
Received: by mail-ej1-f43.google.com with SMTP id e27so44870ejc.12
        for <usrp-users@lists.ettus.com>; Wed, 30 Nov 2022 14:47:01 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=nd.edu; s=google;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=BeCQZX4ZM6JyRucnjbGwEcripcFiAgj6+O7Ig7wzg4c=;
        b=iNbjoeraymIT6jjpkU7TMErT8LFzqaHayMqBSiezE46Kb2rOiUuU5vV7TlOeGeCdrA
         wRs9mA8nuEYvnGGUzHda1BFMxIQRVnAVl3FiCbRqb/lVgwToy2SKnBRfwmYHvLkXgbyq
         ykbon1C4hc43wDfVYEhz+Z4JGUFZvB9EXvWL42AvnGQenCNKHSt7tdk3J4O+oEyXJUAq
         vkiR0Pr3s0VllphKgOty+m3TflIQbrR18oCaoKdYXnpMA4RZFFMesDzCyC0nSvHxH+30
         +ed0n0EXlmsrPoaSSVVwDbjzG5g553rOA3rrC1LMUTEjlYGobbnYRPLIhNQal7IRsSHR
         bplA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=BeCQZX4ZM6JyRucnjbGwEcripcFiAgj6+O7Ig7wzg4c=;
        b=YTqnhhK/umkvkZdsF3T+vY7nCCt7q6oB4/356IIDpO8tPE+y8jHv5jdbV/s8efdM4U
         Tr7O2V+WtsuPewcUxwtzcK4yPANAursqvC8EtnIR2BeeP0idebmOr0j4qZuh5s7GgcEn
         IUSo9r2sN5uX5CRCJnh38K354/gPVtqoLuJBok1bZmDVsW6+DXkuPpRs4iaS7Fn2lbqe
         eJ4+/Jmrtujb8GmP2gV/Xqlw6t1IF0TIXMQmzPEljOPpGP/tpAHEEYIsT4JqG0BCAvyn
         ahEcR8TEirSvCx2OlHMy1QPvrq9bm/1ydGQa9iFchi5Bex1N+67GyWN0cHbBhMyCcgQh
         qf8Q==
X-Gm-Message-State: ANoB5pn6ZrqXVRKV8JrDZv1rGWWdBsOGgWjxcaTSnK0PzjFOFLzCM9Rm
	6vGXhM3Rk8yX47kk88tSEDMv661EXxAGeqXYbavOLNu+pNs=
X-Google-Smtp-Source: AA0mqf5rdzcbqvblJOMq8+v50owPrmrSgd+wU18Fxm9gyJgY5dEF8DNpwOphsZblFSjyG5an8ubNygDXNWzAlKP39pc=
X-Received: by 2002:a17:907:cf92:b0:7bf:7a65:b242 with SMTP id
 ux18-20020a170907cf9200b007bf7a65b242mr14688769ejc.356.1669848420288; Wed, 30
 Nov 2022 14:47:00 -0800 (PST)
MIME-Version: 1.0
References: <BN7PR05MB450083ED49C51CD1D1808E36D5159@BN7PR05MB4500.namprd05.prod.outlook.com>
In-Reply-To: <BN7PR05MB450083ED49C51CD1D1808E36D5159@BN7PR05MB4500.namprd05.prod.outlook.com>
From: Rob Kossler <rkossler@nd.edu>
Date: Wed, 30 Nov 2022 17:46:49 -0500
Message-ID: <CAB__hTQGa4a4Ut3EC7+UnGR5Gt2+7vtuFQzy+amGsdUB5=MS_g@mail.gmail.com>
To: Jonathan Tobin <Tobin@augustusaero.com>
Message-ID-Hash: OHWGWTCPMC6Q6HPGQVEQSVHSHMDI5ANK
X-Message-ID-Hash: OHWGWTCPMC6Q6HPGQVEQSVHSHMDI5ANK
X-MailFrom: rkossler@nd.edu
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: usrp-users <usrp-users@lists.ettus.com>
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: TX from N310 External LO Error
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/OHWGWTCPMC6Q6HPGQVEQSVHSHMDI5ANK/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============5220137134260619069=="

--===============5220137134260619069==
Content-Type: multipart/alternative; boundary="000000000000ebc67505eeb7e154"

--000000000000ebc67505eeb7e154
Content-Type: text/plain; charset="UTF-8"

Hi Jonathan,
At startup, the init_cal will always be conducted at 2.5GHz requiring an
external LO at 5 GHz.  After the init cal, then you can re-tune your
external LO to twice the desired operating frequency.  It wasn't clear to
me from your comment if your external LO is initially configured to 5 GHz
or to 2 GHz.  If the latter, try with 5 GHz and if startup occurs
correctly, retune it to 2 GHz after that point.
Rob

On Wed, Nov 30, 2022 at 1:43 PM Jonathan Tobin <Tobin@augustusaero.com>
wrote:

> Hello all - I am trying to transmit a test waveform from an N310 using the
> sample program tx_waveforms. When I set "tx_lo_source=external" I get the
> error below. When I set it to internal, the program runs smoothly, but
> there is no output. I am supplying an external LO at twice the desired
> output frequency. I am using uhd 4.3.0.0.
>
>
> ./tx_waveforms --args
> "addr=192.168.10.2,master_clock_rate=153.6e6,tx_lo_source=external" --freq
> 1e9 --gain 10 --bw 1e6 --rate 9.6e6 --subdev "A:1" --channels "0"
> --wave-freq 100e3
>
> Creating the usrp device with:
> addr=192.168.10.2,master_clock_rate=153.6e6,tx_lo_source=external...
> [INFO] [UHD] linux; GNU C++ version 7.5.0; Boost_106501;
> UHD_4.3.0.HEAD-0-g1f8fd345
> [INFO] [MPMD] Initializing 1 device(s) in parallel with args:
> mgmt_addr=192.168.10.2,type=n3xx,product=n310,serial=3218B5F,name=ni-n3xx-3218B5F,fpga=HG,claimed=False,addr=192.168.10.2,master_clock_rate=153.6e6,tx_lo_source=external
> [INFO] [MPM.PeriphManager] init() called with device args
> `fpga=HG,master_clock_rate=153.6e6,mgmt_addr=192.168.10.2,name=ni-n3xx-3218B5F,product=n310,tx_lo_source=external,clock_source=internal,time_source=internal'.
> [ERROR] [RPC] RuntimeError: MYKONOS_waitInitCals() returned an ARM error
>
> [ERROR] [MPM.RPCServer] init() failed with error: RuntimeError:
> MYKONOS_waitInitCals() returned an ARM error
>
> Error: RuntimeError: Error during RPC call to `init'. Error message:
> RuntimeError: MYKONOS_waitInitCals() returned an ARM error
>
>
>
> Thanks,
> Jonathan
> _______________________________________________
> USRP-users mailing list -- usrp-users@lists.ettus.com
> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>

--000000000000ebc67505eeb7e154
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr">Hi Jonathan,<div>At startup, the init_cal=
 will always be conducted at 2.5GHz requiring=C2=A0an external LO at 5 GHz.=
=C2=A0 After the init cal, then you can re-tune your external LO to twice t=
he desired operating frequency.=C2=A0 It wasn&#39;t clear to me from your c=
omment if your external LO is initially configured to 5 GHz or to 2 GHz.=C2=
=A0 If the latter, try with 5 GHz and if startup occurs correctly, retune i=
t to 2 GHz after that point.</div><div>Rob</div></div><br><div class=3D"gma=
il_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Wed, Nov 30, 2022 at 1:4=
3 PM Jonathan Tobin &lt;<a href=3D"mailto:Tobin@augustusaero.com">Tobin@aug=
ustusaero.com</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" sty=
le=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);paddi=
ng-left:1ex"><div class=3D"msg2089835146940256322">




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

--000000000000ebc67505eeb7e154--

--===============5220137134260619069==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============5220137134260619069==--
