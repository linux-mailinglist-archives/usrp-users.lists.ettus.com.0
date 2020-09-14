Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 12E0A2693D6
	for <lists+usrp-users@lfdr.de>; Mon, 14 Sep 2020 19:43:55 +0200 (CEST)
Received: from [::1] (port=56988 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1kHsW8-0006Oi-LC; Mon, 14 Sep 2020 13:43:52 -0400
Received: from postman.dtnt.info ([62.219.91.51]:59202)
 by mm2.emwd.com with esmtp (Exim 4.93)
 (envelope-from <ofer@navigicom.com>) id 1kHsW4-0006BT-85
 for usrp-users@lists.ettus.com; Mon, 14 Sep 2020 13:43:48 -0400
Received: from o.dtnt.email (o.dtnt.email [62.219.91.154])
 by postman.dtnt.info (Postfix) with ESMTPS id F003C43388
 for <usrp-users@lists.ettus.com>; Mon, 14 Sep 2020 20:42:25 +0300 (IDT)
Received: from o.dtnt.email (o.dtnt.email [127.0.0.1])
 by o.dtnt.email (Postfix) with ESMTP id D8F6E9FB80
 for <usrp-users@lists.ettus.com>; Mon, 14 Sep 2020 20:42:25 +0300 (IDT)
X-Virus-Scanned: Debian amavisd-new at o.dtnt.email
Received: from o.dtnt.email ([127.0.0.1])
 by o.dtnt.email (o.dtnt.email [127.0.0.1]) (amavisd-new, port 10026)
 with ESMTP id 0AzFEDZ_FgI8 for <usrp-users@lists.ettus.com>;
 Mon, 14 Sep 2020 20:42:24 +0300 (IDT)
Received: from mail-oi1-f173.google.com (mail-oi1-f173.google.com
 [209.85.167.173])
 by o.dtnt.email (Postfix) with ESMTPSA id 3180F9FB75
 for <usrp-users@lists.ettus.com>; Mon, 14 Sep 2020 20:42:24 +0300 (IDT)
Received: by mail-oi1-f173.google.com with SMTP id a3so756497oib.4
 for <usrp-users@lists.ettus.com>; Mon, 14 Sep 2020 10:42:23 -0700 (PDT)
X-Gm-Message-State: AOAM533N883NBosJgmuWJ03MRwmMSBvqQpF6IcqEgFuIam5EXx+cgtfU
 3xMZh6uKBXMRXuPy/eSHyBOWKXDCLy/+ffB2RNY=
X-Google-Smtp-Source: ABdhPJxdCY45UISNazDcSEPsmL4lntrmz876OgEJabvg/GRVmbKaiNlXpbaZE9yRmc1UvHk212ZGtbdnXdsiFurTir4=
X-Received: by 2002:aca:4b0b:: with SMTP id y11mr322380oia.147.1600105342255; 
 Mon, 14 Sep 2020 10:42:22 -0700 (PDT)
MIME-Version: 1.0
References: <CACDReSwTxVn4CxgsKtza3YNTdOABNVk86NH3VY=2hR8N3P+VFA@mail.gmail.com>
 <CAB__hTTbSA4ipiKS2O9NgeD8TLq_Bm4-LmHPW0r5LrwDv7S1PA@mail.gmail.com>
 <CACDReSxG6r1nV+WrkUCYA7tDchH8uSZGXUa1U6k1qOb12LqH_Q@mail.gmail.com>
 <CAB__hTR0g85geW_Sy__0BDLr5Bk61=mq+fesPJePKbhY_CVNEw@mail.gmail.com>
 <CACDReSyJO9po2EBXVH1Rkk2tH2EXuyznmrA9cpn6Nb15VP9BVQ@mail.gmail.com>
 <CAB__hTQWr5ehASz2tCDzG9vu4EK4-drTT66fZk38yRbaxcS8Qw@mail.gmail.com>
In-Reply-To: <CAB__hTQWr5ehASz2tCDzG9vu4EK4-drTT66fZk38yRbaxcS8Qw@mail.gmail.com>
Date: Mon, 14 Sep 2020 20:42:11 +0300
X-Gmail-Original-Message-ID: <CACDReSzt=L8+P+1Umx+wpOArDoGpY6qUQD+3C0HWY2qC5KDFMg@mail.gmail.com>
Message-ID: <CACDReSzt=L8+P+1Umx+wpOArDoGpY6qUQD+3C0HWY2qC5KDFMg@mail.gmail.com>
To: Rob Kossler <rkossler@nd.edu>
Cc: Ofer Saferman <ofer@navigicom.com>, usrp-users <usrp-users@lists.ettus.com>
X-DTNT-MailScanner-Information: Please contact the ISP for more information
X-DTNT-MailScanner-ID: F003C43388.A28F6
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
Content-Type: multipart/mixed; boundary="===============8122312635480926955=="
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

--===============8122312635480926955==
Content-Type: multipart/alternative; boundary="00000000000087479505af498e5e"

--00000000000087479505af498e5e
Content-Type: text/plain; charset="UTF-8"

This is exactly the capability I need. An arbitrary waveform generator that
runs from the device (without a host computer) and is able to repeatedly
transmit two waveforms to Tx1 and Tx2 channels.
I was hoping not to do any FPGA development.
As for the number of samples - I can make do with several thousands if need
be.
Maybe UHD ver. 4 supports the replay block for E310?

Ofer

On Mon, Sep 14, 2020 at 8:11 PM Rob Kossler <rkossler@nd.edu> wrote:

> In order to do so, you need to build a new FPGA image (using Xilinx
> Vivado). Ettus provides a "siggen" rfnoc block that can be used to transmit
> a signal, but the waveform types supported by this block are very simple.
> However, if this works for you, then you don't have to do any development -
> you can just build a new image with this existing block.
>
> If you want to be able to have an arbitrary waveform signal generation
> capability (with fixed length waveforms that are repeated), you need a
> custom block that includes enough memory to store the largest expected
> waveforms.  Is this the capability you need and if so, how large (how many
> samples) are your waveforms?
> Rob
>
> On Mon, Sep 14, 2020 at 12:24 PM Ofer Saferman <ofer@navigicom.com> wrote:
>
>> Thank you.
>> Last question: If the E310 does not support the replay block is it
>> possible in any way to transmit a signal using the device only without
>> streaming it from a host computer? If so how?
>>
>> Regards,
>> Ofer Saferman
>>
>> On Mon, Sep 14, 2020 at 4:42 PM Rob Kossler <rkossler@nd.edu> wrote:
>>
>>> Hi Ofer,
>>> Unfortunately, the Replay block is only available for X3x0 and N3x0
>>> USRPs.  This block does not work for the E310 and I have not heard any
>>> plans from Ettus to change this.
>>>
>>> But, if you were using one of these supported USRPs, you would likely
>>> just have one Replay block with multiple ports (that is the way Ettus
>>> builds this block in the N310 default FPGA image). You are correct that you
>>> will effectively have 2 software commands, but if you provide the same
>>> "start time" in both commands (where the start time is slightly in the
>>> future from "now"), the FPGA Radio block will delay streaming until the
>>> specified time is reached such that both streams start simultaneously.
>>>
>>> Rob
>>>
>>> On Sun, Sep 13, 2020 at 11:59 PM Ofer Saferman via USRP-users <
>>> usrp-users@lists.ettus.com> wrote:
>>>
>>>> Hello Rob,
>>>> Thank you for your response.
>>>> I am using USRP E310.
>>>> I am using UHD 3.15.
>>>>
>>>> So, use one replay block with multiple ports? Or use two replay blocks?
>>>> Could you point me to the relevant methods to handle more than one port?
>>>>
>>>> Is there a detailed block diagram of the various modules (classes) or
>>>> some class diagram ? It is hard to navigate between the various blocks and
>>>> know what methods they have only from example code. I looked at the class
>>>> documentation but couldn't find such block diagram.
>>>>
>>>> Regarding synchronization - How does providing the same start time
>>>> ensure synchronization? How can you actually start replay at the same time?
>>>> I am asking because everything is controlled by software so if you have to
>>>> issue two commands in software to start each of the replays they will not
>>>> be synchronized. Which command in code actually starts replay of signal?
>>>>
>>>> Thanks,
>>>> Ofer.
>>>>
>>>> On Mon, Sep 14, 2020 at 5:43 AM Rob Kossler <rkossler@nd.edu> wrote:
>>>>
>>>>> Hi Ofer,
>>>>> This is possible. The Replay block has multiple ports. You can connect
>>>>> the ports to the various DUC or Radio ports.  Which device?  Which version
>>>>> of UHD?
>>>>> Yes, you can start them synchronized by providing the same start time
>>>>> to each channel.
>>>>> Rob
>>>>>
>>>>> On Sat, Sep 12, 2020 at 9:42 AM Ofer Saferman via USRP-users <
>>>>> usrp-users@lists.ettus.com> wrote:
>>>>>
>>>>>> Hello,
>>>>>>
>>>>>> I would like to extend the example called
>>>>>> "rfnoc_replay_sample_from_file" to play 2 files, one for Tx1 and one for
>>>>>> Tx2.
>>>>>> I would also like both playbacks to start simultaneously (be
>>>>>> synchronized). Is the synchronization possible?
>>>>>>
>>>>>> What would be the methodology? Creating 2 instances of the replay
>>>>>> blocks each connected to a Tx channel? Are there even more than one replay
>>>>>> blocks available?
>>>>>>
>>>>>> I am walking blind in the woods here and any direction would be
>>>>>> helpful.
>>>>>>
>>>>>> Regards,
>>>>>> Ofer Saferman
>>>>>>
>>>>>> --
>>>>>> This message has been scanned for viruses and
>>>>>> dangerous content by *MailScanner* <http://www.mailscanner.info/>,
>>>>>> and is
>>>>>> believed to be clean. _______________________________________________
>>>>>> USRP-users mailing list
>>>>>> USRP-users@lists.ettus.com
>>>>>> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
>>>>>>
>>>>>
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
>> believed to be clean.
>
>

-- 
This message has been scanned for viruses and
dangerous content by MailScanner, and is
believed to be clean.


--00000000000087479505af498e5e
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>This is exactly the capability I need. An arbitrary w=
aveform generator that runs from the device (without a host computer) and i=
s able to repeatedly transmit two waveforms to Tx1 and Tx2 channels.</div><=
div>I was hoping not to do any FPGA development.</div><div>As for the numbe=
r of samples - I can make do with several thousands if need be.</div><div>M=
aybe UHD ver. 4 supports the replay block for E310?</div><div><br></div><di=
v>Ofer<br></div></div><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=
=3D"gmail_attr">On Mon, Sep 14, 2020 at 8:11 PM Rob Kossler &lt;<a href=3D"=
mailto:rkossler@nd.edu">rkossler@nd.edu</a>&gt; wrote:<br></div><blockquote=
 class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px so=
lid rgb(204,204,204);padding-left:1ex"><div dir=3D"ltr">In order to do so, =
you need to build a new FPGA image (using Xilinx Vivado). Ettus provides a =
&quot;siggen&quot; rfnoc block that can be used to transmit a signal, but t=
he waveform types supported by this block are very simple. However, if this=
 works for you, then you don&#39;t have to do any development - you can jus=
t build a new image with this existing block.<div><br></div><div>If you wan=
t to be able to have an arbitrary waveform signal generation capability (wi=
th fixed length waveforms that are repeated), you need a custom block that =
includes enough memory=C2=A0to store the largest expected waveforms.=C2=A0 =
Is this the capability you need and if so, how large (how many samples) are=
 your waveforms?<div>Rob</div></div></div><br><div class=3D"gmail_quote"><d=
iv dir=3D"ltr" class=3D"gmail_attr">On Mon, Sep 14, 2020 at 12:24 PM Ofer S=
aferman &lt;<a href=3D"mailto:ofer@navigicom.com" target=3D"_blank">ofer@na=
vigicom.com</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=
=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding=
-left:1ex"><div dir=3D"ltr"><div>Thank you.</div><div>Last question: If the=
 E310 does not support the replay block is it possible in any way to transm=
it a signal using the device only without streaming it from a host computer=
? If so how?</div><div><br></div><div>Regards,</div><div>Ofer Saferman<br><=
/div></div><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_a=
ttr">On Mon, Sep 14, 2020 at 4:42 PM Rob Kossler &lt;<a href=3D"mailto:rkos=
sler@nd.edu" target=3D"_blank">rkossler@nd.edu</a>&gt; wrote:<br></div><blo=
ckquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left=
:1px solid rgb(204,204,204);padding-left:1ex"><div dir=3D"ltr"><div>Hi Ofer=
,</div><div>Unfortunately, the Replay block is only available for X3x0 and =
N3x0 USRPs.=C2=A0 This block does not work for the E310 and I have not hear=
d any plans from Ettus to change this.</div><div><br></div><div>But, if you=
 were using one of these supported USRPs, you would likely just have one Re=
play block with multiple ports (that is the way Ettus builds this block in =
the N310 default FPGA image). You are correct that you will effectively hav=
e 2 software commands, but if you provide the same &quot;start time&quot; i=
n both commands (where the start time is slightly in the future from &quot;=
now&quot;), the FPGA Radio block will delay streaming until the specified t=
ime is reached such that both streams start simultaneously.</div><div><br><=
/div><div>Rob</div><div><br></div><div class=3D"gmail_quote"><div dir=3D"lt=
r" class=3D"gmail_attr">On Sun, Sep 13, 2020 at 11:59 PM Ofer Saferman via =
USRP-users &lt;<a href=3D"mailto:usrp-users@lists.ettus.com" target=3D"_bla=
nk">usrp-users@lists.ettus.com</a>&gt; wrote:<br></div><blockquote class=3D=
"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(2=
04,204,204);padding-left:1ex"><div dir=3D"ltr"><div>Hello Rob,</div><div>Th=
ank you for your response.</div><div>I am using USRP E310.</div><div>I am u=
sing UHD 3.15.</div><div><br></div><div>So, use one replay block with multi=
ple ports? Or use two replay blocks?</div><div>Could you point me to the re=
levant methods to handle more than one port?</div><div><br></div><div>Is th=
ere a detailed block diagram of the various modules (classes) or some class=
 diagram ? It is hard to navigate between the various blocks and know what =
