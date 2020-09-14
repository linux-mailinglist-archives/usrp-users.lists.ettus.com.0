Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 263212692A3
	for <lists+usrp-users@lfdr.de>; Mon, 14 Sep 2020 19:12:02 +0200 (CEST)
Received: from [::1] (port=56754 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1kHs1H-0003dw-0n; Mon, 14 Sep 2020 13:11:59 -0400
Received: from mail-ot1-f51.google.com ([209.85.210.51]:36416)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
 (Exim 4.93) (envelope-from <rkossler@nd.edu>) id 1kHs1C-0003X9-Uv
 for usrp-users@lists.ettus.com; Mon, 14 Sep 2020 13:11:55 -0400
Received: by mail-ot1-f51.google.com with SMTP id 60so616783otw.3
 for <usrp-users@lists.ettus.com>; Mon, 14 Sep 2020 10:11:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nd.edu; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=E1dxdHh3SBsldaQvEvNW0EYh545odpgsuLknM4hkd/M=;
 b=GRd+m/bW4WkITIJqM9rgpYuxmpZ4LPJczLrH87DLwfR7c2rs1yf3d/klqZ2yP+Tvaq
 1qh3DmsUnHYn401wNtnYR44MLUn9iShS3CRMur3yhV1QXxiYaTqLK24QFFkI6S63lGQd
 CnE8k4yp2YQq2BJWrHow0uW6QHHnRgaRI9XeXPvxV1tICuFlMQU56gCKj7yc0VNK7L0S
 7N2JHiRMm+E7tZH4jqoYYSaOKlbKU+1zsMal7KE/1nrF44Z8aOfZ4eKKNzTvb4ZasgOb
 Etf9x/oqzBhYao2Xo6Oy5r/yhEZlUb8yYlo6GJsWE0I7SUUdyZivWAUuGkjKJ+q4Ovv2
 rizw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=E1dxdHh3SBsldaQvEvNW0EYh545odpgsuLknM4hkd/M=;
 b=Hwp7HnYLCAiPZnXTil7Mmgj2muTzrh+CBg6ytajkLtV756c2HqQ0uy2NBEWjO3Pu1b
 b/SNqCZoH91q/wAbVwWYHXuc83aOkWjVDOTe6Zxfmd3o0/oYF9mh17eujN8GUa0ZoWaZ
 1T43UfBTYyPZSzVX19e4WXUxl6EUFkZ4Am+vW7ltG7lNpuPwzMOgQPGlj1pkTTfHk4aM
 i7AhMiiJldlT469o+1SgfnP6pM3sO1m2Qc06QV8nHGCH2qM+7y6z2NRrGksewpKJPcjb
 BCeEgeifX0EwP106Ywp57c8CYCKiIaPDlLetIVjBg/13FjxMwiJOysswbTV8es7Fxyp+
 0Zxw==
X-Gm-Message-State: AOAM531d3B1Hx4tfLQrVrBe3s4jnpoIO2zC3F+Vx51Uc+TPhUoVhiVKw
 QT1G0sGDoaeHbDwBmF8Mm3W/ioKqWRIrvhtYO3xkjbEawtQ=
X-Google-Smtp-Source: ABdhPJzfhphwScJuF1Vej8jmLbkxgXdvFUq7JS663kN7MtTwQsmdi/FJIfkp/dvBDWMaj3fMngAnTbWpHdS4T5lqSQI=
X-Received: by 2002:a9d:6219:: with SMTP id g25mr9989853otj.58.1600103473991; 
 Mon, 14 Sep 2020 10:11:13 -0700 (PDT)
MIME-Version: 1.0
References: <CACDReSwTxVn4CxgsKtza3YNTdOABNVk86NH3VY=2hR8N3P+VFA@mail.gmail.com>
 <CAB__hTTbSA4ipiKS2O9NgeD8TLq_Bm4-LmHPW0r5LrwDv7S1PA@mail.gmail.com>
 <CACDReSxG6r1nV+WrkUCYA7tDchH8uSZGXUa1U6k1qOb12LqH_Q@mail.gmail.com>
 <CAB__hTR0g85geW_Sy__0BDLr5Bk61=mq+fesPJePKbhY_CVNEw@mail.gmail.com>
 <CACDReSyJO9po2EBXVH1Rkk2tH2EXuyznmrA9cpn6Nb15VP9BVQ@mail.gmail.com>
In-Reply-To: <CACDReSyJO9po2EBXVH1Rkk2tH2EXuyznmrA9cpn6Nb15VP9BVQ@mail.gmail.com>
Date: Mon, 14 Sep 2020 13:11:03 -0400
Message-ID: <CAB__hTQWr5ehASz2tCDzG9vu4EK4-drTT66fZk38yRbaxcS8Qw@mail.gmail.com>
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
Content-Type: multipart/mixed; boundary="===============0212752783231962440=="
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

--===============0212752783231962440==
Content-Type: multipart/alternative; boundary="0000000000002c0c9305af491f84"

--0000000000002c0c9305af491f84
Content-Type: text/plain; charset="UTF-8"

In order to do so, you need to build a new FPGA image (using Xilinx
Vivado). Ettus provides a "siggen" rfnoc block that can be used to transmit
a signal, but the waveform types supported by this block are very simple.
However, if this works for you, then you don't have to do any development -
you can just build a new image with this existing block.

If you want to be able to have an arbitrary waveform signal generation
capability (with fixed length waveforms that are repeated), you need a
custom block that includes enough memory to store the largest expected
waveforms.  Is this the capability you need and if so, how large (how many
samples) are your waveforms?
Rob

On Mon, Sep 14, 2020 at 12:24 PM Ofer Saferman <ofer@navigicom.com> wrote:

> Thank you.
> Last question: If the E310 does not support the replay block is it
> possible in any way to transmit a signal using the device only without
> streaming it from a host computer? If so how?
>
> Regards,
> Ofer Saferman
>
> On Mon, Sep 14, 2020 at 4:42 PM Rob Kossler <rkossler@nd.edu> wrote:
>
>> Hi Ofer,
>> Unfortunately, the Replay block is only available for X3x0 and N3x0
>> USRPs.  This block does not work for the E310 and I have not heard any
>> plans from Ettus to change this.
>>
>> But, if you were using one of these supported USRPs, you would likely
>> just have one Replay block with multiple ports (that is the way Ettus
>> builds this block in the N310 default FPGA image). You are correct that you
>> will effectively have 2 software commands, but if you provide the same
>> "start time" in both commands (where the start time is slightly in the
>> future from "now"), the FPGA Radio block will delay streaming until the
>> specified time is reached such that both streams start simultaneously.
>>
>> Rob
>>
>> On Sun, Sep 13, 2020 at 11:59 PM Ofer Saferman via USRP-users <
>> usrp-users@lists.ettus.com> wrote:
>>
>>> Hello Rob,
>>> Thank you for your response.
>>> I am using USRP E310.
>>> I am using UHD 3.15.
>>>
>>> So, use one replay block with multiple ports? Or use two replay blocks?
>>> Could you point me to the relevant methods to handle more than one port?
>>>
>>> Is there a detailed block diagram of the various modules (classes) or
>>> some class diagram ? It is hard to navigate between the various blocks and
>>> know what methods they have only from example code. I looked at the class
>>> documentation but couldn't find such block diagram.
>>>
>>> Regarding synchronization - How does providing the same start time
>>> ensure synchronization? How can you actually start replay at the same time?
>>> I am asking because everything is controlled by software so if you have to
>>> issue two commands in software to start each of the replays they will not
>>> be synchronized. Which command in code actually starts replay of signal?
>>>
>>> Thanks,
>>> Ofer.
>>>
>>> On Mon, Sep 14, 2020 at 5:43 AM Rob Kossler <rkossler@nd.edu> wrote:
>>>
>>>> Hi Ofer,
>>>> This is possible. The Replay block has multiple ports. You can connect
>>>> the ports to the various DUC or Radio ports.  Which device?  Which version
>>>> of UHD?
>>>> Yes, you can start them synchronized by providing the same start time
>>>> to each channel.
>>>> Rob
>>>>
>>>> On Sat, Sep 12, 2020 at 9:42 AM Ofer Saferman via USRP-users <
>>>> usrp-users@lists.ettus.com> wrote:
>>>>
>>>>> Hello,
>>>>>
>>>>> I would like to extend the example called
>>>>> "rfnoc_replay_sample_from_file" to play 2 files, one for Tx1 and one for
>>>>> Tx2.
>>>>> I would also like both playbacks to start simultaneously (be
>>>>> synchronized). Is the synchronization possible?
>>>>>
>>>>> What would be the methodology? Creating 2 instances of the replay
>>>>> blocks each connected to a Tx channel? Are there even more than one replay
>>>>> blocks available?
>>>>>
>>>>> I am walking blind in the woods here and any direction would be
>>>>> helpful.
>>>>>
>>>>> Regards,
>>>>> Ofer Saferman
>>>>>
>>>>> --
>>>>> This message has been scanned for viruses and
>>>>> dangerous content by *MailScanner* <http://www.mailscanner.info/>,
>>>>> and is
>>>>> believed to be clean. _______________________________________________
>>>>> USRP-users mailing list
>>>>> USRP-users@lists.ettus.com
>>>>> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
>>>>>
>>>>
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
> believed to be clean.

--0000000000002c0c9305af491f84
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">In order to do so, you need to build a new FPGA image (usi=
ng Xilinx Vivado). Ettus provides a &quot;siggen&quot; rfnoc block that can=
 be used to transmit a signal, but the waveform types supported by this blo=
