Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id BA32126916C
	for <lists+usrp-users@lfdr.de>; Mon, 14 Sep 2020 18:25:28 +0200 (CEST)
Received: from [::1] (port=56456 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1kHrID-000106-4b; Mon, 14 Sep 2020 12:25:25 -0400
Received: from postman.dtnt.info ([62.219.91.51]:57124)
 by mm2.emwd.com with esmtp (Exim 4.93)
 (envelope-from <ofer@navigicom.com>) id 1kHrI8-0000u5-Op
 for usrp-users@lists.ettus.com; Mon, 14 Sep 2020 12:25:21 -0400
Received: from o.dtnt.email (o.dtnt.email [62.219.91.154])
 by postman.dtnt.info (Postfix) with ESMTPS id AB14848BC0
 for <usrp-users@lists.ettus.com>; Mon, 14 Sep 2020 19:24:20 +0300 (IDT)
Received: from o.dtnt.email (o.dtnt.email [127.0.0.1])
 by o.dtnt.email (Postfix) with ESMTP id 7A44A9FB7F
 for <usrp-users@lists.ettus.com>; Mon, 14 Sep 2020 19:24:20 +0300 (IDT)
X-Virus-Scanned: Debian amavisd-new at o.dtnt.email
Received: from o.dtnt.email ([127.0.0.1])
 by o.dtnt.email (o.dtnt.email [127.0.0.1]) (amavisd-new, port 10026)
 with ESMTP id nk3iTlfDYF-Q for <usrp-users@lists.ettus.com>;
 Mon, 14 Sep 2020 19:24:19 +0300 (IDT)
Received: from mail-oi1-f182.google.com (mail-oi1-f182.google.com
 [209.85.167.182])
 by o.dtnt.email (Postfix) with ESMTPSA id 16B329FB75
 for <usrp-users@lists.ettus.com>; Mon, 14 Sep 2020 19:24:18 +0300 (IDT)
Received: by mail-oi1-f182.google.com with SMTP id d189so435543oig.12
 for <usrp-users@lists.ettus.com>; Mon, 14 Sep 2020 09:24:18 -0700 (PDT)
X-Gm-Message-State: AOAM531tyWHpS3bm4BIRhE4de1SKgpKPmLWR62pacTkNMAnEga24OSTi
 aD089doUZU9XJR2uhXL74prmgphN7UoocHHr+Uk=
X-Google-Smtp-Source: ABdhPJyRY2zPuaR/AWTSpCCl31EDPOyXPLWKnbEKAWQ4qiC5ajGA9YFvJhyLuhlT4vFm4UiLXTIt/HL9+pp/yZIMSCM=
X-Received: by 2002:aca:4b0b:: with SMTP id y11mr100042oia.147.1600100657232; 
 Mon, 14 Sep 2020 09:24:17 -0700 (PDT)
MIME-Version: 1.0
References: <CACDReSwTxVn4CxgsKtza3YNTdOABNVk86NH3VY=2hR8N3P+VFA@mail.gmail.com>
 <CAB__hTTbSA4ipiKS2O9NgeD8TLq_Bm4-LmHPW0r5LrwDv7S1PA@mail.gmail.com>
 <CACDReSxG6r1nV+WrkUCYA7tDchH8uSZGXUa1U6k1qOb12LqH_Q@mail.gmail.com>
 <CAB__hTR0g85geW_Sy__0BDLr5Bk61=mq+fesPJePKbhY_CVNEw@mail.gmail.com>
In-Reply-To: <CAB__hTR0g85geW_Sy__0BDLr5Bk61=mq+fesPJePKbhY_CVNEw@mail.gmail.com>
Date: Mon, 14 Sep 2020 19:24:06 +0300
X-Gmail-Original-Message-ID: <CACDReSyJO9po2EBXVH1Rkk2tH2EXuyznmrA9cpn6Nb15VP9BVQ@mail.gmail.com>
Message-ID: <CACDReSyJO9po2EBXVH1Rkk2tH2EXuyznmrA9cpn6Nb15VP9BVQ@mail.gmail.com>
To: Rob Kossler <rkossler@nd.edu>
Cc: Ofer Saferman <ofer@navigicom.com>, usrp-users <usrp-users@lists.ettus.com>
X-DTNT-MailScanner-Information: Please contact the ISP for more information
X-DTNT-MailScanner-ID: AB14848BC0.A30FD
X-DTNT-MailScanner: Found to be clean
X-DTNT-MailScanner-From: ofer@navigicom.com
X-Spam-Status: No
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
From: Ofer Saferman via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Ofer Saferman <ofer@navigicom.com>
Content-Type: multipart/mixed; boundary="===============2158030892930105104=="
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

--===============2158030892930105104==
Content-Type: multipart/alternative; boundary="0000000000004783e105af48772a"

--0000000000004783e105af48772a
Content-Type: text/plain; charset="UTF-8"

Thank you.
Last question: If the E310 does not support the replay block is it possible
in any way to transmit a signal using the device only without streaming it
from a host computer? If so how?

Regards,
Ofer Saferman

On Mon, Sep 14, 2020 at 4:42 PM Rob Kossler <rkossler@nd.edu> wrote:

> Hi Ofer,
> Unfortunately, the Replay block is only available for X3x0 and N3x0
> USRPs.  This block does not work for the E310 and I have not heard any
> plans from Ettus to change this.
>
> But, if you were using one of these supported USRPs, you would likely just
> have one Replay block with multiple ports (that is the way Ettus builds
> this block in the N310 default FPGA image). You are correct that you will
> effectively have 2 software commands, but if you provide the same "start
> time" in both commands (where the start time is slightly in the future from
> "now"), the FPGA Radio block will delay streaming until the specified time
> is reached such that both streams start simultaneously.
>
> Rob
>
> On Sun, Sep 13, 2020 at 11:59 PM Ofer Saferman via USRP-users <
> usrp-users@lists.ettus.com> wrote:
>
>> Hello Rob,
>> Thank you for your response.
>> I am using USRP E310.
>> I am using UHD 3.15.
>>
>> So, use one replay block with multiple ports? Or use two replay blocks?
>> Could you point me to the relevant methods to handle more than one port?
>>
>> Is there a detailed block diagram of the various modules (classes) or
>> some class diagram ? It is hard to navigate between the various blocks and
>> know what methods they have only from example code. I looked at the class
>> documentation but couldn't find such block diagram.
>>
>> Regarding synchronization - How does providing the same start time ensure
>> synchronization? How can you actually start replay at the same time? I am
>> asking because everything is controlled by software so if you have to issue
>> two commands in software to start each of the replays they will not be
>> synchronized. Which command in code actually starts replay of signal?
>>
>> Thanks,
>> Ofer.
>>
>> On Mon, Sep 14, 2020 at 5:43 AM Rob Kossler <rkossler@nd.edu> wrote:
>>
>>> Hi Ofer,
>>> This is possible. The Replay block has multiple ports. You can connect
>>> the ports to the various DUC or Radio ports.  Which device?  Which version
>>> of UHD?
>>> Yes, you can start them synchronized by providing the same start time to
>>> each channel.
>>> Rob
>>>
>>> On Sat, Sep 12, 2020 at 9:42 AM Ofer Saferman via USRP-users <
>>> usrp-users@lists.ettus.com> wrote:
>>>
>>>> Hello,
>>>>
>>>> I would like to extend the example called
>>>> "rfnoc_replay_sample_from_file" to play 2 files, one for Tx1 and one for
>>>> Tx2.
>>>> I would also like both playbacks to start simultaneously (be
>>>> synchronized). Is the synchronization possible?
>>>>
>>>> What would be the methodology? Creating 2 instances of the replay
>>>> blocks each connected to a Tx channel? Are there even more than one replay
>>>> blocks available?
>>>>
>>>> I am walking blind in the woods here and any direction would be helpful.
>>>>
>>>> Regards,
>>>> Ofer Saferman
>>>>
>>>> --
>>>> This message has been scanned for viruses and
>>>> dangerous content by *MailScanner* <http://www.mailscanner.info/>, and
>>>> is
>>>> believed to be clean. _______________________________________________
>>>> USRP-users mailing list
>>>> USRP-users@lists.ettus.com
>>>> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
>>>>
>>>
>> --
>> This message has been scanned for viruses and
>> dangerous content by *MailScanner* <http://www.mailscanner.info/>, and
>> is
>> believed to be clean. _______________________________________________
>> USRP-users mailing list
>> USRP-users@lists.ettus.com
>> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
>>
>

