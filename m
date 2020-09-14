Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 51F3B268C68
	for <lists+usrp-users@lfdr.de>; Mon, 14 Sep 2020 15:43:07 +0200 (CEST)
Received: from [::1] (port=54776 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1kHol2-0006kn-HD; Mon, 14 Sep 2020 09:43:00 -0400
Received: from mail-oi1-f182.google.com ([209.85.167.182]:37387)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
 (Exim 4.93) (envelope-from <rkossler@nd.edu>) id 1kHoky-0006U8-6i
 for usrp-users@lists.ettus.com; Mon, 14 Sep 2020 09:42:56 -0400
Received: by mail-oi1-f182.google.com with SMTP id a3so17917151oib.4
 for <usrp-users@lists.ettus.com>; Mon, 14 Sep 2020 06:42:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nd.edu; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=Sddb2o8aqmtkk0Jpvwt2PNH7QXWUoaHnhaPkm6x02Ms=;
 b=VcVjAY/dmF+gO5ujSPFdNDDgOjJhdvHA6/JOu12FiiLgtKwoKLOtJ4ry+fe1tCrtV7
 AR4azrXqdoQUEcW/W3dByCFaTeFFTtUtPXjevNoFEvMOsxLCX8HWhNV/Yyh5hIvvAEom
 Gc4w4/EpvgszdD9+szEx8R0krtBuqpxee1uRQNMlClQONK1L7/EfJ9yP6XMjTJmIASI6
 VFPIhlNveqsbvpupgcqPsIV5MqsbPc/mA4HTyZyX9Hw3UKUXT+3lq9vD/h2x+t1WI8ae
 0sIGgi1ZSGTYbUDNsrhoNcw+xRboZ6Xks3Sh2Jod2EqxkQSknxiAnwbIL8khMp0LT0xw
 Y/eA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=Sddb2o8aqmtkk0Jpvwt2PNH7QXWUoaHnhaPkm6x02Ms=;
 b=HCE0bACtjantRudkTARrCXbkuY0J+/TxQjeVItMSXY2RIzdxNshUWrQvdJ/TJ1RfEo
 0GebwrJAzd+C4FwweHb2cxmnfgRPR7C/+5ld/F+LXaWNuf9Eb+zU9twalUNzRj20OTua
 +8AWhNNAbP76YzDrGZiNmk+EtSeddGx/+LPqLkvoW+1jlzeeMb2xWa4x2auD3ehCPyi3
 5c4da7eWqTEfGiNRB3cld05oIIAtDplyvsl2dYUMT5+XLshouwMsPSJ1xIG25BttSqH6
 GZBmWp6vMZ1D4BLTxV6YlkL6RG2QjJduk235J3mk4NAMaV4Zu708aX26a5Z2ElBHAJqI
 aLYw==
X-Gm-Message-State: AOAM533OjUVhhnBZayIzSYGMNQ1TI2breAzjJQWWJpJarSSRedKM+e0W
 ZCvrnhT0fzrVU1bOXGf4PE1YsLoudBPmuD1cs44p1vKYt+Q=
X-Google-Smtp-Source: ABdhPJyg17HqgEzlbekVN7ESkS5BPuT9MJxkKAKbf31Ne1qUb4cH5ArE8W9BTLmpKYgHt9AzWujyreCOGYmoxUjiVHE=
X-Received: by 2002:aca:f0d:: with SMTP id 13mr8400396oip.124.1600090935363;
 Mon, 14 Sep 2020 06:42:15 -0700 (PDT)
MIME-Version: 1.0
References: <CACDReSwTxVn4CxgsKtza3YNTdOABNVk86NH3VY=2hR8N3P+VFA@mail.gmail.com>
 <CAB__hTTbSA4ipiKS2O9NgeD8TLq_Bm4-LmHPW0r5LrwDv7S1PA@mail.gmail.com>
 <CACDReSxG6r1nV+WrkUCYA7tDchH8uSZGXUa1U6k1qOb12LqH_Q@mail.gmail.com>
In-Reply-To: <CACDReSxG6r1nV+WrkUCYA7tDchH8uSZGXUa1U6k1qOb12LqH_Q@mail.gmail.com>
Date: Mon, 14 Sep 2020 09:42:04 -0400
Message-ID: <CAB__hTR0g85geW_Sy__0BDLr5Bk61=mq+fesPJePKbhY_CVNEw@mail.gmail.com>
To: Ofer Saferman <ofer@navigicom.com>
Cc: usrp-users <usrp-users@lists.ettus.com>
Subject: Re: [USRP-users] Extending example "rfnoc_replay_samples_from_file"
 to 2 Tx channels
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
From: Rob Kossler via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Rob Kossler <rkossler@nd.edu>
Content-Type: multipart/mixed; boundary="===============5951860971726641901=="
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

--===============5951860971726641901==
Content-Type: multipart/alternative; boundary="000000000000cfcc4005af463325"

--000000000000cfcc4005af463325
Content-Type: text/plain; charset="UTF-8"

Hi Ofer,
Unfortunately, the Replay block is only available for X3x0 and N3x0 USRPs.
This block does not work for the E310 and I have not heard any plans from
Ettus to change this.

But, if you were using one of these supported USRPs, you would likely just
have one Replay block with multiple ports (that is the way Ettus builds
this block in the N310 default FPGA image). You are correct that you will
effectively have 2 software commands, but if you provide the same "start
time" in both commands (where the start time is slightly in the future from
"now"), the FPGA Radio block will delay streaming until the specified time
is reached such that both streams start simultaneously.