ck are very simple. However, if this works for you, then you don&#39;t have=
 to do any development - you can just build a new image with this existing =
block.<div><br></div><div>If you want to be able to have an arbitrary wavef=
orm signal generation capability (with fixed length waveforms that are repe=
ated), you need a custom block that includes enough memory=C2=A0to store th=
e largest expected waveforms.=C2=A0 Is this the capability you need and if =
so, how large (how many samples) are your waveforms?<div>Rob</div></div></d=
iv><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On =
Mon, Sep 14, 2020 at 12:24 PM Ofer Saferman &lt;<a href=3D"mailto:ofer@navi=
gicom.com">ofer@navigicom.com</a>&gt; wrote:<br></div><blockquote class=3D"=
gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(20=
4,204,204);padding-left:1ex"><div dir=3D"ltr"><div>Thank you.</div><div>Las=
t question: If the E310 does not support the replay block is it possible in=
 any way to transmit a signal using the device only without streaming it fr=
om a host computer? If so how?</div><div><br></div><div>Regards,</div><div>=
Ofer Saferman<br></div></div><br><div class=3D"gmail_quote"><div dir=3D"ltr=
" class=3D"gmail_attr">On Mon, Sep 14, 2020 at 4:42 PM Rob Kossler &lt;<a h=
ref=3D"mailto:rkossler@nd.edu" target=3D"_blank">rkossler@nd.edu</a>&gt; wr=
ote:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px=
 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex"><div dir=3D=
