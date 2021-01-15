Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id AA4342F8354
	for <lists+usrp-users@lfdr.de>; Fri, 15 Jan 2021 19:10:45 +0100 (CET)
Received: from [::1] (port=47224 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1l0TYX-0003px-QS; Fri, 15 Jan 2021 13:10:41 -0500
Received: from mail-ot1-f52.google.com ([209.85.210.52]:42293)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
 (Exim 4.93) (envelope-from <wade.fife@ettus.com>) id 1l0TYT-0003lQ-Nj
 for USRP-users@lists.ettus.com; Fri, 15 Jan 2021 13:10:37 -0500
Received: by mail-ot1-f52.google.com with SMTP id f6so153736ots.9
 for <USRP-users@lists.ettus.com>; Fri, 15 Jan 2021 10:10:17 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=ettus-com.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=66h/uJhUFwGoN5cDImgCp4RavqrN/XhITE5YrNIpCV4=;
 b=dCLbsoykwAciv1pWCNzY3S9OYjotwY8p67GpTZ0C1Mpap8xcMrJ+llC5TltO49tY3S
 +ZZw5H6cuVp4NHTsFQSgK5AQYOUJIe+3ztbprZ6ZPjGgyraaSCvwWDaT1MJ56veELYKt
 mujVPSKEaRS4Dwg3EfTC0uG36gzD8qN7JmewW1vrEeFgPQamOv7YZiLGVsxLYOcxD4R5
 H8djqGdGsByt1bRwj2hjgsMgu1Mhj8gzdB8mxjojd3PDax6xiGc/gPYGew1bgKinioAy
 mDTpy0SFeDtFIiRh0cK08H11LpVf6zmdrtZ4EFoO51DppovvxfWqmm3hMvjcT6TtVuvS
 AKtg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=66h/uJhUFwGoN5cDImgCp4RavqrN/XhITE5YrNIpCV4=;
 b=PXSsjKMjKDndh19P0kcvlt5JEUsxK+CbcMNiw26QFPXKjiHanTBbmSkIU3C6So5ZVk
 VO4bilQkJCKywKRoKk41WN4Ut9PUGR9FsTpaIPDIXebYjfLF0qHw0OkAjM4KgySfEIGT
 5h4CftmEdYw4Q/V1mXMx6tYLVmgIeE7EX5r2jzTGuPQAPojHl63Wvgg02jGZowFiTx3b
 MAQbXVVL+hGJmHCilC1uru2e7zE6dp+L38klEgmvgXrEBoDTm1fVsrDKgjwm6b+Chm93
 BYu7zfYdEByS/ivuaQLP3r/+BXMk+VOjNfkWUPLsJjUNFzGVORPKAA+RlYgnRT14cYnq
 KYhw==
X-Gm-Message-State: AOAM530zG2OJwJsLHqaMPwTe8qq+EhZE5Sbv8bFFYWo+fDEIo82fFYDM
 QZau44lu00w6Nkp4nJD/Kd1Y69TiLD1tw4lPplKNCOaQ
X-Google-Smtp-Source: ABdhPJwCM6LS558dHJ81eeUCfIgbd9hc7+23jj0uFpZUHi1yYt928Q/ZvgBChj35dZLXuVcH1xLQKIc54h87XKMYBs0=
X-Received: by 2002:a9d:19aa:: with SMTP id k39mr9118125otk.28.1610734197045; 
 Fri, 15 Jan 2021 10:09:57 -0800 (PST)
MIME-Version: 1.0
References: <CANwgjNoJ_DbMRLQqPu7aF2ETi4Ym2pbn9wFo4iRtyt7mH_8Uug@mail.gmail.com>
 <536D41AB-C41E-40C1-B87C-45E66F6246AE@gmail.com>
 <CAFche=jad33=Lag2m+wwBEo2UOc05kWJX4W2UA7yiCVMVKpckQ@mail.gmail.com>
 <CANwgjNqfzUXSye9MCcYg+AxTt3LaBNo0fWBdBRN-Esed7OH2iQ@mail.gmail.com>
In-Reply-To: <CANwgjNqfzUXSye9MCcYg+AxTt3LaBNo0fWBdBRN-Esed7OH2iQ@mail.gmail.com>
Date: Fri, 15 Jan 2021 12:09:47 -0600
Message-ID: <CAFche=if8QpnVwSacxGwwyW8cK=Nxyy+qmYSPytvNFBVnuPiRQ@mail.gmail.com>
To: Ephraim Moges <emoges@uncc.edu>
Subject: Re: [USRP-users] [EXTERNAL] Re: Changing the transmitted samples
 per packet
X-BeenThere: usrp-users@lists.ettus.com
X-Mailman-Version: 2.1.33
Precedence: list
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
List-Unsubscribe: <http://lists.ettus.com/mailman/options/usrp-users_lists.ettus.com>, 
 <mailto:usrp-users-request@lists.ettus.com?subject=unsubscribe>
List-Archive: <http://lists.ettus.com/pipermail/usrp-users_lists.ettus.com/>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Subscribe: <http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com>, 
 <mailto:usrp-users-request@lists.ettus.com?subject=subscribe>
From: Wade Fife via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Wade Fife <wade.fife@ettus.com>
Cc: usrp-users <USRP-users@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============1421709780195560070=="
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

--===============1421709780195560070==
Content-Type: multipart/alternative; boundary="000000000000a4908805b8f44749"

--000000000000a4908805b8f44749
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

 I believe the SPP argument can also affect the transmit SPP. If you call
tx_streamer.send() with buffers larger than SPP, then it will split them
into SPP-sized packets. tx_streamer.get_max_num_samps() should return the
currently configured SPP.

Wade

On Fri, Jan 15, 2021 at 8:06 AM Ephraim Moges <emoges@uncc.edu> wrote:

>  Good Morning  Mr. Fife,
>
> Based on the documentation the SPP is commendable for the RX portion only=
.
> For the TX portion I have been creating an array, with a size less
> than tx_streamer.get_max_num_samps(). Is the method I use to control the =
tx
> packet size incorrect?
>
> Sincerely,
>
> Moges
>
> On Thu, Jan 14, 2021 at 11:51 AM Wade Fife <wade.fife@ettus.com> wrote:
>
>> [*Caution*: Email from External Sender. Do not click or open links or
>> attachments unless you know this sender.]
>>
>> See also
>> https://files.ettus.com/manual/page_configuration.html#config_stream_arg=
s_args
>>
>> You might also refer to the benchmark_rate example, which takes argument=
s
>> to set the SPP for RX and TX separately.
>>
>> Wade
>>
>> On Wed, Jan 13, 2021 at 11:21 AM Marcus D Leech via USRP-users <
>> usrp-users@lists.ettus.com> wrote:
>>
>>> https://files.ettus.com/manual/structuhd_1_1stream__args__t.html
>>>
>>>
>>> Sent from my iPhone
>>>
>>> On Jan 13, 2021, at 11:51 AM, Ephraim Moges via USRP-users <
>>> usrp-users@lists.ettus.com> wrote:
>>>
>>> =EF=BB=BF
>>> Good morning,
>>>
>>> Is their a simple command like tx_streamer.get_max_num_samps that sets
>>> the maximum number samples per packet?
>>>
>>> Thank you,
>>>
>>> Moges
>>> _______________________________________________
>>> USRP-users mailing list
>>> USRP-users@lists.ettus.com
>>> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
>>>
>>> _______________________________________________
>>> USRP-users mailing list
>>> USRP-users@lists.ettus.com
>>> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
>>>
>>

--000000000000a4908805b8f44749
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">
<div>I believe the SPP argument can also affect the transmit SPP. If you ca=
ll=20
tx_streamer.send() with buffers larger than SPP, then it will split them in=
to SPP-sized packets. tx_streamer.get_max_num_samps() should return the cur=
rently configured SPP.<br></div><div><br></div><div>Wade</div>

</div><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">=
On Fri, Jan 15, 2021 at 8:06 AM Ephraim Moges &lt;<a href=3D"mailto:emoges@=
uncc.edu">emoges@uncc.edu</a>&gt; wrote:<br></div><blockquote class=3D"gmai=
l_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,20=
4,204);padding-left:1ex"><div dir=3D"ltr">=C2=A0Good Morning=C2=A0 Mr. Fife=
,<div><br></div><div>Based on the documentation the SPP is commendable=C2=
=A0for the RX portion only. For the TX portion I have been creating=C2=A0an=
 array, with a size less than=C2=A0tx_streamer.get_max_num_samps(). Is the =
