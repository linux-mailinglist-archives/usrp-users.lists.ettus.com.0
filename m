Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id C64D745782D
	for <lists+usrp-users@lfdr.de>; Fri, 19 Nov 2021 22:34:51 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 92313383ED7
	for <lists+usrp-users@lfdr.de>; Fri, 19 Nov 2021 16:34:50 -0500 (EST)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=ettus-com.20210112.gappssmtp.com header.i=@ettus-com.20210112.gappssmtp.com header.b="fhzJ1gkx";
	dkim-atps=neutral
Received: from mail-ot1-f47.google.com (mail-ot1-f47.google.com [209.85.210.47])
	by mm2.emwd.com (Postfix) with ESMTPS id 0DC40383EBB
	for <usrp-users@lists.ettus.com>; Fri, 19 Nov 2021 16:34:03 -0500 (EST)
Received: by mail-ot1-f47.google.com with SMTP id a23-20020a9d4717000000b0056c15d6d0caso18661514otf.12
        for <usrp-users@lists.ettus.com>; Fri, 19 Nov 2021 13:34:03 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ettus-com.20210112.gappssmtp.com; s=20210112;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=cCYYj1dpxdIttJzWMscpKvRsPKwl+nUBpr9CxnUiUGA=;
        b=fhzJ1gkxqFGm7hcKeMILyI4rCdq1rHa6EsDGFHwu+0WGS+XhkNB8U/bu3VXU2FeSxw
         WEJzTdBL0YeLkt7mRRDas+ZFcoYlrfW81bTyjNFcnR7/SV5v7r9uukAdmNog/EBQMGK1
         bEVzAoUB2+v8IXgGKay3Yv57HP3kFXdhHE9OvIa1cs86qRFPpOV5Nqzs8rZpYgOGoEHr
         GvidDK9VMHWj6aj1vUxNHFeTHJM8/YFvJ8XNhUu5QmkKs3PnU7rc6gsm3dVE3wVajGje
         veh0pJHZ3ynjHl9OpziFXzwThhG0+PCnTX6Nu61FeYN9nl317AS0No0dz9zuhO6tockH
         lhmw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=cCYYj1dpxdIttJzWMscpKvRsPKwl+nUBpr9CxnUiUGA=;
        b=1JQMlnq7MEvjaHI4FTG7Q6hZ8cWrFfVe8hA1u/SQVss2TpZlqwONBd63WtBZkAIIpC
         O0SmWSTV15Hsqx4TQgY4AiFVkTY3t5l6sUi+wff8DXVgyPZb9La7g/oer+nDpyINe2Qr
         djCuOjSO02IBhPbt4V0YYzdgDCHB8aFIKT1QjS0vtra5jO8w6Q1GDeXCtyLjX1/gK70G
         zF66mLWkaSwwHv0Y9ZMk798OW6mb+tJWore/QlVBJzoD+vHbqtp6sdWVdWPf2Fb9L1Wv
         tlxBzch+Nne4U8+XWB3Oowis+Z6wcH8h1346/SXk6drGcCpeEAjc5tAATa8DmGBaD2yA
         DMng==
X-Gm-Message-State: AOAM5328/H0XRwKeREkNsmuIGfTScgGY6ovuyYVHzKIAW/9gYcjBXawL
	ykZXQXf09uMWOh4WgBu7HNxDC3GIALz8F9oYgty3mZmz
X-Google-Smtp-Source: ABdhPJxa6R3LYdVl1z5hptXkNVFZmgRrziFa+1TgusVJx6XnuH6ooD6cTWMEOVAnmXLn68L131Mz5DDhuZHkRMSa5do=
X-Received: by 2002:a05:6830:2643:: with SMTP id f3mr7545328otu.187.1637357643384;
 Fri, 19 Nov 2021 13:34:03 -0800 (PST)
MIME-Version: 1.0
References: <d078107dcf9a451fa06aabce9066ae81@gtri.gatech.edu> <CAB__hTSsRx7v0Ob4YNsju08O=8J8ESE+P89KOApWiKifPNRQAw@mail.gmail.com>
In-Reply-To: <CAB__hTSsRx7v0Ob4YNsju08O=8J8ESE+P89KOApWiKifPNRQAw@mail.gmail.com>
From: Wade Fife <wade.fife@ettus.com>
Date: Fri, 19 Nov 2021 15:33:48 -0600
Message-ID: <CAFche=gNebkUovuoP0FFNbzpg1cS6CEJwXrrJtdAaHQF-vVHqA@mail.gmail.com>
To: Rob Kossler <rkossler@nd.edu>
Message-ID-Hash: N6OT35M37DJC5EJFBXR5L6MXJ37OQQKD
X-Message-ID-Hash: N6OT35M37DJC5EJFBXR5L6MXJ37OQQKD
X-MailFrom: wade.fife@ettus.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: "Rich, Michael" <Michael.Rich@gtri.gatech.edu>, "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Testbench Compile Error
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/N6OT35M37DJC5EJFBXR5L6MXJ37OQQKD/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============3980502221659543826=="

