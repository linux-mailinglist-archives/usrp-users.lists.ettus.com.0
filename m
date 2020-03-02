Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 82BE017660A
	for <lists+usrp-users@lfdr.de>; Mon,  2 Mar 2020 22:34:08 +0100 (CET)
Received: from [::1] (port=57838 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1j8shQ-0006ve-PP; Mon, 02 Mar 2020 16:34:04 -0500
Received: from mail-oi1-f178.google.com ([209.85.167.178]:46141)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
 (Exim 4.93) (envelope-from <varban.metodiev@gmail.com>)
 id 1j8shM-0006pf-K8
 for usrp-users@lists.ettus.com; Mon, 02 Mar 2020 16:34:00 -0500
Received: by mail-oi1-f178.google.com with SMTP id a22so735014oid.13
 for <usrp-users@lists.ettus.com>; Mon, 02 Mar 2020 13:33:40 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=uR+frPSuSm9b7cVdISCDwfpENQWdCyTX3YZ/HdlBZRw=;
 b=uqiPvaLFAAc6X32krGu71jK1HIKrMi6WRfliCFJfvphRaOrjnxaGGikxgaZZEKbhJ0
 4qtxeUfCXyMeuQXylSd/koqd6Gi6hYYFjevANArAuVUgR4LSxsde3kux48b18cBhyGIX
 d3Rc0gYZHrtBdmpg/RasfvQDM9ufjKwdLcNK0+eCyvsaJE8kR1Spy8dSOxZJj0y2b4hU
 EZaxzxZjW9bMqtetEo0xKM7Kl/YEJGqkxWCQo1ApFmTNdTKePBbhoQuglHTuJzLVC+CP
 6rFrXCOgytq0joBFYxErX+h8CDmZ69VuULXHQQriT3UhYU9oAy0aTtnHESRqRBHVZQMP
 89vw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=uR+frPSuSm9b7cVdISCDwfpENQWdCyTX3YZ/HdlBZRw=;
 b=UTSK7+pkXdp+eGUzV1koBFEGa3pCIRF4Q4wUgrPSFri30WhZousmYOxr3vUcvon9Fx
 oOl7HZnhKVmfpI3wDIXQMHHhUGMOMCAziflU5fHQLceSX96vYQYIAvPONw+ifgyPGblC
 1LNCO6t8VhvxgHweisekbOQi4RsysFD7MJIOxdSYd8Vd3ItvVt6Xmj7GT6lTZyJRsDmG
 1AOi1AYe6g4RBpvjgsJfeIPmEFLIxgxGfam0Tw26wwowZGWlu7cFv+kqSj6xkepcD46C
 sho5SMwi21BNqskiUVfL8i4gS3DcKLROOR3ElO/+jOcB0qwffPEUn75KZb6Jp+uoqvbb
 uEIQ==
X-Gm-Message-State: ANhLgQ2D70F3vPPhgDAHcZIpJYAn6O7XCAdfEWUl4jG/41d+mxTVZ3Bx
 79iz+IlctV6jtFbT1nL9jckAEU349jM9XCZbkSbN/exz
X-Google-Smtp-Source: ADFU+vv8/z2CbGi1UYae6FQzrH26uWb/wxfMZLJDTHqrf4tXkwE3hQ3wDBYf0SbVSWEVePHSnNpDuskxpfZxQTieI2w=
X-Received: by 2002:aca:ea46:: with SMTP id i67mr282994oih.149.1583184798157; 
 Mon, 02 Mar 2020 13:33:18 -0800 (PST)
MIME-Version: 1.0
References: <CAKA0MUgBBu3m5cbL4J_Amy-97TNE=GBGThLPK35OARkV5mZxEg@mail.gmail.com>
 <CAL7q81s_PahAkzJo9hMSseQQWymB1d3Cu3Gk3ZhSsKw_q2jAiw@mail.gmail.com>
 <CAKA0MUiwsMDD5=ivtz92RN5zZT5bEBTsTfbW7-S-0JJRCpG6kg@mail.gmail.com>
In-Reply-To: <CAKA0MUiwsMDD5=ivtz92RN5zZT5bEBTsTfbW7-S-0JJRCpG6kg@mail.gmail.com>
Date: Mon, 2 Mar 2020 13:33:04 -0800
Message-ID: <CAKA0MUj189DV7ELpqdSZJTSVYCYxyhVeCQ-ei2r2ntFgc6Dm9w@mail.gmail.com>
To: Jonathon Pendlum <jonathon.pendlum@ettus.com>
Content-Type: multipart/mixed; boundary="00000000000085c2d0059fe5ef57"
Subject: Re: [USRP-users] Polling the "sample_rx" via a user defined
 register (B205mini)
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
From: Varban Metodiev via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Varban Metodiev <varban.metodiev@gmail.com>
Cc: usrp-users <usrp-users@lists.ettus.com>
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

--00000000000085c2d0059fe5ef57
Content-Type: multipart/alternative; boundary="00000000000085c2ce059fe5ef55"

--00000000000085c2ce059fe5ef55
Content-Type: text/plain; charset="UTF-8"

Hi Jonathon,

After separating the I and Q channels, I think that the values with
detached RX input look reasonable (please see *I_Q_data_custom_build.txt*).
What do you think?
I am reading my custom register with a modified version of
*rx_samples_to_file* (attached as well, line 92 - 100).

Now, when I try to send some reference sine waves via the *tx_waveforms*
example running on another PC attached to another USRP B205mini, I get
unexplainable data.
The default data type in the *tx_waveforms* is fc32, do I need to recompile
it with sc16 for this case?

Kind regards,
V.

On Wed, Feb 26, 2020 at 1:36 AM Varban Metodiev <varban.metodiev@gmail.com>
wrote:

> Hi Jonathon,
>
> Thank you very much for your reply.
>
> What do you want to accomplish?
> --> Right now, I just want to monitor the 'sample_rx' values. Eventually,
> I will use this to calibrate the reference input of my custom Verilog
> decoder (attached) that aims to detect spikes and measure their length
> (like those from the attachment).
>
> It is a short complex int where the upper 16-bits are I and the lower
> 16-bits are Q.
> --> Well... that could be the explanation. I will try to monitor them
> separately and get back to you.
>
> Kind regards,
> Varban
>
> On Tue, Feb 25, 2020 at 8:50 PM Jonathon Pendlum <
> jonathon.pendlum@ettus.com> wrote:
>
>> Hi Varban,
>>
>> I am now getting random 32-bit values when polling it from the UHD
>>> (instead of a constant that indicates a "zero" reception)
>>
>>
>> Even with the antenna disconnected you can expect some LSBs to toggle due
>> to inherent receiver noise.
>>
>> 1) How should I interpret the 32-variable?
>>>
>>
>> It is a short complex int where the upper 16-bits are I and the lower
>> 16-bits are Q.
>>
>>
>>> 2) Is the strobe_rx the correct signal that indicates new sample arrival?
>>>
>>
>> Yes
>>
>>
>>> 2) Do I need new_rx_control?
>>
>>
>> No
>>
>> Have I done this correctly in general, or there is something completely
>>> wrong in my approach?
>>
>>
>> What do you want to accomplish?
>>
>> Jonathon
>>
>> On Mon, Feb 17, 2020 at 5:03 AM Varban Metodiev via USRP-users <
>> usrp-users@lists.ettus.com> wrote:
>>
>>> Dear all,
>>>
>>> After exposing the *sample_rx* from radio_legacy.v
>>> <https://github.com/EttusResearch/uhd/blob/master/fpga/usrp3/lib/radio_200/radio_legacy.v> to
>>> a user defined register and sampling it at rising edge of the
>>> *strobe_rx*, I am now getting random 32-bit values when polling it from
>>> the UHD (instead of a constant that indicates a "zero" reception). I am
>>> doing this with disconnected antenna using a modified rx_samples C++
>>> example application.
>>>
>>> I have the following questions:
>>> 1) How should I interpret the 32-variable?
>>> 2) Is the strobe_rx the correct signal that indicates new sample arrival?
>>> 2) Do I need new_rx_control?
>>>
>>> Have I done this correctly in general, or there is something completely
>>> wrong in my approach?
>>>
>>> Thanks,
>>> Varban
>>> _______________________________________________
>>> USRP-users mailing list
>>> USRP-users@lists.ettus.com
>>> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
>>>
>>

--00000000000085c2ce059fe5ef55
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Hi Jonathon,</div><div><br></div><div>After separatin=
g the I and Q channels, I think that the values with detached RX input look=
 reasonable (please see <i>I_Q_data_custom_build.txt</i>). What do you thin=
k?</div><div>I am reading my custom register with a modified version of <i>=
rx_samples_to_file</i> (attached as well, line 92 - 100). <br></div><div><b=
r></div><div>Now, when I try to send some reference sine waves via the <i>t=
x_waveforms</i> example running on another PC attached to another USRP B205=
mini, I get unexplainable data.</div><div>The default data type in the <i>t=
x_waveforms</i><i> </i>is fc32, do I need to recompile it with sc16 for thi=
s case?</div><div><br></div><div>Kind regards,</div><div>V.<br></div></div>=
<br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Wed=
, Feb 26, 2020 at 1:36 AM Varban Metodiev &lt;<a href=3D"mailto:varban.meto=
diev@gmail.com">varban.metodiev@gmail.com</a>&gt; wrote:<br></div><blockquo=
te class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px =
solid rgb(204,204,204);padding-left:1ex"><div dir=3D"ltr">Hi=C2=A0Jonathon,=
<div><br></div><div>Thank you very much for your reply.</div><div><br></div=
><div><div>What do you want to accomplish?=C2=A0</div><div>--&gt; Right now=
, I just want to monitor the &#39;sample_rx&#39; values. Eventually, I will=
 use this to calibrate the reference input of my custom Verilog decoder (at=
tached) that aims to detect spikes and measure their length (like those fro=
m the attachment).</div></div><div><br></div><div><div>It is a short comple=
x int where the upper 16-bits are I and the lower 16-bits are Q.</div><font=
 color=3D"#000000">--&gt; Well... that could be the explanation. I will try=
 to monitor them separately and get=C2=A0back to you.</font></div><div><fon=
t color=3D"#000000"><br></font></div><div><font color=3D"#000000">Kind rega=
rds,</font></div><div><font color=3D"#000000">Varban</font></div></div><br>=
<div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Tue, Fe=
b 25, 2020 at 8:50 PM Jonathon Pendlum &lt;<a href=3D"mailto:jonathon.pendl=
um@ettus.com" target=3D"_blank">jonathon.pendlum@ettus.com</a>&gt; wrote:<b=
r></div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex=
;border-left:1px solid rgb(204,204,204);padding-left:1ex"><div dir=3D"ltr">=
Hi Varban,<div><br></div><blockquote class=3D"gmail_quote" style=3D"margin:=
0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex">=
I am now getting random 32-bit values when polling it from the UHD (instead=
 of a constant that indicates a &quot;zero&quot; reception)</blockquote><di=
v><br></div><div>Even with the antenna disconnected you can expect some LSB=
s to toggle due to inherent receiver noise.=C2=A0</div><div><br></div><bloc=
kquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:=
1px solid rgb(204,204,204);padding-left:1ex">1) How should I interpret the =
32-variable?<br></blockquote><div><br></div><div>It is a short complex int =
where the upper 16-bits are I and the lower 16-bits are Q.</div><div>=C2=A0=
</div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;b=
order-left:1px solid rgb(204,204,204);padding-left:1ex">2) Is the strobe_rx=
 the correct signal that indicates new sample arrival?<br></blockquote><div=
><br></div><div>Yes</div><div>=C2=A0</div><blockquote class=3D"gmail_quote"=
 style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);p=
adding-left:1ex">2) Do I need new_rx_control?</blockquote><div><br></div><d=
iv>No</div><div><br></div><blockquote class=3D"gmail_quote" style=3D"margin=
:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex"=
>Have I done this correctly in general, or there is something completely wr=
ong in my approach?=C2=A0</blockquote><div><br></div><div>What do you want =
to accomplish?=C2=A0</div><div><br></div><div>Jonathon</div></div><br><div =
class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Mon, Feb 17,=
 2020 at 5:03 AM Varban Metodiev via USRP-users &lt;<a href=3D"mailto:usrp-=
users@lists.ettus.com" target=3D"_blank">usrp-users@lists.ettus.com</a>&gt;=
 wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px =
0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex"><div dir=
=3D"ltr">Dear all,<div><br></div><div>After exposing the <b><i>sample_rx</i=
></b> from=C2=A0<a href=3D"https://github.com/EttusResearch/uhd/blob/master=
/fpga/usrp3/lib/radio_200/radio_legacy.v" target=3D"_blank">radio_legacy.v<=
/a>=C2=A0to a user defined register and sampling it at rising edge of the <=
span style=3D"color:rgb(36,41,46);font-family:SFMono-Regular,Consolas,&quot=
;Liberation Mono&quot;,Menlo,monospace;font-size:12px;white-space:pre-wrap"=
><i style=3D"font-weight:bold">strobe_rx</i>, I am now getting random 32-bi=
t values when polling it from the UHD (instead of a constant that indicates=
 a &quot;zero&quot; reception). I am doing this with disconnected antenna u=
sing a modified rx_samples C++ example application. </span></div><div><font=
 face=3D"SFMono-Regular, Consolas, Liberation Mono, Menlo, monospace" color=
=3D"#24292e"><span style=3D"font-size:12px;white-space:pre-wrap"><br></span=
></font></div><div><font face=3D"SFMono-Regular, Consolas, Liberation Mono,=
 Menlo, monospace" color=3D"#24292e"><span style=3D"font-size:12px;white-sp=
ace:pre-wrap">I have the following questions:</span></font></div><div><font=
 face=3D"SFMono-Regular, Consolas, Liberation Mono, Menlo, monospace" color=
=3D"#24292e"><span style=3D"font-size:12px;white-space:pre-wrap">1) How sho=
uld I interpret the 32-variable?</span></font></div><div><font face=3D"SFMo=
no-Regular, Consolas, Liberation Mono, Menlo, monospace" color=3D"#24292e">=
<span style=3D"font-size:12px;white-space:pre-wrap">2) Is the strobe_rx the=
 correct signal that indicates new sample arrival?</span></font></div><div>=
<div><font face=3D"SFMono-Regular, Consolas, Liberation Mono, Menlo, monosp=
ace" color=3D"#24292e"><span style=3D"font-size:12px;white-space:pre-wrap">=
2) Do I need </span></font><span style=3D"color:rgb(34,134,58);font-family:=
SFMono-Regular,Consolas,&quot;Liberation Mono&quot;,Menlo,monospace;font-si=
ze:12px;white-space:pre-wrap">new_rx_control</span><span style=3D"font-size=
:12px;white-space:pre-wrap;color:rgb(36,41,46);font-family:SFMono-Regular,C=
onsolas,&quot;Liberation Mono&quot;,Menlo,monospace">?</span></div><div></d=
iv></div><div><br></div><div>Have I done=C2=A0this correctly in general, or=
 there is something completely wrong in my approach?=C2=A0</div><div><br></=
div><div>Thanks,</div><div>Varban</div></div>
_______________________________________________<br>
USRP-users mailing list<br>
<a href=3D"mailto:USRP-users@lists.ettus.com" target=3D"_blank">USRP-users@=
lists.ettus.com</a><br>
<a href=3D"http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.c=
om" rel=3D"noreferrer" target=3D"_blank">http://lists.ettus.com/mailman/lis=
tinfo/usrp-users_lists.ettus.com</a><br>
</blockquote></div>
</blockquote></div>
</blockquote></div>

--00000000000085c2ce059fe5ef55--
--00000000000085c2d0059fe5ef57
Content-Type: text/plain; charset="US-ASCII"; name="I_Q_data_custom_build.txt"
Content-Disposition: attachment; filename="I_Q_data_custom_build.txt"
Content-Transfer-Encoding: base64
Content-ID: <f_k7ay43r10>
X-Attachment-Id: f_k7ay43r10