method I use to control the tx packet size incorrect?<br clear=3D"all"><div=
><div dir=3D"ltr"><div dir=3D"ltr"><div><br></div><div>Sincerely,<br><br></=
div>Moges</div></div></div></div></div><br><div class=3D"gmail_quote"><div =
dir=3D"ltr" class=3D"gmail_attr">On Thu, Jan 14, 2021 at 11:51 AM Wade Fife=
 &lt;<a href=3D"mailto:wade.fife@ettus.com" target=3D"_blank">wade.fife@ett=
us.com</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"m=
argin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left=
:1ex">[<strong><font color=3D"red">Caution</font></strong>: Email from Exte=
rnal Sender. Do not click or open links or attachments unless you know this=
 sender.]<br><span>=C2=A0</span><div dir=3D"ltr"><div>See also <a href=3D"h=
ttps://files.ettus.com/manual/page_configuration.html#config_stream_args_ar=
gs" target=3D"_blank">https://files.ettus.com/manual/page_configuration.htm=
l#config_stream_args_args</a></div><div><br></div><div>You might also refer=
 to the benchmark_rate example, which takes arguments to set the SPP for RX=
 and TX separately.</div><div><br></div><div>Wade<br></div></div><br><div c=
lass=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Wed, Jan 13, =
2021 at 11:21 AM Marcus D Leech via USRP-users &lt;<a href=3D"mailto:usrp-u=
sers@lists.ettus.com" target=3D"_blank">usrp-users@lists.ettus.com</a>&gt; =
wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0=
px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex"><div dir=
=3D"auto"><a href=3D"https://files.ettus.com/manual/structuhd_1_1stream__ar=
gs__t.html" target=3D"_blank">https://files.ettus.com/manual/structuhd_1_1s=
tream__args__t.html</a><div><br><br><div dir=3D"ltr">Sent from my iPhone</d=
iv><div dir=3D"ltr"><br><blockquote type=3D"cite">On Jan 13, 2021, at 11:51=
 AM, Ephraim Moges via USRP-users &lt;<a href=3D"mailto:usrp-users@lists.et=