--===============3980502221659543826==
Content-Type: multipart/alternative; boundary="000000000000b45ad805d12b0840"

--000000000000b45ad805d12b0840
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

This means there's a file that set default_nettype to none somewhere. That
setting will affect the files that get compiled after it, and in your case
gray2bin.v doesn't like it.

Like Rob said, you can add "`default_nettype wire" to the top of the file
that's having issues and it should compile after that.

Check any files you've added to make sure they don't leave the
default_nettype as none. The general convention is to put "`default_nettype
none" at the top of a file but have "`default_nettype wire"at the end of a
file to avoid messing up any other files in the compile.

Wade

On Fri, Nov 19, 2021 at 1:04 PM Rob Kossler <rkossler@nd.edu> wrote:

> Are you able to run the testbench for the provided "rfnoc-example"
> folder?  I notice that the gain testbench that is part of this example ha=
s
> the following as the last statement. Perhaps this is needed?
>
> `default_nettype wire
>
> On Fri, Nov 19, 2021 at 11:53 AM Rich, Michael via USRP-users <
> usrp-users@lists.ettus.com> wrote:
>
>> I=E2=80=99m trying to run the testbench for a new module I created (UHD4=
) and I=E2=80=99m
>> getting the following error:
>>
>>
>>
>> INFO: [VRFC 10-2263] Analyzing Verilog file
>> "/home/nvd/uhd/fpga/usrp3/lib/control/gray2bin.v" into library
>> xil_defaultlib
>>
>> INFO: [VRFC 10-311] analyzing module gray2bin
>>
>> ERROR: [VRFC 10-1103] net type must be explicitly specified for 'gray'
>> when default_nettype is none
>> [/home/nvd/uhd/fpga/usrp3/lib/control/gray2bin.v:13]
>>
>> ERROR: [VRFC 10-3594] non-net port 'gray' cannot be of mode input
>> [/home/nvd/uhd/fpga/usrp3/lib/control/gray2bin.v:13]
>>
>> ERROR: [VRFC 10-845] illegal operand for operator ^
>> [/home/nvd/uhd/fpga/usrp3/lib/control/gray2bin.v:21]
>>
>> ERROR: [VRFC 10-2865] module 'gray2bin' ignored due to previous errors
>> [/home/nvd/uhd/fpga/usrp3/lib/control/gray2bin.v:10]
>>
>>
>>
>> This file seems to compile without issue on my previous testbench, so I=
=E2=80=99m
>> not sure what the difference would be here. If anyone has any insights i=
nto
>> what could be going on I=E2=80=99d greatly appreciate it.
>>
>>
>>
>> Thank you,
>>
>>
>>
>> *Michael H. Rich*
>>
>> *Electronic Systems Laboratory*
>>
>> *Georgia Tech Research Institute=C2=AE*
>>
>> Phone: (404) 407-8358
>>
>> E-mail: michael.rich@gtri.gatech.edu
>>
>>
>> _______________________________________________
>> USRP-users mailing list -- usrp-users@lists.ettus.com
>> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>>
> _______________________________________________
> USRP-users mailing list -- usrp-users@lists.ettus.com
> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>

--000000000000b45ad805d12b0840
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>This means there&#39;s a file that set default_nettyp=
e to none somewhere. That setting will affect the files that get compiled a=
fter it, and in your case gray2bin.v doesn&#39;t like it.</div><div><br></d=
iv><div>Like Rob said, you can add &quot;`default_nettype wire&quot; to the=
 top of the file that&#39;s having issues and it should compile after that.=
</div><div><br></div><div>Check any files you&#39;ve added to make sure the=
y don&#39;t leave the default_nettype as none. The general convention is to=
 put=20
&quot;`default_nettype none&quot; at the top of a file but have=20
&quot;`default_nettype wire&quot;at the end of a file to avoid messing up a=
ny other files in the compile.<br></div><div><br></div><div>Wade<br></div><=
/div><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">O=
n Fri, Nov 19, 2021 at 1:04 PM Rob Kossler &lt;<a href=3D"mailto:rkossler@n=
d.edu">rkossler@nd.edu</a>&gt; wrote:<br></div><blockquote class=3D"gmail_q=
uote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,2=
04);padding-left:1ex"><div dir=3D"ltr">Are you able to run the testbench fo=
r the provided &quot;rfnoc-example&quot; folder?=C2=A0 I notice that the ga=
in testbench that is part of this example has the following as the last sta=
tement. Perhaps this is needed?<div><br></div><div>`default_nettype wire<br=
></div></div><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail=
_attr">On Fri, Nov 19, 2021 at 11:53 AM Rich, Michael via USRP-users &lt;<a=
 href=3D"mailto:usrp-users@lists.ettus.com" target=3D"_blank">usrp-users@li=
sts.ettus.com</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" sty=
le=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);paddi=
ng-left:1ex"><div lang=3D"EN-US"><div><p class=3D"MsoNormal">I=E2=80=99m tr=
ying to run the testbench for a new module I created (UHD4) and I=E2=80=99m=
 getting the following error:<u></u><u></u></p><p class=3D"MsoNormal"><u></=