-- 
This message has been scanned for viruses and
dangerous content by MailScanner, and is
believed to be clean.


--0000000000004783e105af48772a
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Thank you.</div><div>Last question: If the E310 does =
not support the replay block is it possible in any way to transmit a signal=
 using the device only without streaming it from a host computer? If so how=
?</div><div><br></div><div>Regards,</div><div>Ofer Saferman<br></div></div>=
<br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Mon=
, Sep 14, 2020 at 4:42 PM Rob Kossler &lt;<a href=3D"mailto:rkossler@nd.edu=
">rkossler@nd.edu</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote"=
 style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);p=
adding-left:1ex"><div dir=3D"ltr"><div>Hi Ofer,</div><div>Unfortunately, th=
e Replay block is only available for X3x0 and N3x0 USRPs.=C2=A0 This block =
does not work for the E310 and I have not heard any plans from Ettus to cha=
nge this.</div><div><br></div><div>But, if you were using one of these supp=
orted USRPs, you would likely just have one Replay block with multiple port=
s (that is the way Ettus builds this block in the N310 default FPGA image).=
 You are correct that you will effectively have 2 software commands, but if=
 you provide the same &quot;start time&quot; in both commands (where the st=
art time is slightly in the future from &quot;now&quot;), the FPGA Radio bl=
ock will delay streaming until the specified time is reached such that both=
 streams start simultaneously.</div><div><br></div><div>Rob</div><div><br><=