dm1ldG9kaWV2QHVidW50dTp+L0RldmVsb3BtZW50L1NEUi91aGQvaG9zdC9idWlsZC9leGFtcGxl
cyQgc3VkbyAuL3J4X3NhbXBsZXNfdG9fZmlsZSAtLWZyZXEgMmU5IC0tcmF0ZSAxZTYgLS1idyAx
ZTYgLS1nYWluIDYwIAoKQ3JlYXRpbmcgdGhlIHVzcnAgZGV2aWNlIHdpdGg6IC4uLgpbSU5GT10g
W1VIRF0gbGludXg7IEdOVSBDKysgdmVyc2lvbiA5LjIuMSAyMDE5MTAwODsgQm9vc3RfMTA2NzAw
OyBVSERfNC4wLjAuMC00MzYtZzQ1NzE5MjYwCltJTkZPXSBbQjIwMF0gRGV0ZWN0ZWQgRGV2aWNl
OiBCMjA1bWluaQpbSU5GT10gW0IyMDBdIE9wZXJhdGluZyBvdmVyIFVTQiAzLgpbSU5GT10gW0Iy
MDBdIEluaXRpYWxpemUgQ09ERUMgY29udHJvbC4uLgpbSU5GT10gW0IyMDBdIEluaXRpYWxpemUg
UmFkaW8gY29udHJvbC4uLgpbSU5GT10gW0IyMDBdIFBlcmZvcm1pbmcgcmVnaXN0ZXIgbG9vcGJh
Y2sgdGVzdC4uLiAKW0lORk9dIFtCMjAwXSBSZWdpc3RlciBsb29wYmFjayB0ZXN0IHBhc3NlZApb
SU5GT10gW0IyMDBdIFNldHRpbmcgbWFzdGVyIGNsb2NrIHJhdGUgc2VsZWN0aW9uIHRvICdhdXRv
bWF0aWMnLgpbSU5GT10gW0IyMDBdIEFza2luZyBmb3IgY2xvY2sgcmF0ZSAxNi4wMDAwMDAgTUh6
Li4uIApbSU5GT10gW0IyMDBdIEFjdHVhbGx5IGdvdCBjbG9jayByYXRlIDE2LjAwMDAwMCBNSHou
ClVzaW5nIERldmljZTogU2luZ2xlIFVTUlA6CiAgRGV2aWNlOiBCLVNlcmllcyBEZXZpY2UKICBN
Ym9hcmQgMDogQjIwNW1pbmkKICBSWCBDaGFubmVsOiAwCiAgICBSWCBEU1A6IDAKICAgIFJYIERi
b2FyZDogQQogICAgUlggU3ViZGV2OiBGRS1SWDEKICBUWCBDaGFubmVsOiAwCiAgICBUWCBEU1A6
IDAKICAgIFRYIERib2FyZDogQQogICAgVFggU3ViZGV2OiBGRS1UWDEKClNldHRpbmcgUlggUmF0
ZTogMS4wMDAwMDAgTXNwcy4uLgpbSU5GT10gW0IyMDBdIEFza2luZyBmb3IgY2xvY2sgcmF0ZSAz
Mi4wMDAwMDAgTUh6Li4uIApbSU5GT10gW0IyMDBdIEFjdHVhbGx5IGdvdCBjbG9jayByYXRlIDMy
LjAwMDAwMCBNSHouCkFjdHVhbCBSWCBSYXRlOiAxLjAwMDAwMCBNc3BzLi4uCgpTZXR0aW5nIFJY
IEZyZXE6IDIwMDAuMDAwMDAwIE1Iei4uLgpTZXR0aW5nIFJYIExPIE9mZnNldDogMC4wMDAwMDAg
TUh6Li4uCkFjdHVhbCBSWCBGcmVxOiAyMDAwLjAwMDAwMCBNSHouLi4KClNldHRpbmcgUlggR2Fp
bjogNjAuMDAwMDAwIGRCLi4uCkFjdHVhbCBSWCBHYWluOiA2MC4wMDAwMDAgZEIuLi4KClNldHRp
bmcgUlggQmFuZHdpZHRoOiAxLjAwMDAwMCBNSHouLi4KQWN0dWFsIFJYIEJhbmR3aWR0aDogMS4w
MDAwMDAgTUh6Li4uCgpXYWl0aW5nIGZvciAibG9fbG9ja2VkIjogKysrKysrKysrKyBsb2NrZWQu
CgpQcmVzcyBDdHJsICsgQyB0byBzdG9wIHN0cmVhbWluZy4uLgpJOiAyNgpROiA2Ci0tLS0tLS0t
LS0tLS0KSTogLTQ2ClE6IC0zMAotLS0tLS0tLS0tLS0tCkk6IC00MwpROiAtMwotLS0tLS0tLS0t
LS0tCkk6IC0zOQpROiAtMjQKLS0tLS0tLS0tLS0tLQpJOiAyMQpROiAtMTUKLS0tLS0tLS0tLS0t
LQpJOiAtMjIKUTogNzAKLS0tLS0tLS0tLS0tLQpJOiAtMTMKUTogMjkKLS0tLS0tLS0tLS0tLQpJ
OiAtNApROiAwCi0tLS0tLS0tLS0tLS0KSTogMTQKUTogMTMKLS0tLS0tLS0tLS0tLQpJOiAtNTEK
UTogLTM2Ci0tLS0tLS0tLS0tLS0KSTogLTE2ClE6IDM3Ci0tLS0tLS0tLS0tLS0KSTogLTEwClE6
IC0yNQotLS0tLS0tLS0tLS0tCkk6IDIwClE6IDIzCi0tLS0tLS0tLS0tLS0KSTogLTY2ClE6IC00
OQotLS0tLS0tLS0tLS0tCkk6IC0zClE6IC0xOAotLS0tLS0tLS0tLS0tCkk6IDE0ClE6IDQKLS0t
LS0tLS0tLS0tLQpJOiAtNwpROiAyMgotLS0tLS0tLS0tLS0tCkk6IC0zMQpROiAzMgotLS0tLS0t
LS0tLS0tCkk6IDIxClE6IDI4Ci0tLS0tLS0tLS0tLS0KSTogLTI2ClE6IDEKLS0tLS0tLS0tLS0t
LQpJOiAtMjMKUTogMzcKLS0tLS0tLS0tLS0tLQpJOiA4ClE6IDEyCi0tLS0tLS0tLS0tLS0KSTog
LTE0ClE6IDEzCi0tLS0tLS0tLS0tLS0KSTogLTEKUTogLTI1Ci0tLS0tLS0tLS0tLS0KSTogLTc2
ClE6IDUwCi0tLS0tLS0tLS0tLS0KSTogNTAKUTogLTM5Ci0tLS0tLS0tLS0tLS0KSTogLTIyClE6
IDUKLS0tLS0tLS0tLS0tLQpJOiA3ClE6IC00NgotLS0tLS0tLS0tLS0tCkk6IC01MQpROiAtMwot
LS0tLS0tLS0tLS0tCkk6IDMKUTogLTM1Ci0tLS0tLS0tLS0tLS0KSTogMTAKUTogLTYzCi0tLS0t
LS0tLS0tLS0KSTogLTgKUTogLTUxCi0tLS0tLS0tLS0tLS0KSTogLTM2ClE6IC00MwotLS0tLS0t
LS0tLS0tCkk6IDI2ClE6IDU0Ci0tLS0tLS0tLS0tLS0KSTogLTE5ClE6IC0zNgotLS0tLS0tLS0t
LS0tCkk6IDM4ClE6IDI0Ci0tLS0tLS0tLS0tLS0KSTogLTI4ClE6IDIyCi0tLS0tLS0tLS0tLS0K
STogLTIzClE6IC03Ci0tLS0tLS0tLS0tLS0KSTogMTYKUTogMTcKLS0tLS0tLS0tLS0tLQpJOiAy
MQpROiAyCi0tLS0tLS0tLS0tLS0KSTogLTEzClE6IC0zMAotLS0tLS0tLS0tLS0tCkk6IDQ5ClE6
IC0xNAotLS0tLS0tLS0tLS0tCkk6IC01NQpROiAtMjEKLS0tLS0tLS0tLS0tLQpJOiAtMjIKUTog
NjIKLS0tLS0tLS0tLS0tLQpJOiAyNApROiAtMzcKLS0tLS0tLS0tLS0tLQpJOiAxMgpROiAxMgot
LS0tLS0tLS0tLS0tCkk6IDEKUTogMTkKLS0tLS0tLS0tLS0tLQpJOiAtNDYKUTogNDMKLS0tLS0t
LS0tLS0tLQpJOiA0OApROiAtNjgKLS0tLS0tLS0tLS0tLQpJOiAxNgpROiAtMjAKLS0tLS0tLS0t
LS0tLQpJOiAtMzUKUTogLTM0Ci0tLS0tLS0tLS0tLS0KSTogLTMwClE6IC0yNQotLS0tLS0tLS0t
LS0tCkk6IC00NQpROiAwCi0tLS0tLS0tLS0tLS0KSTogMTcKUTogNgotLS0tLS0tLS0tLS0tCkk6
IC02OApROiAtNDAKLS0tLS0tLS0tLS0tLQpJOiAtMjgKUTogLTI5Ci0tLS0tLS0tLS0tLS0KSTog
NDEKUTogMzIKLS0tLS0tLS0tLS0tLQpJOiAtNApROiAxNgotLS0tLS0tLS0tLS0tCkk6IDMKUTog
MQotLS0tLS0tLS0tLS0tCkk6IDE4ClE6IC0zMwotLS0tLS0tLS0tLS0tCkk6IDM5ClE6IDM4Ci0t
LS0tLS0tLS0tLS0KSTogLTE5ClE6IC0xMQotLS0tLS0tLS0tLS0tCkk6IDE5ClE6IC0yMgotLS0t
LS0tLS0tLS0tCkk6IC0yMgpROiAzOAotLS0tLS0tLS0tLS0tCkk6IC0yNwpROiAyNAotLS0tLS0t
LS0tLS0tCkk6IDI3ClE6IC0yCi0tLS0tLS0tLS0tLS0KSTogLTIzClE6IC00MgotLS0tLS0tLS0t
LS0tCkk6IDgKUTogLTU2Ci0tLS0tLS0tLS0tLS0KSTogLTYKUTogLTIxCi0tLS0tLS0tLS0tLS0K
STogLTgKUTogMTMKLS0tLS0tLS0tLS0tLQpJOiA5ClE6IDM0Ci0tLS0tLS0tLS0tLS0KSTogMjkK
UTogMzcKLS0tLS0tLS0tLS0tLQpJOiAtMzcKUTogLTMwCi0tLS0tLS0tLS0tLS0KSTogLTQ1ClE6
IC0yMQotLS0tLS0tLS0tLS0tCkk6IDYKUTogLTM5Ci0tLS0tLS0tLS0tLS0KSTogMzMKUTogLTQw
Ci0tLS0tLS0tLS0tLS0KSTogLTQ3ClE6IDM1Ci0tLS0tLS0tLS0tLS0KSTogNDUKUTogLTE0Ci0t
LS0tLS0tLS0tLS0KSTogMwpROiAzMgotLS0tLS0tLS0tLS0tCkk6IDE5ClE6IC0xMwotLS0tLS0t
LS0tLS0tCkk6IC0yClE6IDIyCi0tLS0tLS0tLS0tLS0KSTogNApROiA3MAotLS0tLS0tLS0tLS0t
Ckk6IC0zNQpROiAtNDQKLS0tLS0tLS0tLS0tLQpJOiAtMTAKUTogLTQ0Ci0tLS0tLS0tLS0tLS0K
STogMTMKUTogLTQxCi0tLS0tLS0tLS0tLS0KSTogMjgKUTogMTcKLS0tLS0tLS0tLS0tLQpJOiAt
MjYKUTogLTMKLS0tLS0tLS0tLS0tLQpJOiAzMgpROiAyMgotLS0tLS0tLS0tLS0tCkk6IC0yNApR
OiAtMzYKLS0tLS0tLS0tLS0tLQpJOiAtMTIKUTogMjAKLS0tLS0tLS0tLS0tLQpJOiA0ClE6IDIx
Ci0tLS0tLS0tLS0tLS0KSTogLTI0ClE6IDUKLS0tLS0tLS0tLS0tLQpJOiAtMTgKUTogLTQ4Ci0t
LS0tLS0tLS0tLS0KSTogLTMxClE6IDUxCi0tLS0tLS0tLS0tLS0KSTogLTExClE6IDMxCi0tLS0t
LS0tLS0tLS0KSTogMjYKUTogMAotLS0tLS0tLS0tLS0tCkk6IDIzClE6IDgKLS0tLS0tLS0tLS0t
LQpJOiAtMjgKUTogLTEwCi0tLS0tLS0tLS0tLS0KSTogNDEKUTogLTYKLS0tLS0tLS0tLS0tLQpJ
OiAtMjYKUTogMQotLS0tLS0tLS0tLS0tCkk6IDI1ClE6IC00MgotLS0tLS0tLS0tLS0tCkk6IC04
ClE6IC04Ci0tLS0tLS0tLS0tLS0KSTogNTYKUTogNwotLS0tLS0tLS0tLS0tCkk6IC02NwpROiAz
MgotLS0tLS0tLS0tLS0tCkk6IC0xMApROiAtNDYKLS0tLS0tLS0tLS0tLQpJOiAzMQpROiAtNjAK
LS0tLS0tLS0tLS0tLQpJOiAtMjkKUTogLTgyCi0tLS0tLS0tLS0tLS0KSTogLTc0ClE6IC0xNwot
LS0tLS0tLS0tLS0tCkk6IDI0ClE6IDQyCi0tLS0tLS0tLS0tLS0KSTogLTE2ClE6IC00NAotLS0t
LS0tLS0tLS0tCkk6IDYyClE6IDM0Ci0tLS0tLS0tLS0tLS0KSTogLTExClE6IC0xNwotLS0tLS0t
LS0tLS0tCkk6IC00NgpROiAtMTEKLS0tLS0tLS0tLS0tLQpJOiAyMwpROiAtNQotLS0tLS0tLS0t
LS0tCkk6IDY3ClE6IDczCi0tLS0tLS0tLS0tLS0KSTogMzEKUTogMjYKLS0tLS0tLS0tLS0tLQpJ
OiAtMTcKUTogNTYKLS0tLS0tLS0tLS0tLQpJOiAtMzUKUTogLTUzCi0tLS0tLS0tLS0tLS0KSTog
MzYKUTogNgotLS0tLS0tLS0tLS0tCkk6IC04NApROiAtNTMKLS0tLS0tLS0tLS0tLQpJOiAzMgpR
OiAtNTYKLS0tLS0tLS0tLS0tLQpJOiAzNApROiAtMTQKLS0tLS0tLS0tLS0tLQpJOiAtNzkKUTog
NgotLS0tLS0tLS0tLS0tCkk6IC03NgpROiAyCi0tLS0tLS0tLS0tLS0KSTogLTMwClE6IDkKLS0t
LS0tLS0tLS0tLQpJOiAtNQpROiAtMTcKLS0tLS0tLS0tLS0tLQpJOiAtOApROiA2NQotLS0tLS0t
LS0tLS0tCkk6IC0yMQpROiAtMjUKLS0tLS0tLS0tLS0tLQpJOiAyMwpROiAzNgotLS0tLS0tLS0t
LS0tCkk6IC0yNApROiA5Ci0tLS0tLS0tLS0tLS0KSTogLTIyClE6IDQxCi0tLS0tLS0tLS0tLS0K
STogLTYyClE6IDYwCi0tLS0tLS0tLS0tLS0KSTogNDkKUTogLTYKLS0tLS0tLS0tLS0tLQpJOiAt
MTEKUTogLTM4Ci0tLS0tLS0tLS0tLS0KSTogNzAKUTogMTUKLS0tLS0tLS0tLS0tLQpJOiAyNwpR
OiAtOQotLS0tLS0tLS0tLS0tCkk6IC01MgpROiAxMQotLS0tLS0tLS0tLS0tCkk6IDUzClE6IC0y
MAotLS0tLS0tLS0tLS0tCkk6IDY3ClE6IC0zNQotLS0tLS0tLS0tLS0tCkk6IC0xOApROiAzNgot
LS0tLS0tLS0tLS0tCkk6IDQ5ClE6IDUKLS0tLS0tLS0tLS0tLQpJOiAtMjEKUTogNDgKLS0tLS0t
LS0tLS0tLQpJOiA0MgpROiA5Ci0tLS0tLS0tLS0tLS0KSTogLTQ3ClE6IDgKLS0tLS0tLS0tLS0t
LQpJOiAzClE6IC01MgotLS0tLS0tLS0tLS0tCkk6IDQyClE6IDkKLS0tLS0tLS0tLS0tLQpJOiAt
MjEKUTogLTI4Ci0tLS0tLS0tLS0tLS0KSTogLTUyClE6IC04MQotLS0tLS0tLS0tLS0tCkk6IC01
NwpROiAtNTAKLS0tLS0tLS0tLS0tLQpJOiA1OQpROiAtMTQKLS0tLS0tLS0tLS0tLQpJOiAyMApR
OiAxNAotLS0tLS0tLS0tLS0tCkk6IC02NgpROiAtMQotLS0tLS0tLS0tLS0tCkk6IC02OQpROiA0
Ci0tLS0tLS0tLS0tLS0KSTogMjEKUTogLTUxCi0tLS0tLS0tLS0tLS0KSTogMTYKUTogLTMxCi0t
LS0tLS0tLS0tLS0KSTogLTY2ClE6IDIzCi0tLS0tLS0tLS0tLS0KSTogLTUKUTogLTc1Ci0tLS0t
LS0tLS0tLS0KSTogNjcKUTogMgotLS0tLS0tLS0tLS0tCkk6IDI4ClE6IC0xNAotLS0tLS0tLS0t
LS0tCkk6IDUxClE6IDM4Ci0tLS0tLS0tLS0tLS0KSTogNDcKUTogLTg5Ci0tLS0tLS0tLS0tLS0K
STogNDkKUTogLTUyCi0tLS0tLS0tLS0tLS0KSTogNTUKUTogLTQ4Ci0tLS0tLS0tLS0tLS0KSTog
NjYKUTogLTkKLS0tLS0tLS0tLS0tLQpJOiAtNDQKUTogLTM5Ci0tLS0tLS0tLS0tLS0KSTogLTU1
ClE6IC01Ci0tLS0tLS0tLS0tLS0KSTogNzUKUTogLTEyCi0tLS0tLS0tLS0tLS0KSTogNDMKUTog
NjgKLS0tLS0tLS0tLS0tLQpJOiAtMzUKUTogLTM2Ci0tLS0tLS0tLS0tLS0KSTogMTE0ClE6IC0z
MwotLS0tLS0tLS0tLS0tCkk6IC0xNQpROiAtMjQKLS0tLS0tLS0tLS0tLQpJOiAyOQpROiAtMjUK
LS0tLS0tLS0tLS0tLQpJOiA4ClE6IC0yMgotLS0tLS0tLS0tLS0tCkk6IDI4ClE6IDIKLS0tLS0t
LS0tLS0tLQpJOiAwClE6IDEzCi0tLS0tLS0tLS0tLS0KSTogMTgKUTogLTI0Ci0tLS0tLS0tLS0t
LS0KSTogMjgKUTogLTIKLS0tLS0tLS0tLS0tLQpJOiAtODMKUTogMTQKLS0tLS0tLS0tLS0tLQpJ
OiAtMjkKUTogLTYKLS0tLS0tLS0tLS0tLQpJOiAtMjQKUTogLTUxCi0tLS0tLS0tLS0tLS0KSTog
LTIwClE6IC0yNgotLS0tLS0tLS0tLS0tCkk6IDMyClE6IC00MgotLS0tLS0tLS0tLS0tCkk6IDIw
ClE6IC01MgotLS0tLS0tLS0tLS0tCkk6IC00NApROiAtMzkKLS0tLS0tLS0tLS0tLQpJOiAtNDMK
UTogLTUyCi0tLS0tLS0tLS0tLS0KSTogMTAKUTogMzEKLS0tLS0tLS0tLS0tLQpJOiAxOQpROiAx
NgotLS0tLS0tLS0tLS0tCkk6IC0zMgpROiAtNDMKLS0tLS0tLS0tLS0tLQpJOiAxNQpROiAxMQot
LS0tLS0tLS0tLS0tCkk6IDU4ClE6IC0zNQotLS0tLS0tLS0tLS0tCkk6IDAKUTogNTgKLS0tLS0t
LS0tLS0tLQpJOiAtNgpROiAzOQotLS0tLS0tLS0tLS0tCkk6IDIKUTogMzIKLS0tLS0tLS0tLS0t
LQpJOiAxClE6IDExCi0tLS0tLS0tLS0tLS0KSTogNDUKUTogLTExCi0tLS0tLS0tLS0tLS0KSTog
LTM1ClE6IC00NAotLS0tLS0tLS0tLS0tCkk6IC0zClE6IDM5Ci0tLS0tLS0tLS0tLS0KSTogMjQK
UTogNDQKLS0tLS0tLS0tLS0tLQpJOiAzClE6IDQzCi0tLS0tLS0tLS0tLS0KSTogLTI3ClE6IC00
NQotLS0tLS0tLS0tLS0tCkk6IDYKUTogMzcKLS0tLS0tLS0tLS0tLQpJOiAxNApROiAtMQotLS0t
LS0tLS0tLS0tCkk6IDMyClE6IC0yMgotLS0tLS0tLS0tLS0tCg==
--00000000000085c2d0059fe5ef57
Content-Type: text/x-c++src; charset="US-ASCII"; name="rx_samples_to_file_modified.cpp"
Content-Disposition: attachment; filename="rx_samples_to_file_modified.cpp"
Content-Transfer-Encoding: base64
Content-ID: <f_k7ayahmr1>
X-Attachment-Id: f_k7ayahmr1