u>=C2=A0<u></u></p><p class=3D"MsoNormal"><span style=3D"font-family:&quot;=
Courier New&quot;">INFO: [VRFC 10-2263] Analyzing Verilog file &quot;/home/=
nvd/uhd/fpga/usrp3/lib/control/gray2bin.v&quot; into library xil_defaultlib=
<u></u><u></u></span></p><p class=3D"MsoNormal"><span style=3D"font-family:=
&quot;Courier New&quot;">INFO: [VRFC 10-311] analyzing module gray2bin<u></=
u><u></u></span></p><p class=3D"MsoNormal"><span style=3D"font-family:&quot=
;Courier New&quot;">ERROR: [VRFC 10-1103] net type must be explicitly speci=
fied for &#39;gray&#39; when default_nettype is none [/home/nvd/uhd/fpga/us=
rp3/lib/control/gray2bin.v:13]<u></u><u></u></span></p><p class=3D"MsoNorma=
l"><span style=3D"font-family:&quot;Courier New&quot;">ERROR: [VRFC 10-3594=
] non-net port &#39;gray&#39; cannot be of mode input [/home/nvd/uhd/fpga/u=
srp3/lib/control/gray2bin.v:13]<u></u><u></u></span></p><p class=3D"MsoNorm=
al"><span style=3D"font-family:&quot;Courier New&quot;">ERROR: [VRFC 10-845=
] illegal operand for operator ^ [/home/nvd/uhd/fpga/usrp3/lib/control/gray=
2bin.v:21]<u></u><u></u></span></p><p class=3D"MsoNormal"><span style=3D"fo=
nt-family:&quot;Courier New&quot;">ERROR: [VRFC 10-2865] module &#39;gray2b=
in&#39; ignored due to previous errors [/home/nvd/uhd/fpga/usrp3/lib/contro=
l/gray2bin.v:10]<u></u><u></u></span></p><p class=3D"MsoNormal"><u></u>=C2=
=A0<u></u></p><p class=3D"MsoNormal">This file seems to compile without iss=
ue on my previous testbench, so I=E2=80=99m not sure what the difference wo=
uld be here. If anyone has any insights into what could be going on I=E2=80=
=99d greatly appreciate it.<u></u><u></u></p><p class=3D"MsoNormal"><u></u>=
=C2=A0<u></u></p><p class=3D"MsoNormal">Thank you,<u></u><u></u></p><p clas=
s=3D"MsoNormal"><b><span style=3D"font-size:12pt;color:black"><u></u>=C2=A0=
<u></u></span></b></p><p class=3D"MsoNormal"><b><span style=3D"font-size:12=
pt;color:black">Michael H. Rich</span></b><span style=3D"color:rgb(31,73,12=
5)"><u></u><u></u></span></p><p class=3D"MsoNormal"><i><span style=3D"font-=
size:10pt;color:black">Electronic Systems Laboratory</span></i><span style=
=3D"color:rgb(31,73,125)"><u></u><u></u></span></p><p class=3D"MsoNormal"><=
b><i><span style=3D"font-size:10pt;color:black">Georgia Tech Research Insti=
tute=C2=AE</span></i></b><span style=3D"color:rgb(31,73,125)"><u></u><u></u=
></span></p><p class=3D"MsoNormal"><span style=3D"font-size:10pt;color:blac=
k">Phone: (404) 407-8358</span><span style=3D"color:rgb(31,73,125)"><u></u>=
<u></u></span></p><p class=3D"MsoNormal"><span style=3D"font-size:10pt;colo=
r:black">E-mail:</span><span style=3D"font-size:10pt;color:rgb(31,73,125)">=
 <a href=3D"mailto:michael.rich@gtri.gatech.edu" target=3D"_blank"><span st=
yle=3D"color:blue">michael.rich@gtri.gatech.edu</span></a></span><span styl=
e=3D"color:rgb(31,73,125)"><u></u><u></u></span></p><p class=3D"MsoNormal">=
<u></u>=C2=A0<u></u></p></div></div>_______________________________________=
________<br>
USRP-users mailing list -- <a href=3D"mailto:usrp-users@lists.ettus.com" ta=
rget=3D"_blank">usrp-users@lists.ettus.com</a><br>
To unsubscribe send an email to <a href=3D"mailto:usrp-users-leave@lists.et=
tus.com" target=3D"_blank">usrp-users-leave@lists.ettus.com</a><br>
</blockquote></div>
_______________________________________________<br>
USRP-users mailing list -- <a href=3D"mailto:usrp-users@lists.ettus.com" ta=
rget=3D"_blank">usrp-users@lists.ettus.com</a><br>
To unsubscribe send an email to <a href=3D"mailto:usrp-users-leave@lists.et=
tus.com" target=3D"_blank">usrp-users-leave@lists.ettus.com</a><br>
</blockquote></div>

--000000000000b45ad805d12b0840--

--===============3980502221659543826==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============3980502221659543826==--