/div><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Su=
n, Sep 13, 2020 at 11:59 PM Ofer Saferman via USRP-users &lt;<a href=3D"mai=
lto:usrp-users@lists.ettus.com" target=3D"_blank">usrp-users@lists.ettus.co=
m</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"margin=
:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex"=
><div dir=3D"ltr"><div>Hello Rob,</div><div>Thank you for your response.</d=
iv><div>I am using USRP E310.</div><div>I am using UHD 3.15.</div><div><br>=
</div><div>So, use one replay block with multiple ports? Or use two replay =
blocks?</div><div>Could you point me to the relevant methods to handle more=
 than one port?</div><div><br></div><div>Is there a detailed block diagram =
of the various modules (classes) or some class diagram ? It is hard to navi=
gate between the various blocks and know what methods they have only from e=
xample code. I looked at the class documentation but couldn&#39;t find such=
 block diagram.<br></div><div><br></div><div></div><div>Regarding synchroni=
zation - How does providing the same start time ensure synchronization? How=
 can you actually start replay at the same time? I am asking because everyt=
hing is controlled by software so if you have to issue two commands in soft=
ware to start each of the replays they will not be synchronized. Which comm=
and in code actually starts replay of signal?<br></div><div><br></div><div>=
Thanks,</div><div>Ofer.<br></div></div><br><div class=3D"gmail_quote"><div =
dir=3D"ltr" class=3D"gmail_attr">On Mon, Sep 14, 2020 at 5:43 AM Rob Kossle=
r &lt;<a href=3D"mailto:rkossler@nd.edu" target=3D"_blank">rkossler@nd.edu<=
/a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0=
px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex"><=
div dir=3D"ltr"><div>Hi Ofer,</div><div>This is possible. The Replay block =
has multiple ports. You can connect the ports to the various DUC or Radio p=
orts.=C2=A0 Which device?=C2=A0 Which version of UHD?</div><div>Yes, you ca=
n start them synchronized by providing the same start time to each channel.=
</div><div>Rob</div><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=
=3D"gmail_attr">On Sat, Sep 12, 2020 at 9:42 AM Ofer Saferman via USRP-user=
s &lt;<a href=3D"mailto:usrp-users@lists.ettus.com" target=3D"_blank">usrp-=
users@lists.ettus.com</a>&gt; wrote:<br></div><blockquote class=3D"gmail_qu=
ote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,20=
4);padding-left:1ex"><div dir=3D"ltr"><div>Hello,</div><div><br></div><div>=
I would like to extend the example called &quot;rfnoc_replay_sample_from_fi=
le&quot; to play 2 files, one for Tx1 and one for Tx2.</div><div>I would al=
so like both playbacks to start simultaneously (be synchronized). Is the sy=
nchronization possible?</div><div><br></div><div>What would be the methodol=
ogy? Creating 2 instances of the replay blocks each connected to a Tx chann=
el? Are there even more than one replay blocks available?</div><div><br></d=
iv><div>I am walking blind in the woods here and any direction would be hel=
pful.</div><div><br></div><div>Regards,</div><div>Ofer Saferman<br></div></=
div>
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
</blockquote></div>
<br />--=20
<br />This message has been scanned for viruses and
<br />dangerous content by
<a href=3D"http://www.mailscanner.info/"><b>MailScanner</b></a>, and is
<br />believed to be clean.


--0000000000004783e105af48772a--


--===============2158030892930105104==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============2158030892930105104==--

