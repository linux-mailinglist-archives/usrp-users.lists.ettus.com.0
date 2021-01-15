Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id AB4E52F7DB2
	for <lists+usrp-users@lfdr.de>; Fri, 15 Jan 2021 15:07:43 +0100 (CET)
Received: from [::1] (port=45106 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1l0PlO-00006u-MS; Fri, 15 Jan 2021 09:07:42 -0500
Received: from mail-ot1-f50.google.com ([209.85.210.50]:45899)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
 (Exim 4.93) (envelope-from <emoges@uncc.edu>) id 1l0PlK-0008Na-6w
 for USRP-users@lists.ettus.com; Fri, 15 Jan 2021 09:07:38 -0500
Received: by mail-ot1-f50.google.com with SMTP id n42so8564086ota.12
 for <USRP-users@lists.ettus.com>; Fri, 15 Jan 2021 06:07:17 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=uncc.edu; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=1c0YbgQs26BtrE0F89WX/sJtTRwNv6N6/UDKKYJMYcQ=;
 b=EH3oZ3Z/ez4iAf8qFrQzb5iBPxkYmuF+5EDZOgn63VDT77zgU6N1YbyBmQFaZYS44d
 eWEfiMJVF2WOd3g0JKgJxhZuy/kMuI2q03jARuQPWibaF+D91MBt3WVh6BBHUK4cfbso
 gYzxeU06mElCyJK9mcfEJPMQvV1YtmIx/ghBU=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=1c0YbgQs26BtrE0F89WX/sJtTRwNv6N6/UDKKYJMYcQ=;
 b=LlBx6/sOu97QeeRWvNAvTVAMsYz+c8cZS8qR+FIbaGHR2DViQ2dyKgopAa+xwv7YLn
 DIUi3eUGV7rdiQG14/8WaLUNB6BrXI0sKjsuXclLvz2GN9D+RIT0c8Mwc0Aye9er8W7y
 IAfHv6LWCf9OphVKqJ6Mx/Jfo7Fo6lMBRm+gz6oH14d26nOVcnAIMmUJoxMXS7/6/So8
 QzePgCjDeQ/U5XvJfD4plFGqeB4iAQORLPiOM3yUQ6YJEaznbyE/H8ONlWksj0ufgFX6
 yhH6VFelQJmrtzG8DKcBlckbJvhrFCFWnnRr8gPIrQNC4rvvJAFnpW4hGmZMq0kMer+8
 th8Q==
X-Gm-Message-State: AOAM533OQfIYkcurW3uAoyukeEodVrMTFp5PV00O5zCaoLfd1Z52SP0O
 t8S4724ukX/c7a425gclbGN4KiFlRFhH9VjDENtaDw==
X-Google-Smtp-Source: ABdhPJyIDZ7sHm7GjLA8+1tW9nsJ6BIx74BTYJmWmHtIgts8avYtIHFbKA6ZzEoH8yOC1SChVkMhnvYnxcc+m524vyo=
X-Received: by 2002:a9d:430:: with SMTP id 45mr8298912otc.32.1610719617302;
 Fri, 15 Jan 2021 06:06:57 -0800 (PST)
MIME-Version: 1.0
References: <CANwgjNoJ_DbMRLQqPu7aF2ETi4Ym2pbn9wFo4iRtyt7mH_8Uug@mail.gmail.com>
 <536D41AB-C41E-40C1-B87C-45E66F6246AE@gmail.com>
 <CAFche=jad33=Lag2m+wwBEo2UOc05kWJX4W2UA7yiCVMVKpckQ@mail.gmail.com>
In-Reply-To: <CAFche=jad33=Lag2m+wwBEo2UOc05kWJX4W2UA7yiCVMVKpckQ@mail.gmail.com>
Date: Fri, 15 Jan 2021 09:06:46 -0500
Message-ID: <CANwgjNqfzUXSye9MCcYg+AxTt3LaBNo0fWBdBRN-Esed7OH2iQ@mail.gmail.com>
To: Wade Fife <wade.fife@ettus.com>
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
From: Ephraim Moges via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Ephraim Moges <emoges@uncc.edu>
Cc: usrp-users <USRP-users@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============7854887992621287317=="
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

--===============7854887992621287317==
Content-Type: multipart/alternative; boundary="0000000000009f6a3a05b8f0e2c5"

--0000000000009f6a3a05b8f0e2c5
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

 Good Morning  Mr. Fife,

Based on the documentation the SPP is commendable for the RX portion only.
For the TX portion I have been creating an array, with a size less
than tx_streamer.get_max_num_samps(). Is the method I use to control the tx
packet size incorrect?

Sincerely,

Moges

On Thu, Jan 14, 2021 at 11:51 AM Wade Fife <wade.fife@ettus.com> wrote:

> [*Caution*: Email from External Sender. Do not click or open links or
> attachments unless you know this sender.]
>
> See also
> https://files.ettus.com/manual/page_configuration.html#config_stream_args=
_args
>
> You might also refer to the benchmark_rate example, which takes arguments
> to set the SPP for RX and TX separately.
>
> Wade
>
> On Wed, Jan 13, 2021 at 11:21 AM Marcus D Leech via USRP-users <
> usrp-users@lists.ettus.com> wrote:
>
>> https://files.ettus.com/manual/structuhd_1_1stream__args__t.html
>>
>>
>> Sent from my iPhone
>>
>> On Jan 13, 2021, at 11:51 AM, Ephraim Moges via USRP-users <
>> usrp-users@lists.ettus.com> wrote:
>>
>> =EF=BB=BF
>> Good morning,
>>
>> Is their a simple command like tx_streamer.get_max_num_samps that sets
>> the maximum number samples per packet?
>>
>> Thank you,
>>
>> Moges
>> _______________________________________________
>> USRP-users mailing list
>> USRP-users@lists.ettus.com
>> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
>>
>> _______________________________________________
>> USRP-users mailing list
>> USRP-users@lists.ettus.com
>> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
>>
>

--0000000000009f6a3a05b8f0e2c5
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">=C2=A0Good Morning=C2=A0 Mr. Fife,<div><br></div><div>Base=
d on the documentation the SPP is commendable=C2=A0for the RX portion only.=
 For the TX portion I have been creating=C2=A0an array, with a size less th=
an=C2=A0tx_streamer.get_max_num_samps(). Is the method I use to control the=
 tx packet size incorrect?<br clear=3D"all"><div><div dir=3D"ltr" class=3D"=
gmail_signature"><div dir=3D"ltr"><div><br></div><div>Sincerely,<br><br></d=
iv>Moges</div></div></div></div></div><br><div class=3D"gmail_quote"><div d=
ir=3D"ltr" class=3D"gmail_attr">On Thu, Jan 14, 2021 at 11:51 AM Wade Fife =
&lt;<a href=3D"mailto:wade.fife@ettus.com">wade.fife@ettus.com</a>&gt; wrot=
e:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0=
.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex">[<strong><fon=
t color=3D"red">Caution</font></strong>: Email from External Sender. Do not=
 click or open links or attachments unless you know this sender.]<br><span>=