Ly8KLy8gQ29weXJpZ2h0IDIwMTAtMjAxMSwyMDE0IEV0dHVzIFJlc2VhcmNoIExMQwovLyBDb3B5
cmlnaHQgMjAxOCBFdHR1cyBSZXNlYXJjaCwgYSBOYXRpb25hbCBJbnN0cnVtZW50cyBDb21wYW55
Ci8vCi8vIFNQRFgtTGljZW5zZS1JZGVudGlmaWVyOiBHUEwtMy4wLW9yLWxhdGVyCi8vCgojaW5j
bHVkZSA8dWhkL2V4Y2VwdGlvbi5ocHA+CiNpbmNsdWRlIDx1aGQvdHlwZXMvdHVuZV9yZXF1ZXN0
LmhwcD4KI2luY2x1ZGUgPHVoZC91c3JwL211bHRpX3VzcnAuaHBwPgojaW5jbHVkZSA8dWhkL3V0
aWxzL3NhZmVfbWFpbi5ocHA+CiNpbmNsdWRlIDx1aGQvdXRpbHMvdGhyZWFkLmhwcD4KI2luY2x1
ZGUgPGJvb3N0L2Zvcm1hdC5ocHA+CiNpbmNsdWRlIDxib29zdC9sZXhpY2FsX2Nhc3QuaHBwPgoj
aW5jbHVkZSA8Ym9vc3QvcHJvZ3JhbV9vcHRpb25zLmhwcD4KI2luY2x1ZGUgPGNocm9ubz4KI2lu
Y2x1ZGUgPGNvbXBsZXg+CiNpbmNsdWRlIDxjc2lnbmFsPgojaW5jbHVkZSA8ZnN0cmVhbT4KI2lu
Y2x1ZGUgPGlvc3RyZWFtPgojaW5jbHVkZSA8dGhyZWFkPgoKbmFtZXNwYWNlIHBvID0gYm9vc3Q6
OnByb2dyYW1fb3B0aW9uczsKCnN0YXRpYyBib29sIHN0b3Bfc2lnbmFsX2NhbGxlZCA9IGZhbHNl
Owp2b2lkIHNpZ19pbnRfaGFuZGxlcihpbnQpCnsKICAgIHN0b3Bfc2lnbmFsX2NhbGxlZCA9IHRy
dWU7Cn0KCnRlbXBsYXRlIDx0eXBlbmFtZSBzYW1wX3R5cGU+CnZvaWQgcmVjdl90b19maWxlKHVo
ZDo6dXNycDo6bXVsdGlfdXNycDo6c3B0ciB1c3JwLAogICAgY29uc3Qgc3RkOjpzdHJpbmcmIGNw
dV9mb3JtYXQsCiAgICBjb25zdCBzdGQ6OnN0cmluZyYgd2lyZV9mb3JtYXQsCiAgICBjb25zdCBz
aXplX3QmIGNoYW5uZWwsCiAgICBjb25zdCBzdGQ6OnN0cmluZyYgZmlsZSwKICAgIHNpemVfdCBz
YW1wc19wZXJfYnVmZiwKICAgIHVuc2lnbmVkIGxvbmcgbG9uZyBudW1fcmVxdWVzdGVkX3NhbXBs
ZXMsCiAgICBkb3VibGUgdGltZV9yZXF1ZXN0ZWQgICAgICAgPSAwLjAsCiAgICBib29sIGJ3X3N1
bW1hcnkgICAgICAgICAgICAgPSBmYWxzZSwKICAgIGJvb2wgc3RhdHMgICAgICAgICAgICAgICAg
ICA9IGZhbHNlLAogICAgYm9vbCBudWxsICAgICAgICAgICAgICAgICAgID0gZmFsc2UsCiAgICBi
b29sIGVuYWJsZV9zaXplX21hcCAgICAgICAgPSBmYWxzZSwKICAgIGJvb2wgY29udGludWVfb25f
YmFkX3BhY2tldCA9IGZhbHNlKQp7CiAgICB1bnNpZ25lZCBsb25nIGxvbmcgbnVtX3RvdGFsX3Nh
bXBzID0gMDsKICAgIC8vIGNyZWF0ZSBhIHJlY2VpdmUgc3RyZWFtZXIKICAgIHVoZDo6c3RyZWFt
X2FyZ3NfdCBzdHJlYW1fYXJncyhjcHVfZm9ybWF0LCB3aXJlX2Zvcm1hdCk7CiAgICBzdGQ6OnZl
Y3RvcjxzaXplX3Q+IGNoYW5uZWxfbnVtczsKICAgIGNoYW5uZWxfbnVtcy5wdXNoX2JhY2soY2hh
bm5lbCk7CiAgICBzdHJlYW1fYXJncy5jaGFubmVscyAgICAgICAgICAgICA9IGNoYW5uZWxfbnVt
czsKICAgIHVoZDo6cnhfc3RyZWFtZXI6OnNwdHIgcnhfc3RyZWFtID0gdXNycC0+Z2V0X3J4X3N0
cmVhbShzdHJlYW1fYXJncyk7CgogICAgdWhkOjpyeF9tZXRhZGF0YV90IG1kOwogICAgc3RkOjp2
ZWN0b3I8c2FtcF90eXBlPiBidWZmKHNhbXBzX3Blcl9idWZmKTsKICAgIHN0ZDo6b2ZzdHJlYW0g
b3V0ZmlsZTsKICAgIGlmIChub3QgbnVsbCkKICAgICAgICBvdXRmaWxlLm9wZW4oZmlsZS5jX3N0
cigpLCBzdGQ6Om9mc3RyZWFtOjpiaW5hcnkpOwogICAgYm9vbCBvdmVyZmxvd19tZXNzYWdlID0g
dHJ1ZTsKCiAgICAvLyBzZXR1cCBzdHJlYW1pbmcKICAgIHVoZDo6c3RyZWFtX2NtZF90IHN0cmVh
bV9jbWQoKG51bV9yZXF1ZXN0ZWRfc2FtcGxlcyA9PSAwKQogICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgPyB1aGQ6OnN0cmVhbV9jbWRfdDo6U1RSRUFNX01PREVfU1RBUlRfQ09O
VElOVU9VUwogICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgOiB1aGQ6OnN0cmVh
bV9jbWRfdDo6U1RSRUFNX01PREVfTlVNX1NBTVBTX0FORF9ET05FKTsKICAgIHN0cmVhbV9jbWQu
bnVtX3NhbXBzICA9IHNpemVfdChudW1fcmVxdWVzdGVkX3NhbXBsZXMpOwogICAgc3RyZWFtX2Nt
ZC5zdHJlYW1fbm93ID0gdHJ1ZTsKICAgIHN0cmVhbV9jbWQudGltZV9zcGVjICA9IHVoZDo6dGlt
ZV9zcGVjX3QoKTsKICAgIHJ4X3N0cmVhbS0+aXNzdWVfc3RyZWFtX2NtZChzdHJlYW1fY21kKTsK
CiAgICB0eXBlZGVmIHN0ZDo6bWFwPHNpemVfdCwgc2l6ZV90PiBTaXplTWFwOwogICAgU2l6ZU1h
cCBtYXBTaXplczsKICAgIGNvbnN0IGF1dG8gc3RhcnRfdGltZSA9IHN0ZDo6Y2hyb25vOjpzdGVh
ZHlfY2xvY2s6Om5vdygpOwogICAgY29uc3QgYXV0byBzdG9wX3RpbWUgPQogICAgICAgIHN0YXJ0
X3RpbWUgKyBzdGQ6OmNocm9ubzo6bWlsbGlzZWNvbmRzKGludDY0X3QoMTAwMCAqIHRpbWVfcmVx
dWVzdGVkKSk7CiAgICAvLyBUcmFjayB0aW1lIGFuZCBzYW1wcyBiZXR3ZWVuIHVwZGF0aW5nIHRo
ZSBCVyBzdW1tYXJ5CiAgICBhdXRvIGxhc3RfdXBkYXRlICAgICAgICAgICAgICAgICAgICAgPSBz
dGFydF90aW1lOwogICAgdW5zaWduZWQgbG9uZyBsb25nIGxhc3RfdXBkYXRlX3NhbXBzID0gMDsK
CiAgICAvLyBSdW4gdGhpcyBsb29wIHVudGlsIGVpdGhlciB0aW1lIGV4cGlyZWQgKGlmIGEgZHVy
YXRpb24gd2FzIGdpdmVuKSwgdW50aWwKICAgIC8vIHRoZSByZXF1ZXN0ZWQgbnVtYmVyIG9mIHNh
bXBsZXMgd2VyZSBjb2xsZWN0ZWQgKGlmIHN1Y2ggYSBudW1iZXIgd2FzCiAgICAvLyBnaXZlbiks
IG9yIHVudGlsIEN0cmwtQyB3YXMgcHJlc3NlZC4KICAgIHdoaWxlIChub3Qgc3RvcF9zaWduYWxf
Y2FsbGVkCiAgICAgICAgICAgYW5kIChudW1fcmVxdWVzdGVkX3NhbXBsZXMgIT0gbnVtX3RvdGFs
X3NhbXBzIG9yIG51bV9yZXF1ZXN0ZWRfc2FtcGxlcyA9PSAwKQogICAgICAgICAgIGFuZCAodGlt
ZV9yZXF1ZXN0ZWQgPT0gMC4wIG9yIHN0ZDo6Y2hyb25vOjpzdGVhZHlfY2xvY2s6Om5vdygpIDw9
IHN0b3BfdGltZSkpIHsKICAgICAgICBjb25zdCBhdXRvIG5vdyA9IHN0ZDo6Y2hyb25vOjpzdGVh
ZHlfY2xvY2s6Om5vdygpOwoKICAgICAgICAvLyBSZWFkIFVTRVIgUkVHSVNURVJTIGhlcmUKICAg
ICAgICBhdXRvIHJlZ3MgPSB1c3JwLT5nZXRfdXNlcl9zZXR0aW5nc19pZmFjZSgpOwogICAgICAg
IC8vcmVncy0+cG9rZTMyKDAsIDB4Q0FGRSk7CiAgICAgICAgLy9yZWdzLT5wb2tlMzIoNCwgMHhC
RUVGKTsKICAgICAgICAKICAgICAgICBzaG9ydCBpX2NoYW4gPSAwOwogICAgICAgIHNob3J0IHFf
Y2hhbiA9IDA7CiAgICAgICAgYXV0byBpcV9jaGFucyA9IChyZWdzLT5wZWVrNjQoMCkpICYgMHgw
MDAwMDAwMEZGRkZGRkZGOyAvLyBCZWNhdXNlIHdlIHVzZSB0aGUgbG93ZXIgMzIgYml0cyBpbiB0
aGUgY3VzdG9tIEZQR0EgYnVpbGQgZm9yIHN0b3JpbmcgdGhlIGN1cnJlbnQgc2FtcGxlX3J4CiAg
ICAgICAgaV9jaGFuID0gKGlxX2NoYW5zID4+IDE2KSAmIDB4MDAwMEZGRkY7CiAgICAgICAgcV9j
aGFuID0gMHgwMDAwRkZGRiAmIGlxX2NoYW5zOwogICAgICAgIAogICAgICAgIHN0ZDo6Y291dCA8
PCBib29zdDo6Zm9ybWF0KCJJOiAlaGlcbiIpICUgaV9jaGFuOwogICAgICAgIHN0ZDo6Y291dCA8
PCBib29zdDo6Zm9ybWF0KCJROiAlaGlcbiIpICUgcV9jaGFuOwogICAgICAgIHN0ZDo6Y291dCA8
PCBib29zdDo6Zm9ybWF0KCItLS0tLS0tLS0tLS0tXG4iKTsKCiAgICAgICAgc2l6ZV90IG51bV9y
eF9zYW1wcyA9CiAgICAgICAgICAgIHJ4X3N0cmVhbS0+cmVjdigmYnVmZi5mcm9udCgpLCBidWZm
LnNpemUoKSwgbWQsIDMuMCwgZW5hYmxlX3NpemVfbWFwKTsKCiAgICAgICAgaWYgKG1kLmVycm9y
X2NvZGUgPT0gdWhkOjpyeF9tZXRhZGF0YV90OjpFUlJPUl9DT0RFX1RJTUVPVVQpIHsKICAgICAg
ICAgICAgc3RkOjpjb3V0IDw8IGJvb3N0Ojpmb3JtYXQoIlRpbWVvdXQgd2hpbGUgc3RyZWFtaW5n
IikgPDwgc3RkOjplbmRsOwogICAgICAgICAgICBicmVhazsKICAgICAgICB9CiAgICAgICAgaWYg
KG1kLmVycm9yX2NvZGUgPT0gdWhkOjpyeF9tZXRhZGF0YV90OjpFUlJPUl9DT0RFX09WRVJGTE9X
KSB7CiAgICAgICAgICAgIGlmIChvdmVyZmxvd19tZXNzYWdlKSB7CiAgICAgICAgICAgICAgICBv
dmVyZmxvd19tZXNzYWdlID0gZmFsc2U7CiAgICAgICAgICAgICAgICBzdGQ6OmNlcnIKICAgICAg
ICAgICAgICAgICAgICA8PCBib29zdDo6Zm9ybWF0KAogICAgICAgICAgICAgICAgICAgICAgICAg
ICAiR290IGFuIG92ZXJmbG93IGluZGljYXRpb24uIFBsZWFzZSBjb25zaWRlciB0aGUgZm9sbG93
aW5nOlxuIgogICAgICAgICAgICAgICAgICAgICAgICAgICAiICBZb3VyIHdyaXRlIG1lZGl1bSBt
dXN0IHN1c3RhaW4gYSByYXRlIG9mICVmTUIvcy5cbiIKICAgICAgICAgICAgICAgICAgICAgICAg
ICAgIiAgRHJvcHBlZCBzYW1wbGVzIHdpbGwgbm90IGJlIHdyaXR0ZW4gdG8gdGhlIGZpbGUuXG4i
CiAgICAgICAgICAgICAgICAgICAgICAgICAgICIgIFBsZWFzZSBtb2RpZnkgdGhpcyBleGFtcGxl
IGZvciB5b3VyIHB1cnBvc2VzLlxuIgogICAgICAgICAgICAgICAgICAgICAgICAgICAiICBUaGlz
IG1lc3NhZ2Ugd2lsbCBub3QgYXBwZWFyIGFnYWluLlxuIikKICAgICAgICAgICAgICAgICAgICAg
ICAgICAgJSAodXNycC0+Z2V0X3J4X3JhdGUoY2hhbm5lbCkgKiBzaXplb2Yoc2FtcF90eXBlKSAv
IDFlNik7CiAgICAgICAgICAgIH0KICAgICAgICAgICAgY29udGludWU7CiAgICAgICAgfQogICAg
ICAgIGlmIChtZC5lcnJvcl9jb2RlICE9IHVoZDo6cnhfbWV0YWRhdGFfdDo6RVJST1JfQ09ERV9O
T05FKSB7CiAgICAgICAgICAgIHN0ZDo6c3RyaW5nIGVycm9yID0gc3RyKGJvb3N0Ojpmb3JtYXQo
IlJlY2VpdmVyIGVycm9yOiAlcyIpICUgbWQuc3RyZXJyb3IoKSk7CiAgICAgICAgICAgIGlmIChj
b250aW51ZV9vbl9iYWRfcGFja2V0KSB7CiAgICAgICAgICAgICAgICBzdGQ6OmNlcnIgPDwgZXJy
b3IgPDwgc3RkOjplbmRsOwogICAgICAgICAgICAgICAgY29udGludWU7CiAgICAgICAgICAgIH0g
ZWxzZQogICAgICAgICAgICAgICAgdGhyb3cgc3RkOjpydW50aW1lX2Vycm9yKGVycm9yKTsKICAg
ICAgICB9CgogICAgICAgIGlmIChlbmFibGVfc2l6ZV9tYXApIHsKICAgICAgICAgICAgU2l6ZU1h
cDo6aXRlcmF0b3IgaXQgPSBtYXBTaXplcy5maW5kKG51bV9yeF9zYW1wcyk7CiAgICAgICAgICAg
IGlmIChpdCA9PSBtYXBTaXplcy5lbmQoKSkKICAgICAgICAgICAgICAgIG1hcFNpemVzW251bV9y
eF9zYW1wc10gPSAwOwogICAgICAgICAgICBtYXBTaXplc1tudW1fcnhfc2FtcHNdICs9IDE7CiAg
ICAgICAgfQoKICAgICAgICBudW1fdG90YWxfc2FtcHMgKz0gbnVtX3J4X3NhbXBzOwoKICAgICAg
ICBpZiAob3V0ZmlsZS5pc19vcGVuKCkpIHsKICAgICAgICAgICAgb3V0ZmlsZS53cml0ZSgoY29u
c3QgY2hhciopJmJ1ZmYuZnJvbnQoKSwgbnVtX3J4X3NhbXBzICogc2l6ZW9mKHNhbXBfdHlwZSkp
OwogICAgICAgIH0KCiAgICAgICAgaWYgKGJ3X3N1bW1hcnkpIHsKICAgICAgICAgICAgbGFzdF91
cGRhdGVfc2FtcHMgKz0gbnVtX3J4X3NhbXBzOwogICAgICAgICAgICBjb25zdCBhdXRvIHRpbWVf
c2luY2VfbGFzdF91cGRhdGUgPSBub3cgLSBsYXN0X3VwZGF0ZTsKICAgICAgICAgICAgaWYgKHRp
bWVfc2luY2VfbGFzdF91cGRhdGUgPiBzdGQ6OmNocm9ubzo6c2Vjb25kcygxKSkgewogICAgICAg
ICAgICAgICAgY29uc3QgZG91YmxlIHRpbWVfc2luY2VfbGFzdF91cGRhdGVfcyA9CiAgICAgICAg
ICAgICAgICAgICAgc3RkOjpjaHJvbm86OmR1cmF0aW9uPGRvdWJsZT4odGltZV9zaW5jZV9sYXN0
X3VwZGF0ZSkuY291bnQoKTsKICAgICAgICAgICAgICAgIGNvbnN0IGRvdWJsZSByYXRlID0gZG91
YmxlKGxhc3RfdXBkYXRlX3NhbXBzKSAvIHRpbWVfc2luY2VfbGFzdF91cGRhdGVfczsKICAgICAg
ICAgICAgICAgIHN0ZDo6Y291dCA8PCAiXHQiIDw8IChyYXRlIC8gMWU2KSA8PCAiIE1zcHMiIDw8
IHN0ZDo6ZW5kbDsKICAgICAgICAgICAgICAgIGxhc3RfdXBkYXRlX3NhbXBzID0gMDsKICAgICAg
ICAgICAgICAgIGxhc3RfdXBkYXRlICAgICAgID0gbm93OwogICAgICAgICAgICB9CiAgICAgICAg
fQogICAgfQogICAgY29uc3QgYXV0byBhY3R1YWxfc3RvcF90aW1lID0gc3RkOjpjaHJvbm86OnN0
ZWFkeV9jbG9jazo6bm93KCk7CgogICAgc3RyZWFtX2NtZC5zdHJlYW1fbW9kZSA9IHVoZDo6c3Ry
ZWFtX2NtZF90OjpTVFJFQU1fTU9ERV9TVE9QX0NPTlRJTlVPVVM7CiAgICByeF9zdHJlYW0tPmlz
c3VlX3N0cmVhbV9jbWQoc3RyZWFtX2NtZCk7CgogICAgaWYgKG91dGZpbGUuaXNfb3BlbigpKSB7
CiAgICAgICAgb3V0ZmlsZS5jbG9zZSgpOwogICAgfQoKICAgIGlmIChzdGF0cykgewogICAgICAg
IHN0ZDo6Y291dCA8PCBzdGQ6OmVuZGw7CiAgICAgICAgY29uc3QgZG91YmxlIGFjdHVhbF9kdXJh
dGlvbl9zZWNvbmRzID0KICAgICAgICAgICAgc3RkOjpjaHJvbm86OmR1cmF0aW9uPGZsb2F0Pihh
Y3R1YWxfc3RvcF90aW1lIC0gc3RhcnRfdGltZSkuY291bnQoKTsKCiAgICAgICAgc3RkOjpjb3V0
IDw8IGJvb3N0Ojpmb3JtYXQoIlJlY2VpdmVkICVkIHNhbXBsZXMgaW4gJWYgc2Vjb25kcyIpICUg
bnVtX3RvdGFsX3NhbXBzCiAgICAgICAgICAgICAgICAgICAgICAgICAlIGFjdHVhbF9kdXJhdGlv
bl9zZWNvbmRzCiAgICAgICAgICAgICAgICAgIDw8IHN0ZDo6ZW5kbDsKICAgICAgICBjb25zdCBk
b3VibGUgcmF0ZSA9IChkb3VibGUpbnVtX3RvdGFsX3NhbXBzIC8gYWN0dWFsX2R1cmF0aW9uX3Nl
Y29uZHM7CiAgICAgICAgc3RkOjpjb3V0IDw8IChyYXRlIC8gMWU2KSA8PCAiIE1zcHMiIDw8IHN0
ZDo6ZW5kbDsKCiAgICAgICAgaWYgKGVuYWJsZV9zaXplX21hcCkgewogICAgICAgICAgICBzdGQ6
OmNvdXQgPDwgc3RkOjplbmRsOwogICAgICAgICAgICBzdGQ6OmNvdXQgPDwgIlBhY2tldCBzaXpl
IG1hcCAoYnl0ZXM6IGNvdW50KSIgPDwgc3RkOjplbmRsOwogICAgICAgICAgICBmb3IgKFNpemVN
YXA6Oml0ZXJhdG9yIGl0ID0gbWFwU2l6ZXMuYmVnaW4oKTsgaXQgIT0gbWFwU2l6ZXMuZW5kKCk7
IGl0KyspCiAgICAgICAgICAgICAgICBzdGQ6OmNvdXQgPDwgaXQtPmZpcnN0IDw8ICI6XHQiIDw8
IGl0LT5zZWNvbmQgPDwgc3RkOjplbmRsOwogICAgICAgIH0KICAgIH0KfQoKdHlwZWRlZiBzdGQ6
OmZ1bmN0aW9uPHVoZDo6c2Vuc29yX3ZhbHVlX3QoY29uc3Qgc3RkOjpzdHJpbmcmKT4gZ2V0X3Nl
bnNvcl9mbl90OwoKYm9vbCBjaGVja19sb2NrZWRfc2Vuc29yKHN0ZDo6dmVjdG9yPHN0ZDo6c3Ry
aW5nPiBzZW5zb3JfbmFtZXMsCiAgICBjb25zdCBjaGFyKiBzZW5zb3JfbmFtZSwKICAgIGdldF9z
ZW5zb3JfZm5fdCBnZXRfc2Vuc29yX2ZuLAogICAgZG91YmxlIHNldHVwX3RpbWUpCnsKICAgIGlm
IChzdGQ6OmZpbmQoc2Vuc29yX25hbWVzLmJlZ2luKCksIHNlbnNvcl9uYW1lcy5lbmQoKSwgc2Vu
c29yX25hbWUpCiAgICAgICAgPT0gc2Vuc29yX25hbWVzLmVuZCgpKQogICAgICAgIHJldHVybiBm
YWxzZTsKCiAgICBhdXRvIHNldHVwX3RpbWVvdXQgPSBzdGQ6OmNocm9ubzo6c3RlYWR5X2Nsb2Nr
Ojpub3coKQogICAgICAgICAgICAgICAgICAgICAgICAgKyBzdGQ6OmNocm9ubzo6bWlsbGlzZWNv
bmRzKGludDY0X3Qoc2V0dXBfdGltZSAqIDEwMDApKTsKICAgIGJvb2wgbG9ja19kZXRlY3RlZCA9
IGZhbHNlOwoKICAgIHN0ZDo6Y291dCA8PCBib29zdDo6Zm9ybWF0KCJXYWl0aW5nIGZvciBcIiVz
XCI6ICIpICUgc2Vuc29yX25hbWU7CiAgICBzdGQ6OmNvdXQuZmx1c2goKTsKCiAgICB3aGlsZSAo
dHJ1ZSkgewogICAgCiAgICAgICAgaWYgKGxvY2tfZGV0ZWN0ZWQgYW5kIChzdGQ6OmNocm9ubzo6
c3RlYWR5X2Nsb2NrOjpub3coKSA+IHNldHVwX3RpbWVvdXQpKSB7CiAgICAgICAgICAgIHN0ZDo6
Y291dCA8PCAiIGxvY2tlZC4iIDw8IHN0ZDo6ZW5kbDsKICAgICAgICAgICAgYnJlYWs7CiAgICAg
ICAgfQogICAgICAgIGlmIChnZXRfc2Vuc29yX2ZuKHNlbnNvcl9uYW1lKS50b19ib29sKCkpIHsK
ICAgICAgICAgICAgc3RkOjpjb3V0IDw8ICIrIjsKICAgICAgICAgICAgc3RkOjpjb3V0LmZsdXNo
KCk7CiAgICAgICAgICAgIGxvY2tfZGV0ZWN0ZWQgPSB0cnVlOwogICAgICAgIH0gZWxzZSB7CiAg
ICAgICAgICAgIGlmIChzdGQ6OmNocm9ubzo6c3RlYWR5X2Nsb2NrOjpub3coKSA+IHNldHVwX3Rp
bWVvdXQpIHsKICAgICAgICAgICAgICAgIHN0ZDo6Y291dCA8PCBzdGQ6OmVuZGw7CiAgICAgICAg
ICAgICAgICB0aHJvdyBzdGQ6OnJ1bnRpbWVfZXJyb3IoCiAgICAgICAgICAgICAgICAgICAgc3Ry
KGJvb3N0Ojpmb3JtYXQoCiAgICAgICAgICAgICAgICAgICAgICAgICAgICAidGltZWQgb3V0IHdh
aXRpbmcgZm9yIGNvbnNlY3V0aXZlIGxvY2tzIG9uIHNlbnNvciBcIiVzXCIiKQogICAgICAgICAg
ICAgICAgICAgICAgICAlIHNlbnNvcl9uYW1lKSk7CiAgICAgICAgICAgIH0KICAgICAgICAgICAg
c3RkOjpjb3V0IDw8ICJfIjsKICAgICAgICAgICAgc3RkOjpjb3V0LmZsdXNoKCk7CiAgICAgICAg
fQogICAgICAgIHN0ZDo6dGhpc190aHJlYWQ6OnNsZWVwX2ZvcihzdGQ6OmNocm9ubzo6bWlsbGlz
ZWNvbmRzKDEwMCkpOwogICAgCiAgICB9CiAgICBzdGQ6OmNvdXQgPDwgc3RkOjplbmRsOwogICAg
cmV0dXJuIHRydWU7Cn0KCmludCBVSERfU0FGRV9NQUlOKGludCBhcmdjLCBjaGFyKiBhcmd2W10p
CnsKICAgIC8vIHZhcmlhYmxlcyB0byBiZSBzZXQgYnkgcG8KICAgIHN0ZDo6c3RyaW5nIGFyZ3Ms
IGZpbGUsIHR5cGUsIGFudCwgc3ViZGV2LCByZWYsIHdpcmVmbXQ7CiAgICBzaXplX3QgY2hhbm5l
bCwgdG90YWxfbnVtX3NhbXBzLCBzcGI7CiAgICBkb3VibGUgcmF0ZSwgZnJlcSwgZ2FpbiwgYncs
IHRvdGFsX3RpbWUsIHNldHVwX3RpbWUsIGxvX29mZnNldDsKCiAgICAvLyBzZXR1cCB0aGUgcHJv
Z3JhbSBvcHRpb25zCiAgICBwbzo6b3B0aW9uc19kZXNjcmlwdGlvbiBkZXNjKCJBbGxvd2VkIG9w
dGlvbnMiKTsKICAgIC8vIGNsYW5nLWZvcm1hdCBvZmYKICAgIGRlc2MuYWRkX29wdGlvbnMoKQog
ICAgICAgICgiaGVscCIsICJoZWxwIG1lc3NhZ2UiKQogICAgICAgICgiYXJncyIsIHBvOjp2YWx1
ZTxzdGQ6OnN0cmluZz4oJmFyZ3MpLT5kZWZhdWx0X3ZhbHVlKCIiKSwgIm11bHRpIHVoZCBkZXZp
Y2UgYWRkcmVzcyBhcmdzIikKICAgICAgICAoImZpbGUiLCBwbzo6dmFsdWU8c3RkOjpzdHJpbmc+
KCZmaWxlKS0+ZGVmYXVsdF92YWx1ZSgidXNycF9zYW1wbGVzLmRhdCIpLCAibmFtZSBvZiB0aGUg
ZmlsZSB0byB3cml0ZSBiaW5hcnkgc2FtcGxlcyB0byIpCiAgICAgICAgKCJ0eXBlIiwgcG86OnZh
bHVlPHN0ZDo6c3RyaW5nPigmdHlwZSktPmRlZmF1bHRfdmFsdWUoInNob3J0IiksICJzYW1wbGUg
dHlwZTogZG91YmxlLCBmbG9hdCwgb3Igc2hvcnQiKQogICAgICAgICgibnNhbXBzIiwgcG86OnZh
bHVlPHNpemVfdD4oJnRvdGFsX251bV9zYW1wcyktPmRlZmF1bHRfdmFsdWUoMCksICJ0b3RhbCBu
dW1iZXIgb2Ygc2FtcGxlcyB0byByZWNlaXZlIikKICAgICAgICAoImR1cmF0aW9uIiwgcG86OnZh
bHVlPGRvdWJsZT4oJnRvdGFsX3RpbWUpLT5kZWZhdWx0X3ZhbHVlKDApLCAidG90YWwgbnVtYmVy
IG9mIHNlY29uZHMgdG8gcmVjZWl2ZSIpCiAgICAgICAgKCJzcGIiLCBwbzo6dmFsdWU8c2l6ZV90
Pigmc3BiKS0+ZGVmYXVsdF92YWx1ZSgxMDAwMCksICJzYW1wbGVzIHBlciBidWZmZXIiKQogICAg
ICAgICgicmF0ZSIsIHBvOjp2YWx1ZTxkb3VibGU+KCZyYXRlKS0+ZGVmYXVsdF92YWx1ZSgxZTYp
LCAicmF0ZSBvZiBpbmNvbWluZyBzYW1wbGVzIikKICAgICAgICAoImZyZXEiLCBwbzo6dmFsdWU8
ZG91YmxlPigmZnJlcSktPmRlZmF1bHRfdmFsdWUoMC4wKSwgIlJGIGNlbnRlciBmcmVxdWVuY3kg
aW4gSHoiKQogICAgICAgICgibG8tb2Zmc2V0IiwgcG86OnZhbHVlPGRvdWJsZT4oJmxvX29mZnNl
dCktPmRlZmF1bHRfdmFsdWUoMC4wKSwKICAgICAgICAgICAgIk9mZnNldCBmb3IgZnJvbnRlbmQg
TE8gaW4gSHogKG9wdGlvbmFsKSIpCiAgICAgICAgKCJnYWluIiwgcG86OnZhbHVlPGRvdWJsZT4o
JmdhaW4pLCAiZ2FpbiBmb3IgdGhlIFJGIGNoYWluIikKICAgICAgICAoImFudCIsIHBvOjp2YWx1
ZTxzdGQ6OnN0cmluZz4oJmFudCksICJhbnRlbm5hIHNlbGVjdGlvbiIpCiAgICAgICAgKCJzdWJk
ZXYiLCBwbzo6dmFsdWU8c3RkOjpzdHJpbmc+KCZzdWJkZXYpLCAic3ViZGV2aWNlIHNwZWNpZmlj
YXRpb24iKQogICAgICAgICgiY2hhbm5lbCIsIHBvOjp2YWx1ZTxzaXplX3Q+KCZjaGFubmVsKS0+
ZGVmYXVsdF92YWx1ZSgwKSwgIndoaWNoIGNoYW5uZWwgdG8gdXNlIikKICAgICAgICAoImJ3Iiwg
cG86OnZhbHVlPGRvdWJsZT4oJmJ3KSwgImFuYWxvZyBmcm9udGVuZCBmaWx0ZXIgYmFuZHdpZHRo
IGluIEh6IikKICAgICAgICAoInJlZiIsIHBvOjp2YWx1ZTxzdGQ6OnN0cmluZz4oJnJlZiktPmRl
ZmF1bHRfdmFsdWUoImludGVybmFsIiksICJyZWZlcmVuY2Ugc291cmNlIChpbnRlcm5hbCwgZXh0
ZXJuYWwsIG1pbW8pIikKICAgICAgICAoIndpcmVmbXQiLCBwbzo6dmFsdWU8c3RkOjpzdHJpbmc+
KCZ3aXJlZm10KS0+ZGVmYXVsdF92YWx1ZSgic2MxNiIpLCAid2lyZSBmb3JtYXQgKHNjOCwgc2Mx
NiBvciBzMTYpIikKICAgICAgICAoInNldHVwIiwgcG86OnZhbHVlPGRvdWJsZT4oJnNldHVwX3Rp
bWUpLT5kZWZhdWx0X3ZhbHVlKDEuMCksICJzZWNvbmRzIG9mIHNldHVwIHRpbWUiKQogICAgICAg
ICgicHJvZ3Jlc3MiLCAicGVyaW9kaWNhbGx5IGRpc3BsYXkgc2hvcnQtdGVybSBiYW5kd2lkdGgi
KQogICAgICAgICgic3RhdHMiLCAic2hvdyBhdmVyYWdlIGJhbmR3aWR0aCBvbiBleGl0IikKICAg
ICAgICAoInNpemVtYXAiLCAidHJhY2sgcGFja2V0IHNpemUgYW5kIGRpc3BsYXkgYnJlYWtkb3du
IG9uIGV4aXQiKQogICAgICAgICgibnVsbCIsICJydW4gd2l0aG91dCB3cml0aW5nIHRvIGZpbGUi
KQogICAgICAgICgiY29udGludWUiLCAiZG9uJ3QgYWJvcnQgb24gYSBiYWQgcGFja2V0IikKICAg
ICAgICAoInNraXAtbG8iLCAic2tpcCBjaGVja2luZyBMTyBsb2NrIHN0YXR1cyIpCiAgICAgICAg
KCJpbnQtbiIsICJ0dW5lIFVTUlAgd2l0aCBpbnRlZ2VyLU4gdHVuaW5nIikKICAgIDsKICAgIC8v
IGNsYW5nLWZvcm1hdCBvbgogICAgcG86OnZhcmlhYmxlc19tYXAgdm07CiAgICBwbzo6c3RvcmUo
cG86OnBhcnNlX2NvbW1hbmRfbGluZShhcmdjLCBhcmd2LCBkZXNjKSwgdm0pOwogICAgcG86Om5v
dGlmeSh2bSk7CgogICAgLy8gcHJpbnQgdGhlIGhlbHAgbWVzc2FnZQogICAgaWYgKHZtLmNvdW50
KCJoZWxwIikpIHsKICAgICAgICBzdGQ6OmNvdXQgPDwgYm9vc3Q6OmZvcm1hdCgiVUhEIFJYIHNh
bXBsZXMgdG8gZmlsZSAlcyIpICUgZGVzYyA8PCBzdGQ6OmVuZGw7CiAgICAgICAgc3RkOjpjb3V0
IDw8IHN0ZDo6ZW5kbAogICAgICAgICAgICAgICAgICA8PCAiVGhpcyBhcHBsaWNhdGlvbiBzdHJl
YW1zIGRhdGEgZnJvbSBhIHNpbmdsZSBjaGFubmVsIG9mIGEgVVNSUCAiCiAgICAgICAgICAgICAg
ICAgICAgICJkZXZpY2UgdG8gYSBmaWxlLlxuIgogICAgICAgICAgICAgICAgICA8PCBzdGQ6OmVu
ZGw7CiAgICAgICAgcmV0dXJuIH4wOwogICAgfQoKICAgIGJvb2wgYndfc3VtbWFyeSAgICAgICAg
ICAgICA9IHZtLmNvdW50KCJwcm9ncmVzcyIpID4gMDsKICAgIGJvb2wgc3RhdHMgICAgICAgICAg
ICAgICAgICA9IHZtLmNvdW50KCJzdGF0cyIpID4gMDsKICAgIGJvb2wgbnVsbCAgICAgICAgICAg
ICAgICAgICA9IHZtLmNvdW50KCJudWxsIikgPiAwOwogICAgYm9vbCBlbmFibGVfc2l6ZV9tYXAg
ICAgICAgID0gdm0uY291bnQoInNpemVtYXAiKSA+IDA7CiAgICBib29sIGNvbnRpbnVlX29uX2Jh
ZF9wYWNrZXQgPSB2bS5jb3VudCgiY29udGludWUiKSA+IDA7CgogICAgaWYgKGVuYWJsZV9zaXpl
X21hcCkKICAgICAgICBzdGQ6OmNvdXQgPDwgIlBhY2tldCBzaXplIHRyYWNraW5nIGVuYWJsZWQg
LSB3aWxsIG9ubHkgcmVjdiBvbmUgcGFja2V0IGF0IGEgdGltZSEiCiAgICAgICAgICAgICAgICAg
IDw8IHN0ZDo6ZW5kbDsKCiAgICAvLyBjcmVhdGUgYSB1c3JwIGRldmljZQogICAgc3RkOjpjb3V0
IDw8IHN0ZDo6ZW5kbDsKICAgIHN0ZDo6Y291dCA8PCBib29zdDo6Zm9ybWF0KCJDcmVhdGluZyB0
aGUgdXNycCBkZXZpY2Ugd2l0aDogJXMuLi4iKSAlIGFyZ3MKICAgICAgICAgICAgICA8PCBzdGQ6
OmVuZGw7CgogICAgc3RkOjpzdHJpbmcgbXl2YXIgPSAidHlwZT1iMjAwLGVuYWJsZV91c2VyX3Jl
Z3MiOwogICAgdWhkOjp1c3JwOjptdWx0aV91c3JwOjpzcHRyIHVzcnAgPSB1aGQ6OnVzcnA6Om11
bHRpX3VzcnA6Om1ha2UobXl2YXIpOwoKICAgIC8vIExvY2sgbWJvYXJkIGNsb2NrcwogICAgaWYg
KHZtLmNvdW50KCJyZWYiKSkgewogICAgICAgIHVzcnAtPnNldF9jbG9ja19zb3VyY2UocmVmKTsK
ICAgIH0KCiAgICAvLyBhbHdheXMgc2VsZWN0IHRoZSBzdWJkZXZpY2UgZmlyc3QsIHRoZSBjaGFu
bmVsIG1hcHBpbmcgYWZmZWN0cyB0aGUgb3RoZXIgc2V0dGluZ3MKICAgIGlmICh2bS5jb3VudCgi
c3ViZGV2IikpCiAgICAgICAgdXNycC0+c2V0X3J4X3N1YmRldl9zcGVjKHN1YmRldik7CgogICAg
c3RkOjpjb3V0IDw8IGJvb3N0Ojpmb3JtYXQoIlVzaW5nIERldmljZTogJXMiKSAlIHVzcnAtPmdl
dF9wcF9zdHJpbmcoKSA8PCBzdGQ6OmVuZGw7CgogICAgLy8gc2V0IHRoZSBzYW1wbGUgcmF0ZQog
ICAgaWYgKHJhdGUgPD0gMC4wKSB7CiAgICAgICAgc3RkOjpjZXJyIDw8ICJQbGVhc2Ugc3BlY2lm
eSBhIHZhbGlkIHNhbXBsZSByYXRlIiA8PCBzdGQ6OmVuZGw7CiAgICAgICAgcmV0dXJuIH4wOwog
ICAgfQogICAgc3RkOjpjb3V0IDw8IGJvb3N0Ojpmb3JtYXQoIlNldHRpbmcgUlggUmF0ZTogJWYg
TXNwcy4uLiIpICUgKHJhdGUgLyAxZTYpIDw8IHN0ZDo6ZW5kbDsKICAgIHVzcnAtPnNldF9yeF9y
YXRlKHJhdGUsIGNoYW5uZWwpOwogICAgc3RkOjpjb3V0IDw8IGJvb3N0Ojpmb3JtYXQoIkFjdHVh
bCBSWCBSYXRlOiAlZiBNc3BzLi4uIikKICAgICAgICAgICAgICAgICAgICAgJSAodXNycC0+Z2V0
X3J4X3JhdGUoY2hhbm5lbCkgLyAxZTYpCiAgICAgICAgICAgICAgPDwgc3RkOjplbmRsCiAgICAg
ICAgICAgICAgPDwgc3RkOjplbmRsOwoKICAgIC8vIHNldCB0aGUgY2VudGVyIGZyZXF1ZW5jeQog
ICAgaWYgKHZtLmNvdW50KCJmcmVxIikpIHsgLy8gd2l0aCBkZWZhdWx0IG9mIDAuMCB0aGlzIHdp
bGwgYWx3YXlzIGJlIHRydWUKICAgICAgICBzdGQ6OmNvdXQgPDwgYm9vc3Q6OmZvcm1hdCgiU2V0
dGluZyBSWCBGcmVxOiAlZiBNSHouLi4iKSAlIChmcmVxIC8gMWU2KQogICAgICAgICAgICAgICAg
ICA8PCBzdGQ6OmVuZGw7CiAgICAgICAgc3RkOjpjb3V0IDw8IGJvb3N0Ojpmb3JtYXQoIlNldHRp
bmcgUlggTE8gT2Zmc2V0OiAlZiBNSHouLi4iKSAlIChsb19vZmZzZXQgLyAxZTYpCiAgICAgICAg
ICAgICAgICAgIDw8IHN0ZDo6ZW5kbDsKICAgICAgICB1aGQ6OnR1bmVfcmVxdWVzdF90IHR1bmVf
cmVxdWVzdChmcmVxLCBsb19vZmZzZXQpOwogICAgICAgIGlmICh2bS5jb3VudCgiaW50LW4iKSkK
ICAgICAgICAgICAgdHVuZV9yZXF1ZXN0LmFyZ3MgPSB1aGQ6OmRldmljZV9hZGRyX3QoIm1vZGVf
bj1pbnRlZ2VyIik7CiAgICAgICAgdXNycC0+c2V0X3J4X2ZyZXEodHVuZV9yZXF1ZXN0LCBjaGFu
bmVsKTsKICAgICAgICBzdGQ6OmNvdXQgPDwgYm9vc3Q6OmZvcm1hdCgiQWN0dWFsIFJYIEZyZXE6
ICVmIE1Iei4uLiIpCiAgICAgICAgICAgICAgICAgICAgICAgICAlICh1c3JwLT5nZXRfcnhfZnJl
cShjaGFubmVsKSAvIDFlNikKICAgICAgICAgICAgICAgICAgPDwgc3RkOjplbmRsCiAgICAgICAg
ICAgICAgICAgIDw8IHN0ZDo6ZW5kbDsKICAgIH0KCiAgICAvLyBzZXQgdGhlIHJmIGdhaW4KICAg
IGlmICh2bS5jb3VudCgiZ2FpbiIpKSB7CiAgICAgICAgc3RkOjpjb3V0IDw8IGJvb3N0Ojpmb3Jt
YXQoIlNldHRpbmcgUlggR2FpbjogJWYgZEIuLi4iKSAlIGdhaW4gPDwgc3RkOjplbmRsOwogICAg
ICAgIHVzcnAtPnNldF9yeF9nYWluKGdhaW4sIGNoYW5uZWwpOwogICAgICAgIHN0ZDo6Y291dCA8
PCBib29zdDo6Zm9ybWF0KCJBY3R1YWwgUlggR2FpbjogJWYgZEIuLi4iKQogICAgICAgICAgICAg
ICAgICAgICAgICAgJSB1c3JwLT5nZXRfcnhfZ2FpbihjaGFubmVsKQogICAgICAgICAgICAgICAg
ICA8PCBzdGQ6OmVuZGwKICAgICAgICAgICAgICAgICAgPDwgc3RkOjplbmRsOwogICAgfQoKICAg
IC8vIHNldCB0aGUgSUYgZmlsdGVyIGJhbmR3aWR0aAogICAgaWYgKHZtLmNvdW50KCJidyIpKSB7
CiAgICAgICAgc3RkOjpjb3V0IDw8IGJvb3N0Ojpmb3JtYXQoIlNldHRpbmcgUlggQmFuZHdpZHRo
OiAlZiBNSHouLi4iKSAlIChidyAvIDFlNikKICAgICAgICAgICAgICAgICAgPDwgc3RkOjplbmRs
OwogICAgICAgIHVzcnAtPnNldF9yeF9iYW5kd2lkdGgoYncsIGNoYW5uZWwpOwogICAgICAgIHN0
ZDo6Y291dCA8PCBib29zdDo6Zm9ybWF0KCJBY3R1YWwgUlggQmFuZHdpZHRoOiAlZiBNSHouLi4i
KQogICAgICAgICAgICAgICAgICAgICAgICAgJSAodXNycC0+Z2V0X3J4X2JhbmR3aWR0aChjaGFu
bmVsKSAvIDFlNikKICAgICAgICAgICAgICAgICAgPDwgc3RkOjplbmRsCiAgICAgICAgICAgICAg
ICAgIDw8IHN0ZDo6ZW5kbDsKICAgIH0KCiAgICAvLyBzZXQgdGhlIGFudGVubmEKICAgIGlmICh2
bS5jb3VudCgiYW50IikpCiAgICAgICAgdXNycC0+c2V0X3J4X2FudGVubmEoYW50LCBjaGFubmVs
KTsKCiAgICBzdGQ6OnRoaXNfdGhyZWFkOjpzbGVlcF9mb3Ioc3RkOjpjaHJvbm86Om1pbGxpc2Vj
b25kcyhpbnQ2NF90KDEwMDAgKiBzZXR1cF90aW1lKSkpOwoKICAgIAogICAgLy8gY2hlY2sgUmVm
IGFuZCBMTyBMb2NrIGRldGVjdAogICAgaWYgKG5vdCB2bS5jb3VudCgic2tpcC1sbyIpKSB7CiAg
ICAgICAgY2hlY2tfbG9ja2VkX3NlbnNvcih1c3JwLT5nZXRfcnhfc2Vuc29yX25hbWVzKGNoYW5u
ZWwpLAogICAgICAgICAgICAibG9fbG9ja2VkIiwKICAgICAgICAgICAgW3VzcnAsIGNoYW5uZWxd
KGNvbnN0IHN0ZDo6c3RyaW5nJiBzZW5zb3JfbmFtZSkgewogICAgICAgICAgICAgICAgcmV0dXJu
IHVzcnAtPmdldF9yeF9zZW5zb3Ioc2Vuc29yX25hbWUsIGNoYW5uZWwpOwogICAgICAgICAgICB9
LAogICAgICAgICAgICBzZXR1cF90aW1lKTsKICAgICAgICBpZiAocmVmID09ICJtaW1vIikgewog
ICAgICAgICAgICBjaGVja19sb2NrZWRfc2Vuc29yKHVzcnAtPmdldF9tYm9hcmRfc2Vuc29yX25h
bWVzKDApLAogICAgICAgICAgICAgICAgIm1pbW9fbG9ja2VkIiwKICAgICAgICAgICAgICAgIFt1
c3JwXShjb25zdCBzdGQ6OnN0cmluZyYgc2Vuc29yX25hbWUpIHsKICAgICAgICAgICAgICAgICAg
ICByZXR1cm4gdXNycC0+Z2V0X21ib2FyZF9zZW5zb3Ioc2Vuc29yX25hbWUpOwogICAgICAgICAg
ICAgICAgfSwKICAgICAgICAgICAgICAgIHNldHVwX3RpbWUpOwogICAgICAgIH0KICAgICAgICBp
ZiAocmVmID09ICJleHRlcm5hbCIpIHsKICAgICAgICAgICAgY2hlY2tfbG9ja2VkX3NlbnNvcih1
c3JwLT5nZXRfbWJvYXJkX3NlbnNvcl9uYW1lcygwKSwKICAgICAgICAgICAgICAgICJyZWZfbG9j
a2VkIiwKICAgICAgICAgICAgICAgIFt1c3JwXShjb25zdCBzdGQ6OnN0cmluZyYgc2Vuc29yX25h
bWUpIHsKICAgICAgICAgICAgICAgICAgICByZXR1cm4gdXNycC0+Z2V0X21ib2FyZF9zZW5zb3Io
c2Vuc29yX25hbWUpOwogICAgICAgICAgICAgICAgfSwKICAgICAgICAgICAgICAgIHNldHVwX3Rp
bWUpOwogICAgICAgIH0KICAgIH0KCiAgICBpZiAodG90YWxfbnVtX3NhbXBzID09IDApIHsKICAg
ICAgICBzdGQ6OnNpZ25hbChTSUdJTlQsICZzaWdfaW50X2hhbmRsZXIpOwogICAgICAgIHN0ZDo6
Y291dCA8PCAiUHJlc3MgQ3RybCArIEMgdG8gc3RvcCBzdHJlYW1pbmcuLi4iIDw8IHN0ZDo6ZW5k
bDsKICAgIH0KCiNkZWZpbmUgcmVjdl90b19maWxlX2FyZ3MoZm9ybWF0KSBcCiAgICAodXNycCwg
ICAgICAgICAgICAgICAgICAgICAgICBcCiAgICAgICAgZm9ybWF0LCAgICAgICAgICAgICAgICAg
ICBcCiAgICAgICAgd2lyZWZtdCwgICAgICAgICAgICAgICAgICBcCiAgICAgICAgY2hhbm5lbCwg
ICAgICAgICAgICAgICAgICBcCiAgICAgICAgZmlsZSwgICAgICAgICAgICAgICAgICAgICBcCiAg
ICAgICAgc3BiLCAgICAgICAgICAgICAgICAgICAgICBcCiAgICAgICAgdG90YWxfbnVtX3NhbXBz
LCAgICAgICAgICBcCiAgICAgICAgdG90YWxfdGltZSwgICAgICAgICAgICAgICBcCiAgICAgICAg
Yndfc3VtbWFyeSwgICAgICAgICAgICAgICBcCiAgICAgICAgc3RhdHMsICAgICAgICAgICAgICAg
ICAgICBcCiAgICAgICAgbnVsbCwgICAgICAgICAgICAgICAgICAgICBcCiAgICAgICAgZW5hYmxl
X3NpemVfbWFwLCAgICAgICAgICBcCiAgICAgICAgY29udGludWVfb25fYmFkX3BhY2tldCkKICAg
IC8vIHJlY3YgdG8gZmlsZQogICAgaWYgKHdpcmVmbXQgPT0gInMxNiIpIHsKICAgICAgICBpZiAo
dHlwZSA9PSAiZG91YmxlIikKICAgICAgICAgICAgcmVjdl90b19maWxlPGRvdWJsZT4gcmVjdl90
b19maWxlX2FyZ3MoImY2NCIpOwogICAgICAgIGVsc2UgaWYgKHR5cGUgPT0gImZsb2F0IikKICAg
ICAgICAgICAgcmVjdl90b19maWxlPGZsb2F0PiByZWN2X3RvX2ZpbGVfYXJncygiZjMyIik7CiAg
ICAgICAgZWxzZSBpZiAodHlwZSA9PSAic2hvcnQiKQogICAgICAgICAgICByZWN2X3RvX2ZpbGU8
c2hvcnQ+IHJlY3ZfdG9fZmlsZV9hcmdzKCJzMTYiKTsKICAgICAgICBlbHNlCiAgICAgICAgICAg
IHRocm93IHN0ZDo6cnVudGltZV9lcnJvcigiVW5rbm93biB0eXBlICIgKyB0eXBlKTsKICAgIH0g
ZWxzZSB7CiAgICAgICAgaWYgKHR5cGUgPT0gImRvdWJsZSIpCiAgICAgICAgICAgIHJlY3ZfdG9f
ZmlsZTxzdGQ6OmNvbXBsZXg8ZG91YmxlPj4gcmVjdl90b19maWxlX2FyZ3MoImZjNjQiKTsKICAg
ICAgICBlbHNlIGlmICh0eXBlID09ICJmbG9hdCIpCiAgICAgICAgICAgIHJlY3ZfdG9fZmlsZTxz
dGQ6OmNvbXBsZXg8ZmxvYXQ+PiByZWN2X3RvX2ZpbGVfYXJncygiZmMzMiIpOwogICAgICAgIGVs
c2UgaWYgKHR5cGUgPT0gInNob3J0IikKICAgICAgICAgICAgcmVjdl90b19maWxlPHN0ZDo6Y29t
cGxleDxzaG9ydD4+IHJlY3ZfdG9fZmlsZV9hcmdzKCJzYzE2Iik7CiAgICAgICAgZWxzZQogICAg
ICAgICAgICB0aHJvdyBzdGQ6OnJ1bnRpbWVfZXJyb3IoIlVua25vd24gdHlwZSAiICsgdHlwZSk7
CiAgICB9CgogICAgLy8gZmluaXNoZWQKICAgIHN0ZDo6Y291dCA8PCBzdGQ6OmVuZGwgPDwgIkRv
bmUhIiA8PCBzdGQ6OmVuZGwgPDwgc3RkOjplbmRsOwoKICAgIHJldHVybiBFWElUX1NVQ0NFU1M7
Cn0K
--00000000000085c2d0059fe5ef57
Content-Type: text/x-verilog; charset="US-ASCII"; name="radio_legacy_modified.v"
Content-Disposition: attachment; filename="radio_legacy_modified.v"
Content-Transfer-Encoding: base64
Content-ID: <f_k7ayz6y83>
X-Attachment-Id: f_k7ayz6y83