"ltr"><div>Hi Ofer,</div><div>Unfortunately, the Replay block is only avail=
able for X3x0 and N3x0 USRPs.=C2=A0 This block does not work for the E310 a=
nd I have not heard any plans from Ettus to change this.</div><div><br></di=
v><div>But, if you were using one of these supported USRPs, you would likel=
y just have one Replay block with multiple ports (that is the way Ettus bui=
lds this block in the N310 default FPGA image). You are correct that you wi=
ll effectively have 2 software commands, but if you provide the same &quot;=
start time&quot; in both commands (where the start time is slightly in the =
future from &quot;now&quot;), the FPGA Radio block will delay streaming unt=
il the specified time is reached such that both streams start simultaneousl=
y.</div><div><br></div><div>Rob</div><div><br></div><div class=3D"gmail_quo=
te"><div dir=3D"ltr" class=3D"gmail_attr">On Sun, Sep 13, 2020 at 11:59 PM =
Ofer Saferman via USRP-users &lt;<a href=3D"mailto:usrp-users@lists.ettus.c=
om" target=3D"_blank">usrp-users@lists.ettus.com</a>&gt; wrote:<br></div><b=
lockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-le=
ft:1px solid rgb(204,204,204);padding-left:1ex"><div dir=3D"ltr"><div>Hello=
 Rob,</div><div>Thank you for your response.</div><div>I am using USRP E310=