=C2=A0</span><div dir=3D"ltr"><div>See also <a href=3D"https://files.ettus.=
com/manual/page_configuration.html#config_stream_args_args" target=3D"_blan=
k">https://files.ettus.com/manual/page_configuration.html#config_stream_arg=
s_args</a></div><div><br></div><div>You might also refer to the benchmark_r=
ate example, which takes arguments to set the SPP for RX and TX separately.=
</div><div><br></div><div>Wade<br></div></div><br><div class=3D"gmail_quote=
"><div dir=3D"ltr" class=3D"gmail_attr">On Wed, Jan 13, 2021 at 11:21 AM Ma=
rcus D Leech via USRP-users &lt;<a href=3D"mailto:usrp-users@lists.ettus.co=
m" target=3D"_blank">usrp-users@lists.ettus.com</a>&gt; wrote:<br></div><bl=
ockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-lef=
t:1px solid rgb(204,204,204);padding-left:1ex"><div dir=3D"auto"><a href=3D=
"https://files.ettus.com/manual/structuhd_1_1stream__args__t.html" target=
=3D"_blank">https://files.ettus.com/manual/structuhd_1_1stream__args__t.htm=
l</a><div><br><br><div dir=3D"ltr">Sent from my iPhone</div><div dir=3D"ltr=
"><br><blockquote type=3D"cite">On Jan 13, 2021, at 11:51 AM, Ephraim Moges=
 via USRP-users &lt;<a href=3D"mailto:usrp-users@lists.ettus.com" target=3D=
"_blank">usrp-users@lists.ettus.com</a>&gt; wrote:<br><br></blockquote></di=
v><blockquote type=3D"cite"><div dir=3D"ltr">=EF=BB=BF<div dir=3D"auto">Goo=
d morning,<div dir=3D"auto"><br></div><div dir=3D"auto">Is their a simple c=
ommand like tx_streamer.get_max_num_samps that sets the maximum number samp=
les per packet?<br><br><div dir=3D"auto">Thank you,<br><br>Moges</div></div=
></div>
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

--0000000000009f6a3a05b8f0e2c5--


--===============7854887992621287317==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============7854887992621287317==--