Ly8KLy8gQ29weXJpZ2h0IDIwMTMgRXR0dXMgUmVzZWFyY2ggTExDCi8vIENvcHlyaWdodCAyMDE4
IEV0dHVzIFJlc2VhcmNoLCBhIE5hdGlvbmFsIEluc3RydW1lbnRzIENvbXBhbnkKLy8KLy8gU1BE
WC1MaWNlbnNlLUlkZW50aWZpZXI6IExHUEwtMy4wLW9yLWxhdGVyCi8vCgoKLy8gcmFkaW8gdG9w
IGxldmVsIG1vZHVsZSBmb3IgYjIwMAovLyAgQ29udGFpbnMgYWxsIGNsb2NrLXJhdGUgRFNQIGNv
bXBvbmVudHMsIGFsbCByYWRpbyBhbmQgaGFyZHdhcmUgY29udHJvbHMgYW5kIHNldHRpbmdzCgpt
b2R1bGUgcmFkaW9fbGVnYWN5CiAgIygKICAgIHBhcmFtZXRlciBSQURJT19GSUZPX1NJWkUgPSAx
MywKICAgIHBhcmFtZXRlciBTQU1QTEVfRklGT19TSVpFID0gMTEsCiAgICBwYXJhbWV0ZXIgRlBf
R1BJTyA9IDAsCiAgICBwYXJhbWV0ZXIgTkVXX0hCX0lOVEVSUCA9IDAsCiAgICBwYXJhbWV0ZXIg
TkVXX0hCX0RFQ0lNID0gMCwKICAgIHBhcmFtZXRlciBTT1VSQ0VfRkxPV19DT05UUk9MID0gMCwK
ICAgIHBhcmFtZXRlciBVU0VSX1NFVFRJTkdTID0gMSwKICAgIHBhcmFtZXRlciBERVZJQ0UgPSAi
U1BBUlRBTjYiCiAgKQogIChpbnB1dCByYWRpb19jbGssIGlucHV0IHJhZGlvX3JzdCwKICAgaW5w
dXQgWzMxOjBdIHJ4LCBvdXRwdXQgcmVnIFszMTowXSB0eCwKICAgaW5wdXQgWzMxOjBdIGZlX2dw
aW9faW4sIG91dHB1dCBbMzE6MF0gZmVfZ3Bpb19vdXQsIG91dHB1dCBbMzE6MF0gZmVfZ3Bpb19k
ZHIsCiAgIGlucHV0IFs5OjBdIGZwX2dwaW9faW4sIG91dHB1dCBbOTowXSBmcF9ncGlvX291dCwg
b3V0cHV0IFs5OjBdIGZwX2dwaW9fZGRyLAogICBpbnB1dCBwcHMsIGlucHV0IHRpbWVfc3luYywK
ICAgaW5wdXQgYnVzX2NsaywgaW5wdXQgYnVzX3JzdCwKICAgaW5wdXQgWzYzOjBdICB0eF90ZGF0
YSwgaW5wdXQgdHhfdGxhc3QsIGlucHV0IHR4X3R2YWxpZCwgb3V0cHV0IHR4X3RyZWFkeSwKICAg
b3V0cHV0IFs2MzowXSByeF90ZGF0YSwgb3V0cHV0IHJ4X3RsYXN0LCBvdXRwdXQgcnhfdHZhbGlk
LCBpbnB1dCByeF90cmVhZHksCiAgIGlucHV0IFs2MzowXSAgY3RybF90ZGF0YSwgaW5wdXQgY3Ry
bF90bGFzdCwgaW5wdXQgY3RybF90dmFsaWQsIG91dHB1dCBjdHJsX3RyZWFkeSwKICAgb3V0cHV0
IFs2MzowXSByZXNwX3RkYXRhLCBvdXRwdXQgcmVzcF90bGFzdCwgb3V0cHV0IHJlc3BfdHZhbGlk
LCBpbnB1dCByZXNwX3RyZWFkeSwKCiAgIG91dHB1dCByZWcgWzYzOjBdIHZpdGFfdGltZV9iLAoK
ICAgb3V0cHV0IFs2MzowXSBkZWJ1ZwogICApOwoKICAgLy8gLy8vLy8vLy8vLy8vLy8vLy8vLy8v
Ly8vLy8vLy8vLy8vLy8vLy8vLy8vLy8vLy8vLy8vLy8vLy8vLy8vLy8vLy8vLy8vLy8vLy8vLy8v
Ly8KICAgLy8gSW50ZXJjb25uZWN0cyBmb3IgdGhlIHVzZXIgZGVmaW5lZCByZWdpc3RlcnMKICAg
CiAgIHdpcmUgWzMxOjBdIHVzZXJfcmVnXzBfdmFsdWUsIHVzZXJfcmVnXzFfdmFsdWUsIGN1cnJf
c2FtcGxlX3JlZ192YWx1ZTsKICAgd2lyZSBbMTU6MF0gZGVjb2RlZF9zeW1ib2xfdmFsdWU7ICAg
CgogICByZWcgWzMxOjBdIGN1cnJfc2FtcGxlX3JlZzsKCgogICAvLyAvLy8vLy8vLy8vLy8vLy8v
Ly8vLy8vLy8vLy8vLy8vLy8vLy8vLy8vLy8vLy8vLy8vLy8vLy8vLy8vLy8vLy8vLy8vLy8vLy8v
Ly8vLy8vCiAgIC8vIEZJRk8gSW50ZXJmYWNpbmcgdG8gdGhlIGJ1cyBjbGsgZG9tYWluCiAgIC8v
IGluX3RkYXRhIHNwbGl0cyB0byB0eF90ZGF0YSBhbmQgY3RybF90ZGF0YQogICAvLyByeF90ZGF0
YSBhbmQgcmVzcF90ZGF0YSBnZXQgbXV4ZWQgdG8gb3V0X3RkYXRhCiAgIC8vIEV2ZXJ5dGhpbmcg
ZXhjZXB0IHJ4IGZsb3cgY29udHJvbCBtdXN0IGNyb3NzIGluIHRvIHJhZGlvX2NsayBkb21haW4g
YmVmb3JlIGZ1cnRoZXIgdXNlCiAgIC8vIF9iIHNpZ25pZmllcyBidXNfY2xrIGRvbWFpbiwgX3Ig
c2lnbmlmaWVzIHJhZGlvX2NsayBkb21haW4KCiAgIHdpcmUgWzYzOjBdIAkgY3RybF90ZGF0YV9y
OwogICB3aXJlIAkgY3RybF90cmVhZHlfciwgY3RybF90dmFsaWRfcjsKICAgd2lyZSAJIGN0cmxf
dGxhc3RfcjsKCiAgIHdpcmUgWzYzOjBdIAkgcmVzcF90ZGF0YV9yOwogICB3aXJlIAkgcmVzcF90
cmVhZHlfciwgcmVzcF90dmFsaWRfcjsKICAgd2lyZSAJIHJlc3BfdGxhc3RfcjsKCiAgIHdpcmUg
WzYzOjBdIAkgcnhfdGRhdGFfcjsKICAgd2lyZSAJIHJ4X3RyZWFkeV9yLCByeF90dmFsaWRfcjsK
ICAgd2lyZSAJIHJ4X3RsYXN0X3I7CgogICB3aXJlIFs2MzowXSAJIHJ4X2Vycl90ZGF0YV9yOwog
ICB3aXJlIAkgcnhfZXJyX3RyZWFkeV9yLCByeF9lcnJfdHZhbGlkX3I7CiAgIHdpcmUgCSByeF9l
cnJfdGxhc3RfcjsKCiAgIHdpcmUgWzYzOjBdICAgICByeF9wcmVmY190ZGF0YV9yOwogICB3aXJl
ICAgcnhfcHJlZmNfdHJlYWR5X3IsIHJ4X3ByZWZjX3R2YWxpZF9yOwogICB3aXJlICAgcnhfcHJl
ZmNfdGxhc3RfcjsKCiAgIHdpcmUgWzYzOjBdICAgICByeF9wb3N0ZmNfdGRhdGFfcjsKICAgd2ly
ZSAgIHJ4X3Bvc3RmY190cmVhZHlfciwgcnhfcG9zdGZjX3R2YWxpZF9yOwogICB3aXJlICAgcnhf
cG9zdGZjX3RsYXN0X3I7CgogICB3aXJlIFs2MzowXSAJIHR4X3RkYXRhX3I7CiAgIHdpcmUgCSB0
eF90cmVhZHlfciwgdHhfdHZhbGlkX3I7CiAgIHdpcmUgCSB0eF90bGFzdF9yOwoKICAgd2lyZSBb
NjM6MF0gCSB0eHJlc3BfdGRhdGEsIHR4cmVzcF90ZGF0YV9yOwogICB3aXJlIAkgdHhyZXNwX3Ry
ZWFkeSwgdHhyZXNwX3RyZWFkeV9yLCB0eHJlc3BfdHZhbGlkLCB0eHJlc3BfdHZhbGlkX3I7CiAg
IHdpcmUgCSB0eHJlc3BfdGxhc3QsIHR4cmVzcF90bGFzdF9yOwoKICAgd2lyZSBbNjM6MF0gCSBy
bXV4X3RkYXRhX3I7CiAgIHdpcmUgCSBybXV4X3RsYXN0X3IsIHJtdXhfdHZhbGlkX3IsIHJtdXhf
dHJlYWR5X3I7CgogICB3aXJlIFszMTowXSAJIHR4X2lkbGU7CiAgIHdpcmUgWzM6MF0gCSBpYnNf
c3RhdGU7CiAgIHdpcmUgWzYzOjBdIAkgcnhfdGRhdGFfaW50OwogICB3aXJlIAkgcnhfdHJlYWR5
X2ludCwgcnhfdHZhbGlkX2ludDsKICAgd2lyZSAJIHJ4X3RsYXN0X2ludDsKCgogICBheGlfZmlm
b18yY2xrICMoLldJRFRIKDY1KSwgLlNJWkUoMC8qbWluaW1hbCovKSkgY3RybF9maWZvCiAgICAg
KC5yZXNldChidXNfcnN0KSwKICAgICAgLmlfYWNsayhidXNfY2xrKSwgLmlfdHZhbGlkKGN0cmxf
dHZhbGlkKSwgLmlfdHJlYWR5KGN0cmxfdHJlYWR5KSwgLmlfdGRhdGEoe2N0cmxfdGxhc3QsIGN0
cmxfdGRhdGF9KSwKICAgICAgLm9fYWNsayhyYWRpb19jbGspLCAub190dmFsaWQoY3RybF90dmFs
aWRfciksIC5vX3RyZWFkeShjdHJsX3RyZWFkeV9yKSwgLm9fdGRhdGEoe2N0cmxfdGxhc3Rfciwg
Y3RybF90ZGF0YV9yfSkpOwoKICAgYXhpX2ZpZm9fMmNsayAjKC5XSURUSCg2NSksIC5TSVpFKFJB
RElPX0ZJRk9fU0laRSkpIHR4X2ZpZm8KICAgICAoLnJlc2V0KGJ1c19yc3QpLAogICAgICAuaV9h
Y2xrKGJ1c19jbGspLCAuaV90dmFsaWQodHhfdHZhbGlkKSwgLmlfdHJlYWR5KHR4X3RyZWFkeSks
IC5pX3RkYXRhKHt0eF90bGFzdCwgdHhfdGRhdGF9KSwKICAgICAgLm9fYWNsayhyYWRpb19jbGsp
LCAub190dmFsaWQodHhfdHZhbGlkX3IpLCAub190cmVhZHkodHhfdHJlYWR5X3IpLCAub190ZGF0
YSh7dHhfdGxhc3RfciwgdHhfdGRhdGFfcn0pKTsKCiAgIGF4aV9maWZvXzJjbGsgIyguV0lEVEgo
NjUpLCAuU0laRSgwLyptaW5pbWFsKi8pKSByZXNwX2ZpZm8KICAgICAoLnJlc2V0KHJhZGlvX3Jz
dCksCiAgICAgIC5pX2FjbGsocmFkaW9fY2xrKSwgLmlfdHZhbGlkKHJtdXhfdHZhbGlkX3IpLCAu
aV90cmVhZHkocm11eF90cmVhZHlfciksIC5pX3RkYXRhKHtybXV4X3RsYXN0X3IsIHJtdXhfdGRh
dGFfcn0pLAogICAgICAub19hY2xrKGJ1c19jbGspLCAub190dmFsaWQocmVzcF90dmFsaWQpLCAu
b190cmVhZHkocmVzcF90cmVhZHkpLCAub190ZGF0YSh7cmVzcF90bGFzdCwgcmVzcF90ZGF0YX0p
KTsKCiAgIGF4aV9maWZvXzJjbGsgIyguV0lEVEgoNjUpLCAuU0laRShSQURJT19GSUZPX1NJWkUp
KSByeF9maWZvCiAgICAgKC5yZXNldChyYWRpb19yc3QpLAogICAgICAuaV9hY2xrKHJhZGlvX2Ns
ayksIC5pX3R2YWxpZChyeF90dmFsaWRfciksIC5pX3RyZWFkeShyeF90cmVhZHlfciksIC5pX3Rk
YXRhKHtyeF90bGFzdF9yLCByeF90ZGF0YV9yfSksCiAgICAgIC5vX2FjbGsoYnVzX2NsayksIC5v
X3R2YWxpZChyeF90dmFsaWRfaW50KSwgLm9fdHJlYWR5KHJ4X3RyZWFkeV9pbnQpLCAub190ZGF0
YSh7cnhfdGxhc3RfaW50LCByeF90ZGF0YV9pbnR9KSk7CgogICBheGlfcGFja2V0X2dhdGUgIygu
V0lEVEgoNjQpLCAuU0laRShTQU1QTEVfRklGT19TSVpFKSwgLlVTRV9BU19CVUZGKDApKSBidWZm
ZXJfd2hvbGVfcGt0CiAgICAgKAogICAgICAuY2xrKGJ1c19jbGspLCAucmVzZXQoYnVzX3JzdCks
IC5jbGVhcigxJ2IwKSwKICAgICAgLmlfdGRhdGEocnhfdGRhdGFfaW50KSwgLmlfdGxhc3Qocnhf
dGxhc3RfaW50KSwgLmlfdGVycm9yKDEnYjApLCAuaV90dmFsaWQocnhfdHZhbGlkX2ludCksIC5p
X3RyZWFkeShyeF90cmVhZHlfaW50KSwKICAgICAgLm9fdGRhdGEocnhfdGRhdGEpLCAub190bGFz
dChyeF90bGFzdCksIC5vX3R2YWxpZChyeF90dmFsaWQpLCAub190cmVhZHkocnhfdHJlYWR5KSk7
CgogICAvLy8vLy8vLy8vLy8vLy8vLy8vLy8vLy8vLy8vLy8vLy8vLy8vLy8vLy8vLy8vLy8vLy8v
Ly8vLy8vLy8vLy8vLy8vLy8vLy8vLy8vLy8vLy8vLy8vLy8KICAgLy8gU2V0dGluZyBidXMgYW5k
IGNvbnRyb2xzCgogICB3aXJlIFs2MzowXSAgICBjdHJsX3RkYXRhX3Byb2M7CiAgIHdpcmUgICAg
ICAgICAgIGN0cmxfdHJlYWR5X3Byb2MsIGN0cmxfdHZhbGlkX3Byb2M7CiAgIHdpcmUgICAgICAg
ICAgIGN0cmxfdGxhc3RfcHJvYzsKCiAgIGxvY2FscGFyYW0gU1JfTE9PUEJBQ0sgICAgID0gOCdk
NjsKICAgbG9jYWxwYXJhbSBTUl9TUEkgICAgICAgICAgPSA4J2Q4OwogICBsb2NhbHBhcmFtIFNS
X0FUUiAgICAgICAgICA9IDgnZDEyOyAvLyB0aG9ydWdoIDgnZDE4CiAgIGxvY2FscGFyYW0gU1Jf
VEVTVCAgICAgICAgID0gOCdkMjE7CiAgIGxvY2FscGFyYW0gU1JfQ09ERUNfSURMRSAgID0gOCdk
MjI7CiAgIGxvY2FscGFyYW0gU1JfUkVBREJBQ0sgICAgID0gOCdkMzI7CiAgIGxvY2FscGFyYW0g
U1JfVFhfQ1RSTCAgICAgID0gOCdkNjQ7CiAgIGxvY2FscGFyYW0gU1JfUlhfQ1RSTCAgICAgID0g
OCdkOTY7CiAgIGxvY2FscGFyYW0gU1JfVElNRSAgICAgICAgID0gOCdkMTI4OwogICBsb2NhbHBh
cmFtIFNSX1JYX0ZNVCAgICAgICA9IDgnZDEzNjsKICAgbG9jYWxwYXJhbSBTUl9UWF9GTVQgICAg
ICAgPSA4J2QxMzg7CiAgIGxvY2FscGFyYW0gU1JfUlhfRFNQICAgICAgID0gOCdkMTQ0OwogICBs
b2NhbHBhcmFtIFNSX1RYX0RTUCAgICAgICA9IDgnZDE4NDsKICAgbG9jYWxwYXJhbSBTUl9GUF9H
UElPICAgICAgPSA4J2QyMDA7IC8vIHRob3J1Z2ggOCdkMjA2CiAgIGxvY2FscGFyYW0gU1JfVVNF
Ul9TUl9CQVNFID0gOCdkMjUzOwogICBsb2NhbHBhcmFtIFNSX1VTRVJfUkJfQUREUiA9IDgnZDI1
NTsKCiAgIHdpcmUgICAgICAgICAgIHNldF9zdGI7CiAgIHdpcmUgWzc6MF0gICAgIHNldF9hZGRy
OwogICB3aXJlIFszMTowXSAgICBzZXRfZGF0YTsKICAgd2lyZSBbMzE6MF0gICAgdGVzdF9yZWFk
YmFjazsKICAgd2lyZSBbOTowXSAJICBmcF9ncGlvX3JlYWRiYWNrOwogICB3aXJlICAgICAgICAg
ICBydW5fcngsIHJ1bl90eDsKICAgd2lyZSAgICAgICAgICAgcnhfZmxvd19jdHJsX2J1c3k7Cgog
ICByZWcgWzYzOjBdICAgICByYl9kYXRhOwogICB3aXJlIFsyOjBdICAgICByYl9hZGRyOwoKICAg
d2lyZSBbNjM6MF0gdml0YV90aW1lLCB2aXRhX3RpbWVfbGFzdHBwczsKICAgdGltZWtlZXBlciAj
KC5TUl9USU1FX0hJKFNSX1RJTUUpLCAuU1JfVElNRV9MTyhTUl9USU1FKzEpLCAuU1JfVElNRV9D
VFJMKFNSX1RJTUUrMikpIHRpbWVrZWVwZXIKICAgICAoLmNsayhyYWRpb19jbGspLCAucmVzZXQo
cmFkaW9fcnN0KSwgLnBwcyhwcHMpLCAuc3luY19pbih0aW1lX3N5bmMpLCAuc3Ryb2JlKDEnYjEp
LAogICAgICAuc2V0X3N0YihzZXRfc3RiKSwgLnNldF9hZGRyKHNldF9hZGRyKSwgLnNldF9kYXRh
KHNldF9kYXRhKSwKICAgICAgLnZpdGFfdGltZSh2aXRhX3RpbWUpLCAudml0YV90aW1lX2xhc3Rw
cHModml0YV90aW1lX2xhc3RwcHMpLAogICAgICAuc3luY19vdXQoKSk7CgogICB3aXJlIFszMTow
XSBkZWJ1Z19yYWRpb19jdHJsX3Byb2M7CiAgIHJhZGlvX2N0cmxfcHJvYyByYWRpb19jdHJsX3By
b2MKICAgICAoLmNsayhyYWRpb19jbGspLCAucmVzZXQocmFkaW9fcnN0KSwgLmNsZWFyKDEnYjAp
LAogICAgICAuY3RybF90ZGF0YShjdHJsX3RkYXRhX3Byb2MpLCAuY3RybF90bGFzdChjdHJsX3Rs
YXN0X3Byb2MpLCAuY3RybF90dmFsaWQoY3RybF90dmFsaWRfcHJvYyksIC5jdHJsX3RyZWFkeShj
dHJsX3RyZWFkeV9wcm9jKSwKICAgICAgLnJlc3BfdGRhdGEocmVzcF90ZGF0YV9yKSwgLnJlc3Bf
dGxhc3QocmVzcF90bGFzdF9yKSwgLnJlc3BfdHZhbGlkKHJlc3BfdHZhbGlkX3IpLCAucmVzcF90
cmVhZHkocmVzcF90cmVhZHlfciksCiAgICAgIC52aXRhX3RpbWUodml0YV90aW1lKSwKICAgICAg
LnNldF9zdGIoc2V0X3N0YiksIC5zZXRfYWRkcihzZXRfYWRkciksIC5zZXRfZGF0YShzZXRfZGF0
YSksCiAgICAgIC5yZWFkeSgxJ2IxKSwgLnJlYWRiYWNrKHJiX2RhdGEpLAogICAgICAuZGVidWco
ZGVidWdfcmFkaW9fY3RybF9wcm9jKSk7CgogICByZWcgWzYzOjBdICAgICByYl9kYXRhX3VzZXI7
CmdlbmVyYXRlCiAgIGlmIChVU0VSX1NFVFRJTkdTID09IDEpIGJlZ2luCiAgICAgIHdpcmUgICAg
ICAgICAgIHNldF9zdGJfdXNlcjsKICAgICAgd2lyZSBbNzowXSAgICAgc2V0X2FkZHJfdXNlcjsK
ICAgICAgd2lyZSBbMzE6MF0gICAgc2V0X2RhdGFfdXNlcjsKICAgICAgd2lyZSBbNzowXSAgICAg
cmJfYWRkcl91c2VyOwoKICAgICAgdXNlcl9zZXR0aW5ncyAjKC5CQVNFKFNSX1VTRVJfU1JfQkFT
RSkpIHVzZXJfc2V0dGluZ3MKICAgICAgICAoLmNsayhyYWRpb19jbGspLCAucnN0KHJhZGlvX3Jz
dCksCiAgICAgICAgIC5zZXRfc3RiKHNldF9zdGIpLCAuc2V0X2FkZHIoc2V0X2FkZHIpLCAuc2V0
X2RhdGEoc2V0X2RhdGEpLAogICAgICAgICAuc2V0X3N0Yl91c2VyKHNldF9zdGJfdXNlciksIC5z
ZXRfYWRkcl91c2VyKHNldF9hZGRyX3VzZXIpLCAuc2V0X2RhdGFfdXNlcihzZXRfZGF0YV91c2Vy
KSk7CgogICAgICBzZXR0aW5nX3JlZyAjKC5teV9hZGRyKFNSX1VTRVJfUkJfQUREUiksIC5hd2lk
dGgoOCksIC53aWR0aCg4KSkgdXNlcl9yYl9hZGRyCiAgICAgICAgKC5jbGsocmFkaW9fY2xrKSwg
LnJzdChyYWRpb19yc3QpLCAuc3Ryb2JlKHNldF9zdGIpLCAuYWRkcihzZXRfYWRkciksIC5pbihz
ZXRfZGF0YSksCiAgICAgICAgIC5vdXQocmJfYWRkcl91c2VyKSwgLmNoYW5nZWQoKSk7CgogICAg
ICAvLyAtLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tCiAgICAgIC8vIEVudGVyIHVz
ZXIgc2V0dGluZ3MgcmVnaXN0ZXJzIGhlcmUKICAgICAgLy8gLS0tLS0tLS0tLS0tLS0tLS0tLS0t
LS0tLS0tLS0tLS0tLQoKICAgICAgLy8gRXhhbXBsZSBjb2RlIGZvciAzMi1iaXQgc2V0dGluZ3Mg
cmVnaXN0ZXJzIGFuZCA2NC1iaXQgcmVhZGJhY2sgcmVnaXN0ZXJzCiAgICAgIC8vCiAgICAgIC8v
IFRvIHRlc3QgdGhpcywgbW9kaWZ5IHRoZSAqX2NvcmUudiBmaWxlIGZvciB5b3VyIHNwZWNpZmlj
IFVTUlAgYW5kIHNldAogICAgICAvLyBVU0VSX1NFVFRJTkdTPTEgZm9yIHRoZSBwYXJhbWV0ZXJz
IGZvciB0aGUgcmFkaW9fbGVnYWN5IGluc3RhbnRpYXRpb24uCiAgICAgIC8vCiAgICAgIC8vIFlv
dSBjYW4gdGhlbiB1c2UgdGhlIGdldF91c2VyX3NldHRpbmdzX2lmYWNlKCkgbGlrZSB0aGlzOgog
ICAgICAvLwogICAgICAvLyBhdXRvIHVzcnAgPSBtdWx0aV91c3JwOjptYWtlKCJ0eXBlPWIyMDAs
ZW5hYmxlX3VzZXJfcmVncyIpOwogICAgICAvLyBhdXRvIHJlZ3MgPSB1c3JwLT5nZXRfdXNlcl9z
ZXR0aW5nc19pZmFjZSgwKTsKICAgICAgLy8gcmVncy0+cG9rZTMyKDAsIDB4Q0FGRSk7CiAgICAg
IC8vIHJlZ3MtPnBva2UzMig0LCAweEJFRUYpOwogICAgICAvLyBzdGQ6OmNvdXQgPDwgYm9vc3Q6
OmZvcm1hdCgiMHglMDE2WCIpICUgcmVncy0+cGVlazY0KDApIDw8IHN0ZDo6ZW5kbDsKICAgICAg
Ly8gd2lyZSBbMzE6MF0gdXNlcl9yZWdfMF92YWx1ZSwgdXNlcl9yZWdfMV92YWx1ZTsKCiAgICAg
IHNldHRpbmdfcmVnICMoLm15X2FkZHIoOCdkMCksIC5hd2lkdGgoOCksIC53aWR0aCgzMikpIHVz
ZXJfcmVnXzAKICAgICAgICAoLmNsayhyYWRpb19jbGspLCAucnN0KHJhZGlvX3JzdCksIC5zdHJv
YmUoc2V0X3N0Yl91c2VyKSwgLmFkZHIoc2V0X2FkZHJfdXNlciksIC5pbihzZXRfZGF0YV91c2Vy
KSwKICAgICAgICAgLm91dCh1c2VyX3JlZ18wX3ZhbHVlKSwgLmNoYW5nZWQoKSk7CgogICAgICBz
ZXR0aW5nX3JlZyAjKC5teV9hZGRyKDgnZDEpLCAuYXdpZHRoKDgpLCAud2lkdGgoMzIpKSB1c2Vy
X3JlZ18xCiAgICAgICAgKC5jbGsocmFkaW9fY2xrKSwgLnJzdChyYWRpb19yc3QpLCAuc3Ryb2Jl
KHNldF9zdGJfdXNlciksIC5hZGRyKHNldF9hZGRyX3VzZXIpLCAuaW4oc2V0X2RhdGFfdXNlciks
CiAgICAgICAgIC5vdXQodXNlcl9yZWdfMV92YWx1ZSksIC5jaGFuZ2VkKCkpOwoKICAgICAgYWx3
YXlzIEAqIGJlZ2luCiAgICAgICAgIGNhc2UocmJfYWRkcl91c2VyKQogICAgICAgICAgICA4J2Qw
IDogcmJfZGF0YV91c2VyIDw9IHt1c2VyX3JlZ18xX3ZhbHVlWzMxOjE2XSwgZGVjb2RlZF9zeW1i
b2xfdmFsdWUsIGN1cnJfc2FtcGxlX3JlZ192YWx1ZX07CiAgICAgICAgICAgIC8vOCdkMCA6IHJi
X2RhdGFfdXNlciA8PSB7dXNlcl9yZWdfMV92YWx1ZSwgdXNlcl9yZWdfMF92YWx1ZX07CiAgICAg
ICAgICAgIGRlZmF1bHQgOiByYl9kYXRhX3VzZXIgPD0gNjQnZDA7CiAgICAgICAgIGVuZGNhc2UK
ICAgICAgZW5kCgogICBlbmQgZWxzZSBiZWdpbiAgICAvL2ZvciBVU0VSX1NFVFRJTkdTID09IDEK
ICAgICAgYWx3YXlzIEAqIHJiX2RhdGFfdXNlciA8PSA2NCdkMDsKICAgZW5kCmVuZGdlbmVyYXRl
CgogICBhbHdheXMgQCoKICAgICBjYXNlKHJiX2FkZHIpCiAgICAgICAzJ2QwIDogcmJfZGF0YSA8
PSB7IDMyJ2IwLCB0ZXN0X3JlYWRiYWNrIH07CiAgICAgICAzJ2QxIDogcmJfZGF0YSA8PSB2aXRh
X3RpbWU7CiAgICAgICAzJ2QyIDogcmJfZGF0YSA8PSB2aXRhX3RpbWVfbGFzdHBwczsKICAgICAg
IDMnZDMgOiByYl9kYXRhIDw9IHt0eCwgcnh9OwogICAgICAgMydkNCA6IHJiX2RhdGEgPD0gezU0
J2gwLGZwX2dwaW9fcmVhZGJhY2t9OwogICAgICAgMydkNSA6IHJiX2RhdGEgPD0gezU5J2gwLHJ4
X2Zsb3dfY3RybF9idXN5LGlic19zdGF0ZVszOjBdfTsgLy8gTW9uaXRvciBzdGF0ZSBvZiBSWCBz
dGF0ZSBtYWNoaW5lLgovLyAgICAgMydkNiA6IHJiX2RhdGEgPD0gPHVudXNlZD47CiAgICAgICAz
J2Q3IDogcmJfZGF0YSA8PSByYl9kYXRhX3VzZXI7CiAgICAgICBkZWZhdWx0IDogcmJfZGF0YSA8
PSA2NCdkMDsKICAgICBlbmRjYXNlIC8vIGNhc2UgKHJiX2FkZHIpCgogICAvLwogICAvLyBTYW1w
bGUgVklUQV9USU1FIGludG8gdGhlIGJ1c19jbGsgZG9tYWluIGZvciB1c2UgYnkgaW5zdHJ1bWVu
dGF0aW9uLgogICAvLwogICB3aXJlIFs2MzowXSB2aXRhX3RpbWVfYl9pbnQ7CiAgIHdpcmUgICAg
ICAgIHZpdGFfdGltZV9iX3ZhbGlkOwoKICAgIGF4aV9maWZvXzJjbGsgIyguV0lEVEgoNjQpLCAu
U0laRSgwKSkgdml0YV90aW1lX2ZpZm8KICAgICAoLnJlc2V0KHJhZGlvX3JzdCksCiAgICAgIC5p
X2FjbGsocmFkaW9fY2xrKSwgLmlfdHZhbGlkKDEnYjEpLCAuaV90cmVhZHkoKSwgLmlfdGRhdGEo
dml0YV90aW1lKSwKICAgICAgLm9fYWNsayhidXNfY2xrKSwgLm9fdHZhbGlkKHZpdGFfdGltZV9i
X3ZhbGlkKSwgLm9fdHJlYWR5KDEnYjEpLCAub190ZGF0YSh2aXRhX3RpbWVfYl9pbnQpKTsKCiAg
IGFsd2F5cyBAKHBvc2VkZ2UgYnVzX2NsaykKICAgICBpZiAodml0YV90aW1lX2JfdmFsaWQpCiAg
ICAgICB2aXRhX3RpbWVfYiA8PSB2aXRhX3RpbWVfYl9pbnQ7CgogICAvLyBTZXQgdGhpcyByZWdp
c3RlciB0byBsb29wIFRYIGRhdGEgZGlyZWN0bHkgdG8gUlggZGF0YS4KICAgc2V0dGluZ19yZWcg
IygubXlfYWRkcihTUl9MT09QQkFDSyksIC5hd2lkdGgoOCksIC53aWR0aCgxKSkgc3JfbG9vcGJh
Y2sKICAgICAoLmNsayhyYWRpb19jbGspLCAucnN0KHJhZGlvX3JzdCksIC5zdHJvYmUoc2V0X3N0
YiksIC5hZGRyKHNldF9hZGRyKSwgLmluKHNldF9kYXRhKSwKICAgICAgLm91dChsb29wYmFjayks
IC5jaGFuZ2VkKCkpOwoKICAgc2V0dGluZ19yZWcgIygubXlfYWRkcihTUl9URVNUKSwgLmF3aWR0
aCg4KSwgLndpZHRoKDMyKSkgc3JfdGVzdAogICAgICguY2xrKHJhZGlvX2NsayksIC5yc3QocmFk
aW9fcnN0KSwgLnN0cm9iZShzZXRfc3RiKSwgLmFkZHIoc2V0X2FkZHIpLCAuaW4oc2V0X2RhdGEp
LAogICAgICAub3V0KHRlc3RfcmVhZGJhY2spLCAuY2hhbmdlZCgpKTsKCiAgIHNldHRpbmdfcmVn
ICMoLm15X2FkZHIoU1JfQ09ERUNfSURMRSksIC5hd2lkdGgoOCksIC53aWR0aCgzMikpIHNyX2Nv
ZGVjX2lkbGUKICAgICAoLmNsayhyYWRpb19jbGspLCAucnN0KHJhZGlvX3JzdCksIC5zdHJvYmUo
c2V0X3N0YiksIC5hZGRyKHNldF9hZGRyKSwgLmluKHNldF9kYXRhKSwKICAgICAgLm91dCh0eF9p
ZGxlKSwgLmNoYW5nZWQoKSk7CgogICBzZXR0aW5nX3JlZyAjKC5teV9hZGRyKFNSX1JFQURCQUNL
KSwgLmF3aWR0aCg4KSwgLndpZHRoKDMpKSBzcl9yZGJhY2sKICAgICAoLmNsayhyYWRpb19jbGsp
LCAucnN0KHJhZGlvX3JzdCksIC5zdHJvYmUoc2V0X3N0YiksIC5hZGRyKHNldF9hZGRyKSwgLmlu
KHNldF9kYXRhKSwKICAgICAgLm91dChyYl9hZGRyKSwgLmNoYW5nZWQoKSk7CgogICAvL1RoZSBm
ZV9hdHIgcGlucyBkcml2ZW4gYnkgdGhpcyBtb2R1bGUgYXJlIGFsd2F5cyBjb25maWd1cmVkIGFz
IG91dHB1dHMgc28gZGVmYXVsdAogICAvL3RoZSBERFIgKGRhdGEgZGlyZWN0aW9uIHJlZ2lzdGVy
KSB0byBiZSBhbGwgb25lcyAob3V0cHV0cykgc28gdGhhdCB0aGUgZHJpdmUgZGlyZWN0aW9uCiAg
IC8vdGhlc2UgbGluZXMgZG9lcyBub3QgY2hhbmdlIGR1cmluZy9hZnRlciByZXNldHMuCiAgIGdw
aW9fYXRyICMoLkJBU0UoU1JfQVRSKSwgLldJRFRIKDMyKSwgLkZBQl9DVFJMX0VOKDApLCAuREVG
QVVMVF9ERFIoMzInaEZGRkZGRkZGKSwgLkRFRkFVTFRfSURMRSgzMidoMDAwMDAwMDApKSBmZV9n
cGlvX2F0cgogICAgICguY2xrKHJhZGlvX2NsayksLnJlc2V0KHJhZGlvX3JzdCksCiAgICAgIC5z
ZXRfc3RiKHNldF9zdGIpLC5zZXRfYWRkcihzZXRfYWRkciksLnNldF9kYXRhKHNldF9kYXRhKSwK
ICAgICAgLnJ4KHJ1bl9yeCksIC50eChydW5fdHgpLAogICAgICAuZ3Bpb19pbihmZV9ncGlvX2lu
KSwgLmdwaW9fb3V0KGZlX2dwaW9fb3V0KSwgLmdwaW9fZGRyKGZlX2dwaW9fZGRyKSwKICAgICAg
LmdwaW9fb3V0X2ZhYigzMidoMDAwMDAwMDAgLyogbm8gZmFicmljIGNvbnRyb2wgKi8pLCAuZ3Bp
b19zd19yYigpICk7CgogICBnZW5lcmF0ZQogICAgICBpZiAoRlBfR1BJTyAhPSAwKSBiZWdpbjog
YWRkX2ZwX2dwaW8KICAgICAgICAgZ3Bpb19hdHIgIyguQkFTRShTUl9GUF9HUElPKSwgLldJRFRI
KDEwKSwgLkZBQl9DVFJMX0VOKDApKSBmcF9ncGlvX2F0cgogICAgICAgICAgICAoLmNsayhyYWRp
b19jbGspLC5yZXNldChyYWRpb19yc3QpLAogICAgICAgICAgICAuc2V0X3N0YihzZXRfc3RiKSwu
c2V0X2FkZHIoc2V0X2FkZHIpLC5zZXRfZGF0YShzZXRfZGF0YSksCiAgICAgICAgICAgIC5yeChy
dW5fcngpLCAudHgocnVuX3R4KSwKICAgICAgICAgICAgLmdwaW9faW4oZnBfZ3Bpb19pbiksIC5n
cGlvX291dChmcF9ncGlvX291dCksIC5ncGlvX2RkcihmcF9ncGlvX2RkciksIAogICAgICAgICAg
ICAuZ3Bpb19vdXRfZmFiKDEwJ2gwMDAgLyogbm8gZmFicmljIGNvbnRyb2wgKi8pLCAuZ3Bpb19z
d19yYihmcF9ncGlvX3JlYWRiYWNrKSk7CiAgICAgIGVuZAogICBlbmRnZW5lcmF0ZQoKCgogICAv
Ly8vLy8vLy8vLy8vLy8vLy8vLy8vLy8vLy8vLy8vLy8vLy8vLy8vLy8vLy8vLy8vLy8vLy8vLy8v
Ly8vLy8vLy8vLy8vLy8vLy8vLy8vLy8vLy8vLy8KICAgLy8gU291cmNlIGZsb3cgY29udHJvbAoK
Z2VuZXJhdGUKICAgaWYgKFNPVVJDRV9GTE9XX0NPTlRST0wgPT0gMSkgYmVnaW4KCiAgICAgIGxv
Y2FscGFyYW0gU0lEX1BSRUZJWF9DVFJMID0gMidkMDsKICAgICAgbG9jYWxwYXJhbSBTSURfUFJF
RklYX0ZDICAgPSAyJ2QxOwoKICAgICAgd2lyZSBbNjM6MF0gICAgY3RybF90ZGF0YV9mYzsKICAg
ICAgd2lyZSAgICAgICAgICAgY3RybF90cmVhZHlfZmMsIGN0cmxfdHZhbGlkX2ZjOwogICAgICB3
aXJlICAgICAgICAgICBjdHJsX3RsYXN0X2ZjOwoKICAgICAgd2lyZSBbNjM6MF0gICAgY3RybF9o
ZHI7CiAgICAgIHdpcmUgWzE6MF0gICAgIGN0cmxfZGVzdDsKCiAgICAgIGFzc2lnbiBjdHJsX2Rl
c3QgPSAoY3RybF9oZHJbMTowXSA9PSBTSURfUFJFRklYX0ZDKSA/IDInZDEgOiAyJ2QwOwoKICAg
ICAgYXhpX2RlbXV4NCAjKC5BQ1RJVkVfQ0hBTig0J2IwMDExKSwgLldJRFRIKDY0KSwgLkJVRkZF
UigxKSkgZGVtdXhfcHJvY19mYwogICAgICAgICguY2xrKHJhZGlvX2NsayksIC5yZXNldChyYWRp
b19yc3QpLCAuY2xlYXIoMSdiMCksCiAgICAgICAgIC5oZWFkZXIoY3RybF9oZHIpLCAuZGVzdChj
dHJsX2Rlc3QpLAogICAgICAgICAuaV90ZGF0YShjdHJsX3RkYXRhX3IpLCAuaV90bGFzdChjdHJs
X3RsYXN0X3IpLCAuaV90dmFsaWQoY3RybF90dmFsaWRfciksIC5pX3RyZWFkeShjdHJsX3RyZWFk
eV9yKSwgICAgICAgICAgICAgICAgICAvL0lucHV0CiAgICAgICAgIC5vMF90ZGF0YShjdHJsX3Rk
YXRhX3Byb2MpLCAubzBfdGxhc3QoY3RybF90bGFzdF9wcm9jKSwgLm8wX3R2YWxpZChjdHJsX3R2
YWxpZF9wcm9jKSwgLm8wX3RyZWFkeShjdHJsX3RyZWFkeV9wcm9jKSwgIC8vU2V0dGluZ3MvUmVh
ZGJhY2sKICAgICAgICAgLm8xX3RkYXRhKGN0cmxfdGRhdGFfZmMpLCAubzFfdGxhc3QoY3RybF90
bGFzdF9mYyksIC5vMV90dmFsaWQoY3RybF90dmFsaWRfZmMpLCAubzFfdHJlYWR5KGN0cmxfdHJl
YWR5X2ZjKSwgICAgICAgICAgLy9GbG93IGNvbnRyb2wKICAgICAgICAgLm8yX3RkYXRhKCksIC5v
Ml90bGFzdCgpLCAubzJfdHZhbGlkKCksIC5vMl90cmVhZHkoMSdiMCksICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgLy9VbnVzZWQKICAg
ICAgICAgLm8zX3RkYXRhKCksIC5vM190bGFzdCgpLCAubzNfdHZhbGlkKCksIC5vM190cmVhZHko
MSdiMCkpOyAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgLy9VbnVzZWQKCiAgICAgIHNvdXJjZV9mbG93X2NvbnRyb2xfbGVnYWN5ICMoLkJB
U0UoU1JfUlhfQ1RSTCs2KSkgcnhfc2ZjCiAgICAgICAgKC5jbGsocmFkaW9fY2xrKSwgLnJlc2V0
KHJhZGlvX3JzdCksIC5jbGVhcigxJ2IwKSwKICAgICAgICAgLnNldF9zdGIoc2V0X3N0YiksIC5z
ZXRfYWRkcihzZXRfYWRkciksIC5zZXRfZGF0YShzZXRfZGF0YSksCiAgICAgICAgIC5mY190ZGF0
YShjdHJsX3RkYXRhX2ZjKSwgLmZjX3RsYXN0KGN0cmxfdGxhc3RfZmMpLCAuZmNfdHZhbGlkKGN0
cmxfdHZhbGlkX2ZjKSwgLmZjX3RyZWFkeShjdHJsX3RyZWFkeV9mYyksICAgICAgICAgICAgICAg
ICAgICAgIC8vRmxvdyBjb250cm9sIEluCiAgICAgICAgIC5pbl90ZGF0YShyeF9wcmVmY190ZGF0
YV9yKSwgLmluX3RsYXN0KHJ4X3ByZWZjX3RsYXN0X3IpLCAuaW5fdHZhbGlkKHJ4X3ByZWZjX3R2
YWxpZF9yKSwgLmluX3RyZWFkeShyeF9wcmVmY190cmVhZHlfciksICAgICAgICAgIC8vUlggSW5w
dXQKICAgICAgICAgLm91dF90ZGF0YShyeF9wb3N0ZmNfdGRhdGFfciksIC5vdXRfdGxhc3Qocnhf
cG9zdGZjX3RsYXN0X3IpLCAub3V0X3R2YWxpZChyeF9wb3N0ZmNfdHZhbGlkX3IpLCAub3V0X3Ry
ZWFkeShyeF9wb3N0ZmNfdHJlYWR5X3IpLCAgLy9SWCBPdXRwdXQKICAgICAgICAgLmJ1c3kocnhf
Zmxvd19jdHJsX2J1c3kpKTsKCiAgIGVuZCBlbHNlIGJlZ2luICAgIC8vZm9yIFNPVVJDRV9GTE9X
X0NPTlRST0wgPT0gMQoKICAgICAgYXNzaWduIGN0cmxfdGRhdGFfcHJvYyAgPSBjdHJsX3RkYXRh
X3I7CiAgICAgIGFzc2lnbiBjdHJsX3RsYXN0X3Byb2MgID0gY3RybF90bGFzdF9yOwogICAgICBh
c3NpZ24gY3RybF90dmFsaWRfcHJvYyA9IGN0cmxfdHZhbGlkX3I7CiAgICAgIGFzc2lnbiBjdHJs
X3RyZWFkeV9yICAgID0gY3RybF90cmVhZHlfcHJvYzsKCiAgICAgIGFzc2lnbiByeF9wb3N0ZmNf
dGRhdGFfciAgID0gcnhfcHJlZmNfdGRhdGFfcjsKICAgICAgYXNzaWduIHJ4X3Bvc3RmY190bGFz
dF9yICAgPSByeF9wcmVmY190bGFzdF9yOwogICAgICBhc3NpZ24gcnhfcG9zdGZjX3R2YWxpZF9y
ICA9IHJ4X3ByZWZjX3R2YWxpZF9yOwogICAgICBhc3NpZ24gcnhfcHJlZmNfdHJlYWR5X3IgICA9
IHJ4X3Bvc3RmY190cmVhZHlfcjsKCiAgICAgIGFzc2lnbiByeF9mbG93X2N0cmxfYnVzeSAgID0g
MSdiMDsKCiAgIGVuZAoKZW5kZ2VuZXJhdGUKCiAgIC8vIC8vLy8vLy8vLy8vLy8vLy8vLy8vLy8v
Ly8vLy8vLy8vLy8vLy8vLy8vLy8vLy8vLy8vLy8vLy8vLy8vLy8vLy8vLy8vLy8vLy8vLy8vLy8v
LwogICAvLyAgVFggQ2hhaW4KCiAgIHdpcmUgWzE3NTowXSB0eHNhbXBsZV90ZGF0YTsKICAgd2ly
ZSAJdHhzYW1wbGVfdHZhbGlkLCB0eHNhbXBsZV90cmVhZHk7CiAgIHdpcmUgWzMxOjBdIAlzYW1w
bGVfdHg7CiAgIHdpcmUgCWFja19vcl9lcnJvciwgcGFja2V0X2NvbnN1bWVkOwogICB3aXJlIFsx
MTowXSAJc2VxbnVtOwogICB3aXJlIFs2MzowXSAJZXJyb3JfY29kZTsKICAgd2lyZSBbMzE6MF0g
CXNpZDsKICAgd2lyZSBbMjM6MF0gdHhfZmVfaSwgdHhfZmVfcTsKCiAgIHdpcmUgWzMxOjBdIGRl
YnVnX3R4X2NvbnRyb2w7CgogICBhbHdheXMgQChwb3NlZGdlIHJhZGlvX2NsaykgYmVnaW4KICAg
ICAgdHhbMzE6MTZdIDw9IChydW5fdHgpID8gdHhfZmVfaVsyMzo4XSA6IHR4X2lkbGVbMzE6MTZd
OwogICAgICB0eFsxNTowXSAgPD0gKHJ1bl90eCkgPyB0eF9mZV9xWzIzOjhdIDogdHhfaWRsZVsx
NTowXTsKICAgZW5kCgogICB3aXJlIFs2MzowXSB0eF90ZGF0YV9pOyB3aXJlIHR4X3RsYXN0X2ks
IHR4X3R2YWxpZF9pLCB0eF90cmVhZHlfaTsKCiAgIG5ld190eF9kZWZyYW1lciB0eF9kZWZyYW1l
cgogICAgICguY2xrKHJhZGlvX2NsayksIC5yZXNldChyYWRpb19yc3QpLCAuY2xlYXIoMSdiMCks
CiAgICAgIC5pX3RkYXRhKHR4X3RkYXRhX2kpLCAuaV90bGFzdCh0eF90bGFzdF9pKSwgLmlfdHZh
bGlkKHR4X3R2YWxpZF9pKSwgLmlfdHJlYWR5KHR4X3RyZWFkeV9pKSwKICAgICAgLnNhbXBsZV90
ZGF0YSh0eHNhbXBsZV90ZGF0YSksIC5zYW1wbGVfdHZhbGlkKHR4c2FtcGxlX3R2YWxpZCksIC5z
YW1wbGVfdHJlYWR5KHR4c2FtcGxlX3RyZWFkeSksCiAgICAgIC5kZWJ1ZygpKTsKCiAgIG5ld190
eF9jb250cm9sICMoLkJBU0UoU1JfVFhfQ1RSTCkpIHR4X2NvbnRyb2wKICAgICAoLmNsayhyYWRp
b19jbGspLCAucmVzZXQocmFkaW9fcnN0KSwgLmNsZWFyKDEnYjApLAogICAgICAuc2V0X3N0Yihz
ZXRfc3RiKSwgLnNldF9hZGRyKHNldF9hZGRyKSwgLnNldF9kYXRhKHNldF9kYXRhKSwKICAgICAg
LnZpdGFfdGltZSh2aXRhX3RpbWUpLAogICAgICAuYWNrX29yX2Vycm9yKGFja19vcl9lcnJvciks
IC5wYWNrZXRfY29uc3VtZWQocGFja2V0X2NvbnN1bWVkKSwKICAgICAgLnNlcW51bShzZXFudW0p
LCAuZXJyb3JfY29kZShlcnJvcl9jb2RlKSwgLnNpZChzaWQpLAogICAgICAuc2FtcGxlX3RkYXRh
KHR4c2FtcGxlX3RkYXRhKSwgLnNhbXBsZV90dmFsaWQodHhzYW1wbGVfdHZhbGlkKSwgLnNhbXBs
ZV90cmVhZHkodHhzYW1wbGVfdHJlYWR5KSwKICAgICAgLnNhbXBsZShzYW1wbGVfdHgpLCAucnVu
KHJ1bl90eCksIC5zdHJvYmUoc3Ryb2JlX3R4KSwKICAgICAgLmRlYnVnKGRlYnVnX3R4X2NvbnRy
b2wpKTsKCiAgIHR4X3Jlc3BvbmRlciAjKC5CQVNFKFNSX1RYX0NUUkwrMikpIHR4X3Jlc3BvbmRl
cgogICAgICguY2xrKHJhZGlvX2NsayksIC5yZXNldChyYWRpb19yc3QpLCAuY2xlYXIoMSdiMCks
CiAgICAgIC5zZXRfc3RiKHNldF9zdGIpLCAuc2V0X2FkZHIoc2V0X2FkZHIpLCAuc2V0X2RhdGEo
c2V0X2RhdGEpLAogICAgICAuYWNrX29yX2Vycm9yKGFja19vcl9lcnJvciksIC5wYWNrZXRfY29u
c3VtZWQocGFja2V0X2NvbnN1bWVkKSwKICAgICAgLnNlcW51bShzZXFudW0pLCAuZXJyb3JfY29k
ZShlcnJvcl9jb2RlKSwgLnNpZChzaWQpLAogICAgICAudml0YV90aW1lKHZpdGFfdGltZSksCiAg
ICAgIC5vX3RkYXRhKHR4cmVzcF90ZGF0YV9yKSwgLm9fdGxhc3QodHhyZXNwX3RsYXN0X3IpLCAu
b190dmFsaWQodHhyZXNwX3R2YWxpZF9yKSwgLm9fdHJlYWR5KHR4cmVzcF90cmVhZHlfcikpOwoK
ICAgd2lyZSBbMzE6MF0gICAgICAgZGVidWdfZHVjX2NoYWluOwogICBkdWNfY2hhaW4gIyguQkFT
RShTUl9UWF9EU1ApLCAuRFNQTk8oMCksIC5XSURUSCgyNCksIC5ORVdfSEJfSU5URVJQKE5FV19I
Ql9JTlRFUlApLC5ERVZJQ0UoREVWSUNFKSkgZHVjX2NoYWluCiAgICAgKC5jbGsocmFkaW9fY2xr
KSwgLnJzdChyYWRpb19yc3QpLCAuY2xyKDEnYjApLAogICAgICAuc2V0X3N0YihzZXRfc3RiKSwu
c2V0X2FkZHIoc2V0X2FkZHIpLC5zZXRfZGF0YShzZXRfZGF0YSksCiAgICAgIC50eF9mZV9pKHR4
X2ZlX2kpLC50eF9mZV9xKHR4X2ZlX3EpLAogICAgICAuc2FtcGxlKHNhbXBsZV90eCksIC5ydW4o
cnVuX3R4KSwgLnN0cm9iZShzdHJvYmVfdHgpLAogICAgICAuZGVidWcoZGVidWdfZHVjX2NoYWlu
KSApOwoKYGlmZGVmIERFTEVURV9GT1JNQVRfQ09OVkVSU0lPTgogICBhc3NpZ24gCSAgICAgdHhf
dGRhdGFfaSA9IHR4X3RkYXRhX3I7CiAgIGFzc2lnbiAJICAgICB0eF90bGFzdF9pID0gdHhfdGxh
c3RfcjsKICAgYXNzaWduIAkgICAgIHR4X3R2YWxpZF9pID0gdHhfdHZhbGlkX3I7CiAgIGFzc2ln
biAJICAgICB0eF90cmVhZHlfciA9IHR4X3RyZWFkeV9pOwpgZWxzZQogICAgY2hkcl94eHh4X3Rv
XzE2c2NfY2hhaW4gIyguQkFTRShTUl9UWF9GTVQpKSBjb252ZXJ0X3h4eHhfdG9fMTZzYwogICAg
ICguY2xrKHJhZGlvX2NsayksIC5yZXNldChyYWRpb19yc3QpLAogICAgICAuc2V0X3N0YihzZXRf
c3RiKSwuc2V0X2FkZHIoc2V0X2FkZHIpLC5zZXRfZGF0YShzZXRfZGF0YSksCiAgICAgIC5pX3Rk
YXRhKHR4X3RkYXRhX3IpLCAuaV90bGFzdCh0eF90bGFzdF9yKSwgLmlfdHZhbGlkKHR4X3R2YWxp
ZF9yKSwgLmlfdHJlYWR5KHR4X3RyZWFkeV9yKSwKICAgICAgLm9fdGRhdGEodHhfdGRhdGFfaSks
IC5vX3RsYXN0KHR4X3RsYXN0X2kpLCAub190dmFsaWQodHhfdHZhbGlkX2kpLCAub190cmVhZHko
dHhfdHJlYWR5X2kpLAogICAgICAuZGVidWcoKSk7CmBlbmRpZiAvLyAhYGlmZGVmIERFTEVURV9G
T1JNQVRfQ09OVkVSU0lPTgoKICAgLy8gLy8vLy8vLy8vLy8vLy8vLy8vLy8vLy8vLy8vLy8vLy8v
Ly8vLy8vLy8vLy8vLy8vLy8vLy8vLy8vLy8vLy8vLy8vLy8vLy8vLy8vLy8vLy8vCiAgIC8vICBS
WCBDaGFpbgoKICAgd2lyZSAJZnVsbCwgZW9iX3J4OwogICB3aXJlIAlzdHJvYmVfcng7CiAgIHdp
cmUgWzMxOjBdIAlzYW1wbGVfcng7CiAgIHdpcmUgWzMxOjBdIAkgIHJ4X3NpZDsKICAgd2lyZSBb
MTE6MF0gCSAgcnhfc2VxbnVtOwogICB3aXJlIFs2MzowXSByeF90ZGF0YV9pOyB3aXJlIHJ4X3Rs
YXN0X2ksIHJ4X3R2YWxpZF9pLCByeF90cmVhZHlfaTsKCiAgIHdpcmUgWzMxOjBdIGRlYnVnX3J4
X2ZyYW1lcjsKICAgbmV3X3J4X2ZyYW1lciAjKC5CQVNFKFNSX1JYX0NUUkwrNCksLlNBTVBMRV9G
SUZPX1NJWkUoU0FNUExFX0ZJRk9fU0laRSkpIG5ld19yeF9mcmFtZXIKICAgICAoLmNsayhyYWRp
b19jbGspLCAucmVzZXQocmFkaW9fcnN0KSwgLmNsZWFyKDEnYjApLAogICAgICAuc2V0X3N0Yihz
ZXRfc3RiKSwgLnNldF9hZGRyKHNldF9hZGRyKSwgLnNldF9kYXRhKHNldF9kYXRhKSwKICAgICAg
LnZpdGFfdGltZSh2aXRhX3RpbWUpLAogICAgICAuc3Ryb2JlKHN0cm9iZV9yeCksIC5zYW1wbGUo
c2FtcGxlX3J4KSwgLnJ1bihydW5fcngpLCAuZW9iKGVvYl9yeCksIC5mdWxsKGZ1bGwpLAogICAg
ICAuc2lkKHJ4X3NpZCksIC5zZXFudW0ocnhfc2VxbnVtKSwKICAgICAgLm9fdGRhdGEocnhfdGRh
dGFfaSksIC5vX3RsYXN0KHJ4X3RsYXN0X2kpLCAub190dmFsaWQocnhfdHZhbGlkX2kpLCAub190
cmVhZHkocnhfdHJlYWR5X2kpLAogICAgICAuZGVidWcoZGVidWdfcnhfZnJhbWVyKSk7CgogICB3
aXJlIFszMTowXSAgICAgICBkZWJ1Z19yeF9jb250cm9sOwogICBuZXdfcnhfY29udHJvbCAjKC5C
QVNFKFNSX1JYX0NUUkwpKSBuZXdfcnhfY29udHJvbAogICAgICguY2xrKHJhZGlvX2NsayksIC5y
ZXNldChyYWRpb19yc3QpLCAuY2xlYXIoMSdiMCksCiAgICAgIC5zZXRfc3RiKHNldF9zdGIpLCAu
c2V0X2FkZHIoc2V0X2FkZHIpLCAuc2V0X2RhdGEoc2V0X2RhdGEpLAogICAgICAudml0YV90aW1l
KHZpdGFfdGltZSksCiAgICAgIC5zdHJvYmUoc3Ryb2JlX3J4KSwgLnJ1bihydW5fcngpLCAuZW9i
KGVvYl9yeCksIC5mdWxsKGZ1bGwpLAogICAgICAuc2lkKHJ4X3NpZCksIC5zZXFudW0ocnhfc2Vx
bnVtKSwKICAgICAgLmVycl90ZGF0YShyeF9lcnJfdGRhdGFfciksIC5lcnJfdGxhc3QocnhfZXJy
X3RsYXN0X3IpLCAuZXJyX3R2YWxpZChyeF9lcnJfdHZhbGlkX3IpLCAuZXJyX3RyZWFkeShyeF9l
cnJfdHJlYWR5X3IpLAogICAgICAuaWJzX3N0YXRlKGlic19zdGF0ZSksCiAgICAgIC5kZWJ1Zyhk
ZWJ1Z19yeF9jb250cm9sKSk7CgogICB3aXJlIFszMTowXSAJICAgICBkZWJ1Z19kZGNfY2hhaW47
CgogICAvLyBEaWdpdGFsIExvb3BiYWNrIFRYIC0+IFJYIChQaXBlbGluZSBpbW1lZGlhdGVseSBp
bnNpZGUgcnhfZnJvbnRlbmQpLgogICB3aXJlIFszMTowXSAJICAgICByeF9mZSA9IGxvb3BiYWNr
ID8gdHggOiByeDsKCiAgIGRkY19jaGFpbiAjKC5CQVNFKFNSX1JYX0RTUCksIC5EU1BOTygwKSwg
LldJRFRIKDI0KSwgLk5FV19IQl9ERUNJTShORVdfSEJfREVDSU0pLCAuREVWSUNFKERFVklDRSkp
IGRkY19jaGFpbgogICAgICguY2xrKHJhZGlvX2NsayksIC5yc3QocmFkaW9fcnN0KSwgLmNscigx
J2IwKSwKICAgICAgLnNldF9zdGIoc2V0X3N0YiksLnNldF9hZGRyKHNldF9hZGRyKSwuc2V0X2Rh
dGEoc2V0X2RhdGEpLAogICAgICAucnhfZmVfaSh7cnhfZmVbMzE6MTZdLDgnZDB9KSwucnhfZmVf
cSh7cnhfZmVbMTU6MF0sOCdkMH0pLAogICAgICAuc2FtcGxlKHNhbXBsZV9yeCksIC5ydW4ocnVu
X3J4KSwgLnN0cm9iZShzdHJvYmVfcngpLAogICAgICAuZGVidWcoZGVidWdfZGRjX2NoYWluKSAp
OwoKICAgZGVjb2Rlcl90b3AgZGVjb2Rlcl90b3AKICAgICAoLmNsb2NrKHN0cm9iZV9yeCksCiAg
ICAgIC5lbmFibGVfY291bnRlcigxJ2IxKSwKICAgICAgLnJlZl9pbigzMidkMzApLCAgCQkJCS8v
IEhhcmQtY29kZWQgbm93LCB3ZSB3aWxsIGJlIHVzaW5nIHRoZSB1c2VyX3JlZ18wX3ZhbHVlIHRv
IHJlYWQgdGhlICdzYW1wbGVfcngnIHZpYSB0aGUgdXNlciByZWdpc3RlcnMKICAgICAgLmRhdGFf
aW4oc2FtcGxlX3J4KSwKICAgICAgLmRlY29kZWRfc3ltYm9sKGRlY29kZWRfc3ltYm9sX3ZhbHVl
KSApOwoKICAgYWx3YXlzIEAocG9zZWRnZSBzdHJvYmVfcngpIGJlZ2luCiAgICAgICBjdXJyX3Nh
bXBsZV9yZWcgPD0gc2FtcGxlX3J4OwkJCS8vIExhdGNoIHRoZSBzYW1wbGUgYXQgc3Ryb2JlX3J4
IHNpZ25hbCwgd2Ugd2lsbCB0aGVuIHJlYWQgdGhlIHVzZXIgcmVnaXN0ZXIgdmlhIHRoZSBVSEQg
CiAgIGVuZAoKICAgYXNzaWduIGN1cnJfc2FtcGxlX3JlZ192YWx1ZSA9IGN1cnJfc2FtcGxlX3Jl
ZzsKCgpgaWZkZWYgREVMRVRFX0ZPUk1BVF9DT05WRVJTSU9OCiAgIGFzc2lnbiAJICAgICByeF9w
cmVmY190ZGF0YV9yID0gcnhfdGRhdGFfaTsKICAgYXNzaWduIAkgICAgIHJ4X3ByZWZjX3RsYXN0
X3IgPSByeF90bGFzdF9pOwogICBhc3NpZ24gCSAgICAgcnhfcHJlZmNfdHZhbGlkX3IgPSByeF90
dmFsaWRfaTsKICAgYXNzaWduIAkgICAgIHJ4X3RyZWFkeV9pID0gcnhfcHJlZmNfdHJlYWR5X3I7
CmBlbHNlCiAgIGNoZHJfMTZzY190b194eHh4X2NoYWluICMoLkJBU0UoU1JfUlhfRk1UKSkgY29u
dmVydF8xNnNjX3RvX3h4eHgKICAgICAoLmNsayhyYWRpb19jbGspLCAucmVzZXQocmFkaW9fcnN0
KSwKICAgICAgLnNldF9zdGIoc2V0X3N0YiksLnNldF9hZGRyKHNldF9hZGRyKSwuc2V0X2RhdGEo
c2V0X2RhdGEpLAogICAgICAuaV90ZGF0YShyeF90ZGF0YV9pKSwgLmlfdGxhc3QocnhfdGxhc3Rf
aSksIC5pX3R2YWxpZChyeF90dmFsaWRfaSksIC5pX3RyZWFkeShyeF90cmVhZHlfaSksCiAgICAg
IC5vX3RkYXRhKHJ4X3ByZWZjX3RkYXRhX3IpLCAub190bGFzdChyeF9wcmVmY190bGFzdF9yKSwg
Lm9fdHZhbGlkKHJ4X3ByZWZjX3R2YWxpZF9yKSwgLm9fdHJlYWR5KHJ4X3ByZWZjX3RyZWFkeV9y
KSwKICAgICAgLmRlYnVnKCkpOwpgZW5kaWYKICAgLy8gLy8vLy8vLy8vLy8vLy8vLy8vLy8vLy8v
Ly8vLy8vLy8vLy8vLy8vLy8vLy8vLy8vLy8vLy8vLy8vLy8vLy8vLy8vLy8vLy8vLy8vLy8vLy8v
CiAgIC8vICBSWCBDaGFubmVsIE11eGluZwoKICAgYXhpX211eDQgIyguUFJJTygxKSwgLldJRFRI
KDY0KSwgLkJVRkZFUigxKSkgcnhfbXV4CiAgICAgKC5jbGsocmFkaW9fY2xrKSwgLnJlc2V0KHJh
ZGlvX3JzdCksIC5jbGVhcigxJ2IwKSwKICAgICAgLmkwX3RkYXRhKHJ4X3Bvc3RmY190ZGF0YV9y
KSwgLmkwX3RsYXN0KHJ4X3Bvc3RmY190bGFzdF9yKSwgLmkwX3R2YWxpZChyeF9wb3N0ZmNfdHZh
bGlkX3IpLCAuaTBfdHJlYWR5KHJ4X3Bvc3RmY190cmVhZHlfciksCiAgICAgIC5pMV90ZGF0YShy
eF9lcnJfdGRhdGFfciksIC5pMV90bGFzdChyeF9lcnJfdGxhc3RfciksIC5pMV90dmFsaWQocnhf
ZXJyX3R2YWxpZF9yKSwgLmkxX3RyZWFkeShyeF9lcnJfdHJlYWR5X3IpLAogICAgICAuaTJfdGRh
dGEoNjQnaDApLCAuaTJfdGxhc3QoMSdiMCksIC5pMl90dmFsaWQoMSdiMCksIC5pMl90cmVhZHko
KSwKICAgICAgLmkzX3RkYXRhKDY0J2gwKSwgLmkzX3RsYXN0KDEnYjApLCAuaTNfdHZhbGlkKDEn
YjApLCAuaTNfdHJlYWR5KCksCiAgICAgIC5vX3RkYXRhKHJ4X3RkYXRhX3IpLCAub190bGFzdChy
eF90bGFzdF9yKSwgLm9fdHZhbGlkKHJ4X3R2YWxpZF9yKSwgLm9fdHJlYWR5KHJ4X3RyZWFkeV9y
KSk7CgogICAvLyAvLy8vLy8vLy8vLy8vLy8vLy8vLy8vLy8vLy8vLy8vLy8vLy8vLy8vLy8vLy8v
Ly8vLy8vLy8vLy8vLy8vLy8vLy8vLy8vLy8vLy8vLy8vLy8KICAgLy8gIFJlc3BvbnNlIENoYW5u
ZWwgTXV4aW5nCgogICBheGlfbXV4NCAjKC5QUklPKDApLCAuV0lEVEgoNjQpKSByZXNwb25zZV9t
dXgKICAgICAoLmNsayhyYWRpb19jbGspLCAucmVzZXQocmFkaW9fcnN0KSwgLmNsZWFyKDEnYjAp
LAogICAgICAuaTBfdGRhdGEodHhyZXNwX3RkYXRhX3IpLCAuaTBfdGxhc3QodHhyZXNwX3RsYXN0
X3IpLCAuaTBfdHZhbGlkKHR4cmVzcF90dmFsaWRfciksIC5pMF90cmVhZHkodHhyZXNwX3RyZWFk
eV9yKSwKICAgICAgLmkxX3RkYXRhKHJlc3BfdGRhdGFfciksIC5pMV90bGFzdChyZXNwX3RsYXN0
X3IpLCAuaTFfdHZhbGlkKHJlc3BfdHZhbGlkX3IpLCAuaTFfdHJlYWR5KHJlc3BfdHJlYWR5X3Ip
LAogICAgICAuaTJfdGRhdGEoNjQnaDApLCAuaTJfdGxhc3QoMSdiMCksIC5pMl90dmFsaWQoMSdi
MCksIC5pMl90cmVhZHkoKSwKICAgICAgLmkzX3RkYXRhKDY0J2gwKSwgLmkzX3RsYXN0KDEnYjAp
LCAuaTNfdHZhbGlkKDEnYjApLCAuaTNfdHJlYWR5KCksCiAgICAgIC5vX3RkYXRhKHJtdXhfdGRh
dGFfciksIC5vX3RsYXN0KHJtdXhfdGxhc3RfciksIC5vX3R2YWxpZChybXV4X3R2YWxpZF9yKSwg
Lm9fdHJlYWR5KHJtdXhfdHJlYWR5X3IpKTsKCgoKCiAgIC8qKioqKioqKioqKioqKioqKioqKioq
KioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqCiAgICAqIERlYnVn
IG9ubHkgbG9naWMgYmVsb3cgaGVyZS4KICAgICoqKioqKioqKioqKioqKioqKioqKioqKioqKioq
KioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKi8KIGFzc2lnbiBkZWJ1ZyA9IDA7
CgplbmRtb2R1bGUgLy8gcmFkaW9fbGVnYWN5Cg==
--00000000000085c2d0059fe5ef57
Content-Type: text/plain; charset="US-ASCII"; name="radio_legacy_diff.txt"
Content-Disposition: attachment; filename="radio_legacy_diff.txt"
Content-Transfer-Encoding: base64
Content-ID: <f_k7ayz6y32>
X-Attachment-Id: f_k7ayz6y32