tus.com" target=3D"_blank">usrp-users@lists.ettus.com</a>&gt; wrote:<br><br=
></blockquote></div><blockquote type=3D"cite"><div dir=3D"ltr">=EF=BB=BF<di=
v dir=3D"auto">Good morning,<div dir=3D"auto"><br></div><div dir=3D"auto">I=
s their a simple command like tx_streamer.get_max_num_samps that sets the m=
aximum number samples per packet?<br><br><div dir=3D"auto">Thank you,<br><b=
r>Moges</div></div></div>
<span>_______________________________________________</span><br><span>USRP-=
users mailing list</span><br><span><a href=3D"mailto:USRP-users@lists.ettus=
.com" target=3D"_blank">USRP-users@lists.ettus.com</a></span><br><span><a h=
ref=3D"http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com" =
target=3D"_blank">http://lists.ettus.com/mailman/listinfo/usrp-users_lists.=
ettus.com</a></span><br></div></blockquote></div></div>____________________=
___________________________<br>
USRP-users mailing list<br>
<a href=3D"mailto:USRP-users@lists.ettus.com" target=3D"_blank">USRP-users@=
lists.ettus.com</a><br>
<a href=3D"http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.c=
om" rel=3D"noreferrer" target=3D"_blank">http://lists.ettus.com/mailman/lis=
tinfo/usrp-users_lists.ettus.com</a><br>
</blockquote></div>
</blockquote></div>
</blockquote></div>

--000000000000a4908805b8f44749--


--===============1421709780195560070==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============1421709780195560070==--