methods they have only from example code. I looked at the class documentati=
on but couldn&#39;t find such block diagram.<br></div><div><br></div><div><=
/div><div>Regarding synchronization - How does providing the same start tim=
e ensure synchronization? How can you actually start replay at the same tim=
e? I am asking because everything is controlled by software so if you have =
to issue two commands in software to start each of the replays they will no=
t be synchronized. Which command in code actually starts replay of signal?<=
br></div><div><br></div><div>Thanks,</div><div>Ofer.<br></div></div><br><di=
v class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Mon, Sep 1=
4, 2020 at 5:43 AM Rob Kossler &lt;<a href=3D"mailto:rkossler@nd.edu" targe=
t=3D"_blank">rkossler@nd.edu</a>&gt; wrote:<br></div><blockquote class=3D"g=
mail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204=
,204,204);padding-left:1ex"><div dir=3D"ltr"><div>Hi Ofer,</div><div>This i=
s possible. The Replay block has multiple ports. You can connect the ports =
to the various DUC or Radio ports.=C2=A0 Which device?=C2=A0 Which version =
of UHD?</div><div>Yes, you can start them synchronized by providing the sam=
e start time to each channel.</div><div>Rob</div><br><div class=3D"gmail_qu=
ote"><div dir=3D"ltr" class=3D"gmail_attr">On Sat, Sep 12, 2020 at 9:42 AM =
Ofer Saferman via USRP-users &lt;<a href=3D"mailto:usrp-users@lists.ettus.c=
om" target=3D"_blank">usrp-users@lists.ettus.com</a>&gt; wrote:<br></div><b=
lockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-le=
ft:1px solid rgb(204,204,204);padding-left:1ex"><div dir=3D"ltr"><div>Hello=
,</div><div><br></div><div>I would like to extend the example called &quot;=
rfnoc_replay_sample_from_file&quot; to play 2 files, one for Tx1 and one fo=
r Tx2.</div><div>I would also like both playbacks to start simultaneously (=
be synchronized). Is the synchronization possible?</div><div><br></div><div=
>What would be the methodology? Creating 2 instances of the replay blocks e=
ach connected to a Tx channel? Are there even more than one replay blocks a=
vailable?</div><div><br></div><div>I am walking blind in the woods here and=
 any direction would be helpful.</div><div><br></div><div>Regards,</div><di=
v>Ofer Saferman<br></div></div>
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
</blockquote></div>
<br />--=20
<br />This message has been scanned for viruses and
<br />dangerous content by
<a href=3D"http://www.mailscanner.info/"><b>MailScanner</b></a>, and is
<br />believed to be clean.


--00000000000087479505af498e5e--


--===============8122312635480926955==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============8122312635480926955==--