MjBjMjAKPCAgICAgcGFyYW1ldGVyIFVTRVJfU0VUVElOR1MgPSAwLAotLS0KPiAgICAgcGFyYW1l
dGVyIFVTRVJfU0VUVElOR1MgPSAxLAozOGEzOSw0Ngo+ICAgIC8vIC8vLy8vLy8vLy8vLy8vLy8v
Ly8vLy8vLy8vLy8vLy8vLy8vLy8vLy8vLy8vLy8vLy8vLy8vLy8vLy8vLy8vLy8vLy8vLy8vLy8v
Ly8vLy8vCj4gICAgLy8gSW50ZXJjb25uZWN0cyBmb3IgdGhlIHVzZXIgZGVmaW5lZCByZWdpc3Rl
cnMKPiAgICAKPiAgICB3aXJlIFszMTowXSB1c2VyX3JlZ18wX3ZhbHVlLCB1c2VyX3JlZ18xX3Zh
bHVlLCBjdXJyX3NhbXBsZV9yZWdfdmFsdWU7Cj4gICAgd2lyZSBbMTU6MF0gZGVjb2RlZF9zeW1i
b2xfdmFsdWU7ICAgCj4gCj4gICAgcmVnIFszMTowXSBjdXJyX3NhbXBsZV9yZWc7Cj4gCjIwMGMy
MDgKPCAgICAgICB3aXJlIFszMTowXSB1c2VyX3JlZ18wX3ZhbHVlLCB1c2VyX3JlZ18xX3ZhbHVl
OwotLS0KPiAgICAgICAvLyB3aXJlIFszMTowXSB1c2VyX3JlZ18wX3ZhbHVlLCB1c2VyX3JlZ18x
X3ZhbHVlOwoyMTJjMjIwLDIyMQo8ICAgICAgICAgICAgIDgnZDAgOiByYl9kYXRhX3VzZXIgPD0g
e3VzZXJfcmVnXzFfdmFsdWUsIHVzZXJfcmVnXzBfdmFsdWV9OwotLS0KPiAgICAgICAgICAgICA4
J2QwIDogcmJfZGF0YV91c2VyIDw9IHt1c2VyX3JlZ18xX3ZhbHVlWzMxOjE2XSwgZGVjb2RlZF9z
eW1ib2xfdmFsdWUsIGN1cnJfc2FtcGxlX3JlZ192YWx1ZX07Cj4gICAgICAgICAgICAgLy84J2Qw
IDogcmJfZGF0YV91c2VyIDw9IHt1c2VyX3JlZ18xX3ZhbHVlLCB1c2VyX3JlZ18wX3ZhbHVlfTsK
NDUxYTQ2MSw0NzQKPiAKPiAgICBkZWNvZGVyX3RvcCBkZWNvZGVyX3RvcAo+ICAgICAgKC5jbG9j
ayhzdHJvYmVfcngpLAo+ICAgICAgIC5lbmFibGVfY291bnRlcigxJ2IxKSwKPiAgICAgICAucmVm
X2luKDMyJ2QzMCksICAJCQkJLy8gSGFyZC1jb2RlZCBub3csIHdlIHdpbGwgYmUgdXNpbmcgdGhl
IHVzZXJfcmVnXzBfdmFsdWUgdG8gcmVhZCB0aGUgJ3NhbXBsZV9yeCcgdmlhIHRoZSB1c2VyIHJl
Z2lzdGVycwo+ICAgICAgIC5kYXRhX2luKHNhbXBsZV9yeCksCj4gICAgICAgLmRlY29kZWRfc3lt
Ym9sKGRlY29kZWRfc3ltYm9sX3ZhbHVlKSApOwo+IAo+ICAgIGFsd2F5cyBAKHBvc2VkZ2Ugc3Ry
b2JlX3J4KSBiZWdpbgo+ICAgICAgICBjdXJyX3NhbXBsZV9yZWcgPD0gc2FtcGxlX3J4OwkJCS8v
IExhdGNoIHRoZSBzYW1wbGUgYXQgc3Ryb2JlX3J4IHNpZ25hbCwgd2Ugd2lsbCB0aGVuIHJlYWQg
dGhlIHVzZXIgcmVnaXN0ZXIgdmlhIHRoZSBVSEQgCj4gICAgZW5kCj4gCj4gICAgYXNzaWduIGN1
cnJfc2FtcGxlX3JlZ192YWx1ZSA9IGN1cnJfc2FtcGxlX3JlZzsKPiAK
--00000000000085c2d0059fe5ef57
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--00000000000085c2d0059fe5ef57--

