Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 64778268353
	for <lists+usrp-users@lfdr.de>; Mon, 14 Sep 2020 06:00:04 +0200 (CEST)
Received: from [::1] (port=50652 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1kHfep-00013p-DR; Sun, 13 Sep 2020 23:59:59 -0400
Received: from postman.dtnt.info ([62.219.91.51]:45416)
 by mm2.emwd.com with esmtp (Exim 4.93)
 (envelope-from <ofer@navigicom.com>) id 1kHfek-0000vr-Qb
 for usrp-users@lists.ettus.com; Sun, 13 Sep 2020 23:59:55 -0400
Received: from o.dtnt.email (o.dtnt.email [62.219.91.154])
 by postman.dtnt.info (Postfix) with ESMTPS id 8E73848747
 for <usrp-users@lists.ettus.com>; Mon, 14 Sep 2020 06:58:41 +0300 (IDT)
Received: from o.dtnt.email (o.dtnt.email [127.0.0.1])
 by o.dtnt.email (Postfix) with ESMTP id 622C69FB75
 for <usrp-users@lists.ettus.com>; Mon, 14 Sep 2020 06:58:41 +0300 (IDT)
X-Virus-Scanned: Debian amavisd-new at o.dtnt.email
Received: from o.dtnt.email ([127.0.0.1])
 by o.dtnt.email (o.dtnt.email [127.0.0.1]) (amavisd-new, port 10026)
 with ESMTP id tmHGBST9w_u8 for <usrp-users@lists.ettus.com>;
 Mon, 14 Sep 2020 06:58:40 +0300 (IDT)
Received: from mail-ot1-f43.google.com (mail-ot1-f43.google.com
 [209.85.210.43]) by o.dtnt.email (Postfix) with ESMTPSA id 31CF39FB36
 for <usrp-users@lists.ettus.com>; Mon, 14 Sep 2020 06:58:40 +0300 (IDT)
Received: by mail-ot1-f43.google.com with SMTP id o8so5957030otl.4
 for <usrp-users@lists.ettus.com>; Sun, 13 Sep 2020 20:58:39 -0700 (PDT)
X-Gm-Message-State: AOAM533eVVVORKMiW2d17EXlG/TYPKZ9nAfLkETVhXFmlWBBQ3LDRwO6
 /qcmNWJos4ZYxyX7rIo1UFI9Y4dzY8WIrN7of0I=
X-Google-Smtp-Source: ABdhPJzfG1UXJAjKzliBEpdEIdlLxYh+8PLUa8bLp/IOYXITvsRf6BU6rDXp83Gbfte5tOwUCXojJ9uZob/ITyr5IyM=
X-Received: by 2002:a05:6830:210f:: with SMTP id
 i15mr8378210otc.185.1600055918179; 
 Sun, 13 Sep 2020 20:58:38 -0700 (PDT)
MIME-Version: 1.0
References: <CACDReSwTxVn4CxgsKtza3YNTdOABNVk86NH3VY=2hR8N3P+VFA@mail.gmail.com>
 <CAB__hTTbSA4ipiKS2O9NgeD8TLq_Bm4-LmHPW0r5LrwDv7S1PA@mail.gmail.com>
In-Reply-To: <CAB__hTTbSA4ipiKS2O9NgeD8TLq_Bm4-LmHPW0r5LrwDv7S1PA@mail.gmail.com>
Date: Mon, 14 Sep 2020 06:58:27 +0300
X-Gmail-Original-Message-ID: <CACDReSxG6r1nV+WrkUCYA7tDchH8uSZGXUa1U6k1qOb12LqH_Q@mail.gmail.com>
Message-ID: <CACDReSxG6r1nV+WrkUCYA7tDchH8uSZGXUa1U6k1qOb12LqH_Q@mail.gmail.com>
To: usrp-users <usrp-users@lists.ettus.com>
X-DTNT-MailScanner-Information: Please contact the ISP for more information
X-DTNT-MailScanner-ID: 8E73848747.A02B3
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
Content-Type: multipart/mixed; boundary="===============0258173838359529560=="
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

--===============0258173838359529560==
Content-Type: multipart/alternative; boundary="0000000000009fb91e05af3e0cd9"

--0000000000009fb91e05af3e0cd9
Content-Type: text/plain; charset="UTF-8"

Hello Rob,
Thank you for your response.
I am using USRP E310.
I am using UHD 3.15.

So, use one replay block with multiple ports? Or use two replay blocks?
Could you point me to the relevant methods to handle more than one port?

Is there a detailed block diagram of the various modules (classes) or some
class diagram ? It is hard to navigate between the various blocks and know
what methods they have only from example code. I looked at the class
documentation but couldn't find such block diagram.

Regarding synchronization - How does providing the same start time ensure
synchronization? How can you actually start replay at the same time? I am
asking because everything is controlled by software so if you have to issue
two commands in software to start each of the replays they will not be
synchronized. Which command in code actually starts replay of signal?

Thanks,
Ofer.

On Mon, Sep 14, 2020 at 5:43 AM Rob Kossler <rkossler@nd.edu> wrote:

> Hi Ofer,
> This is possible. The Replay block has multiple ports. You can connect the
> ports to the various DUC or Radio ports.  Which device?  Which version of
> UHD?
> Yes, you can start them synchronized by providing the same start time to
> each channel.
> Rob
>
> On Sat, Sep 12, 2020 at 9:42 AM Ofer Saferman via USRP-users <
> usrp-users@lists.ettus.com> wrote:
>
>> Hello,
>>
>> I would like to extend the example called "rfnoc_replay_sample_from_file"
>> to play 2 files, one for Tx1 and one for Tx2.
>> I would also like both playbacks to start simultaneously (be
>> synchronized). Is the synchronization possible?
>>
>> What would be the methodology? Creating 2 instances of the replay blocks
>> each connected to a Tx channel? Are there even more than one replay blocks
>> available?
>>
>> I am walking blind in the woods here and any direction would be helpful.
>>
>> Regards,
>> Ofer Saferman
>>
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


--0000000000009fb91e05af3e0cd9
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Hello Rob,</div><div>Thank you for your response.</di=
v><div>I am using USRP E310.</div><div>I am using UHD 3.15.</div><div><br><=
/div><div>So, use one replay block with multiple ports? Or use two replay b=
locks?</div><div>Could you point me to the relevant methods to handle more =
than one port?</div><div><br></div><div>Is there a detailed block diagram o=
f the various modules (classes) or some class diagram ? It is hard to navig=
ate between the various blocks and know what methods they have only from ex=
ample code. I looked at the class documentation but couldn&#39;t find such =
block diagram.<br></div><div><br></div><div></div><div>Regarding synchroniz=
ation - How does providing the same start time ensure synchronization? How =
can you actually start replay at the same time? I am asking because everyth=
ing is controlled by software so if you have to issue two commands in softw=
are to start each of the replays they will not be synchronized. Which comma=
nd in code actually starts replay of signal?<br></div><div><br></div><div>T=
hanks,</div><div>Ofer.<br></div></div><br><div class=3D"gmail_quote"><div d=
ir=3D"ltr" class=3D"gmail_attr">On Mon, Sep 14, 2020 at 5:43 AM Rob Kossler=
 &lt;<a href=3D"mailto:rkossler@nd.edu">rkossler@nd.edu</a>&gt; wrote:<br><=
/div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;bo=
rder-left:1px solid rgb(204,204,204);padding-left:1ex"><div dir=3D"ltr"><di=
v>Hi Ofer,</div><div>This is possible. The Replay block has multiple ports.=
 You can connect the ports to the various DUC or Radio ports.=C2=A0 Which d=
evice?=C2=A0 Which version of UHD?</div><div>Yes, you can start them synchr=
onized by providing the same start time to each channel.</div><div>Rob</div=
><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Sa=
t, Sep 12, 2020 at 9:42 AM Ofer Saferman via USRP-users &lt;<a href=3D"mail=
to:usrp-users@lists.ettus.com" target=3D"_blank">usrp-users@lists.ettus.com=
</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:=
0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex">=
<div dir=3D"ltr"><div>Hello,</div><div><br></div><div>I would like to exten=
d the example called &quot;rfnoc_replay_sample_from_file&quot; to play 2 fi=
les, one for Tx1 and one for Tx2.</div><div>I would also like both playback=
s to start simultaneously (be synchronized). Is the synchronization possibl=
e?</div><div><br></div><div>What would be the methodology? Creating 2 insta=
nces of the replay blocks each connected to a Tx channel? Are there even mo=
re than one replay blocks available?</div><div><br></div><div>I am walking =
blind in the woods here and any direction would be helpful.</div><div><br><=
/div><div>Regards,</div><div>Ofer Saferman<br></div></div>
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


--0000000000009fb91e05af3e0cd9--


--===============0258173838359529560==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============0258173838359529560==--