Rob

On Sun, Sep 13, 2020 at 11:59 PM Ofer Saferman via USRP-users <
usrp-users@lists.ettus.com> wrote:

> Hello Rob,
> Thank you for your response.
> I am using USRP E310.
> I am using UHD 3.15.
>
> So, use one replay block with multiple ports? Or use two replay blocks?
> Could you point me to the relevant methods to handle more than one port?
>
> Is there a detailed block diagram of the various modules (classes) or some
> class diagram ? It is hard to navigate between the various blocks and know
> what methods they have only from example code. I looked at the class
> documentation but couldn't find such block diagram.
>
> Regarding synchronization - How does providing the same start time ensure
> synchronization? How can you actually start replay at the same time? I am
> asking because everything is controlled by software so if you have to issue
> two commands in software to start each of the replays they will not be
> synchronized. Which command in code actually starts replay of signal?
>
> Thanks,
> Ofer.
>
> On Mon, Sep 14, 2020 at 5:43 AM Rob Kossler <rkossler@nd.edu> wrote:
>
>> Hi Ofer,
>> This is possible. The Replay block has multiple ports. You can connect
>> the ports to the various DUC or Radio ports.  Which device?  Which version
>> of UHD?
>> Yes, you can start them synchronized by providing the same start time to
>> each channel.
>> Rob
>>
>> On Sat, Sep 12, 2020 at 9:42 AM Ofer Saferman via USRP-users <
>> usrp-users@lists.ettus.com> wrote:
>>
>>> Hello,
>>>
>>> I would like to extend the example called
>>> "rfnoc_replay_sample_from_file" to play 2 files, one for Tx1 and one for
>>> Tx2.
>>> I would also like both playbacks to start simultaneously (be
>>> synchronized). Is the synchronization possible?
>>>
>>> What would be the methodology? Creating 2 instances of the replay blocks
>>> each connected to a Tx channel? Are there even more than one replay blocks
>>> available?
>>>
>>> I am walking blind in the woods here and any direction would be helpful.
>>>
>>> Regards,
>>> Ofer Saferman
>>>
>>> --
>>> This message has been scanned for viruses and
>>> dangerous content by *MailScanner* <http://www.mailscanner.info/>, and
>>> is
>>> believed to be clean. _______________________________________________
>>> USRP-users mailing list
>>> USRP-users@lists.ettus.com
>>> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
>>>
>>
> --
> This message has been scanned for viruses and
> dangerous content by *MailScanner* <http://www.mailscanner.info/>, and is
> believed to be clean. _______________________________________________
> USRP-users mailing list
> USRP-users@lists.ettus.com
> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
>

--000000000000cfcc4005af463325
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Hi Ofer,</div><div>Unfortunately, the Replay block is=
 only available for X3x0 and N3x0 USRPs.=C2=A0 This block does not work for=
 the E310 and I have not heard any plans from Ettus to change this.</div><d=
iv><br></div><div>But, if you were using one of these supported USRPs, you =
would likely just have one Replay block with multiple ports (that is the wa=
y Ettus builds this block in the N310 default FPGA image). You are correct =
that you will effectively have 2 software commands, but if you provide the =
same &quot;start time&quot; in both commands (where the start time is sligh=
tly in the future from &quot;now&quot;), the FPGA Radio block will delay st=
reaming until the specified time is reached such that both streams start si=
multaneously.</div><div><br></div><div>Rob</div><div><br></div><div class=
=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Sun, Sep 13, 2020=
 at 11:59 PM Ofer Saferman via USRP-users &lt;<a href=3D"mailto:usrp-users@=