.</div><div>I am using UHD 3.15.</div><div><br></div><div>So, use one repla=
y block with multiple ports? Or use two replay blocks?</div><div>Could you =
point me to the relevant methods to handle more than one port?</div><div><b=
r></div><div>Is there a detailed block diagram of the various modules (clas=
ses) or some class diagram ? It is hard to navigate between the various blo=
cks and know what methods they have only from example code. I looked at the=
 class documentation but couldn&#39;t find such block diagram.<br></div><di=
v><br></div><div></div><div>Regarding synchronization - How does providing =
the same start time ensure synchronization? How can you actually start repl=
ay at the same time? I am asking because everything is controlled by softwa=
re so if you have to issue two commands in software to start each of the re=
plays they will not be synchronized. Which command in code actually starts =
replay of signal?<br></div><div><br></div><div>Thanks,</div><div>Ofer.<br><=
/div></div><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_a=
ttr">On Mon, Sep 14, 2020 at 5:43 AM Rob Kossler &lt;<a href=3D"mailto:rkos=
sler@nd.edu" target=3D"_blank">rkossler@nd.edu</a>&gt; wrote:<br></div><blo=
ckquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left=
:1px solid rgb(204,204,204);padding-left:1ex"><div dir=3D"ltr"><div>Hi Ofer=
,</div><div>This is possible. The Replay block has multiple ports. You can =
connect the ports to the various DUC or Radio ports.=C2=A0 Which device?=C2=
=A0 Which version of UHD?</div><div>Yes, you can start them synchronized by=
 providing the same start time to each channel.</div><div>Rob</div><br><div=
 class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Sat, Sep 12=
, 2020 at 9:42 AM Ofer Saferman via USRP-users &lt;<a href=3D"mailto:usrp-u=
sers@lists.ettus.com" target=3D"_blank">usrp-users@lists.ettus.com</a>&gt; =
wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0=
px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex"><div dir=
=3D"ltr"><div>Hello,</div><div><br></div><div>I would like to extend the ex=
ample called &quot;rfnoc_replay_sample_from_file&quot; to play 2 files, one=
 for Tx1 and one for Tx2.</div><div>I would also like both playbacks to sta=
rt simultaneously (be synchronized). Is the synchronization possible?</div>=
<div><br></div><div>What would be the methodology? Creating 2 instances of =
the replay blocks each connected to a Tx channel? Are there even more than =
one replay blocks available?</div><div><br></div><div>I am walking blind in=
 the woods here and any direction would be helpful.</div><div><br></div><di=
v>Regards,</div><div>Ofer Saferman<br></div></div>
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
<br>--=20
<br>This message has been scanned for viruses and
<br>dangerous content by
<a href=3D"http://www.mailscanner.info/" target=3D"_blank"><b>MailScanner</=
b></a>, and is
<br>believed to be clean.

</blockquote></div>

--0000000000002c0c9305af491f84--


--===============0212752783231962440==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============0212752783231962440==--