lists.ettus.com">usrp-users@lists.ettus.com</a>&gt; wrote:<br></div><blockq=
uote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1p=
x solid rgb(204,204,204);padding-left:1ex"><div dir=3D"ltr"><div>Hello Rob,=
</div><div>Thank you for your response.</div><div>I am using USRP E310.</di=
v><div>I am using UHD 3.15.</div><div><br></div><div>So, use one replay blo=
ck with multiple ports? Or use two replay blocks?</div><div>Could you point=
 me to the relevant methods to handle more than one port?</div><div><br></d=
iv><div>Is there a detailed block diagram of the various modules (classes) =
or some class diagram ? It is hard to navigate between the various blocks a=
nd know what methods they have only from example code. I looked at the clas=
s documentation but couldn&#39;t find such block diagram.<br></div><div><br=
></div><div></div><div>Regarding synchronization - How does providing the s=
ame start time ensure synchronization? How can you actually start replay at=
 the same time? I am asking because everything is controlled by software so=
 if you have to issue two commands in software to start each of the replays=
 they will not be synchronized. Which command in code actually starts repla=
y of signal?<br></div><div><br></div><div>Thanks,</div><div>Ofer.<br></div>=
</div><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">=
On Mon, Sep 14, 2020 at 5:43 AM Rob Kossler &lt;<a href=3D"mailto:rkossler@=
nd.edu" target=3D"_blank">rkossler@nd.edu</a>&gt; wrote:<br></div><blockquo=
te class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px =
solid rgb(204,204,204);padding-left:1ex"><div dir=3D"ltr"><div>Hi Ofer,</di=
v><div>This is possible. The Replay block has multiple ports. You can conne=
ct the ports to the various DUC or Radio ports.=C2=A0 Which device?=C2=A0 W=
hich version of UHD?</div><div>Yes, you can start them synchronized by prov=
iding the same start time to each channel.</div><div>Rob</div><br><div clas=
s=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Sat, Sep 12, 202=
0 at 9:42 AM Ofer Saferman via USRP-users &lt;<a href=3D"mailto:usrp-users@=
lists.ettus.com" target=3D"_blank">usrp-users@lists.ettus.com</a>&gt; wrote=
:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.=
8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex"><div dir=3D"lt=
r"><div>Hello,</div><div><br></div><div>I would like to extend the example =
called &quot;rfnoc_replay_sample_from_file&quot; to play 2 files, one for T=
x1 and one for Tx2.</div><div>I would also like both playbacks to start sim=
ultaneously (be synchronized). Is the synchronization possible?</div><div><=
br></div><div>What would be the methodology? Creating 2 instances of the re=
play blocks each connected to a Tx channel? Are there even more than one re=
play blocks available?</div><div><br></div><div>I am walking blind in the w=
oods here and any direction would be helpful.</div><div><br></div><div>Rega=
rds,</div><div>Ofer Saferman<br></div></div>
<br>--=20
<br>This message has been scanned for viruses and
<br>dangerous content by
<a href=3D"http://www.mailscanner.info/" target=3D"_blank"><b>MailScanner</=
b></a>, and is
<br>believed to be clean.

_______________________________________________<br>
USRP-users mailing list<br>
<a href=3D"mailto:USRP-users@lists.ettus.com" target=3D"_blank">USRP-users@=
lists.ettus.com</a><br>
<a href=3D"http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.c=
om" rel=3D"noreferrer" target=3D"_blank">http://lists.ettus.com/mailman/lis=
tinfo/usrp-users_lists.ettus.com</a><br>
</blockquote></div></div>
</blockquote></div>
<br>--=20
<br>This message has been scanned for viruses and
<br>dangerous content by
<a href=3D"http://www.mailscanner.info/" target=3D"_blank"><b>MailScanner</=
b></a>, and is
<br>believed to be clean.

_______________________________________________<br>
USRP-users mailing list<br>
<a href=3D"mailto:USRP-users@lists.ettus.com" target=3D"_blank">USRP-users@=
lists.ettus.com</a><br>
<a href=3D"http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.c=
om" rel=3D"noreferrer" target=3D"_blank">http://lists.ettus.com/mailman/lis=
tinfo/usrp-users_lists.ettus.com</a><br>
</blockquote></div></div>

--000000000000cfcc4005af463325--


--===============5951860971726641901==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============5951860971726641901==--

