Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 9D5682F4320
	for <lists+usrp-users@lfdr.de>; Wed, 13 Jan 2021 05:31:27 +0100 (CET)
Received: from [::1] (port=45938 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1kzXoZ-0000HL-46; Tue, 12 Jan 2021 23:31:23 -0500
Received: from mail-vs1-f45.google.com ([209.85.217.45]:36427)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
 (Exim 4.93) (envelope-from <jonathon.pendlum@ettus.com>)
 id 1kzXoV-0000BC-AP
 for usrp-users@lists.ettus.com; Tue, 12 Jan 2021 23:31:19 -0500
Received: by mail-vs1-f45.google.com with SMTP id o19so442455vsn.3
 for <usrp-users@lists.ettus.com>; Tue, 12 Jan 2021 20:30:59 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=ettus-com.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=UwBBj39MC+WF4qgfPjWfiBY06G5t97Nq+74WhmzIWwQ=;
 b=Yc+GR7tqj9dWRRWrZwDce6g6PeDnhVDnoRHpAryXZPx4yRIFE2MKD/bRJwlvn7VrMS
 ZEDDa+V4xevh7OTQUhprYdWPS6Qzi9JhyTb8U7Ky6CawZBtaO8cpyAca6pQTFIQlHfYr
 +sEu/tWLs9YOa+tC3JX3HJY1ua6S72nU8XgeZLEW29giHzoBsk2sWnuanV91NW3OsGus
 JpvTQ2qruuF2KXy1tp3K1BAu+bsu6A016fIfWCzA/cBT/YX526ymlf3Y6C5H7Cm/wSc5
 wKc2oTCXLgZmKBAkKIhInrloVERzervDXUca2D1twMo2oLafDj5siCViipFlH7vPQMwb
 5v4g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=UwBBj39MC+WF4qgfPjWfiBY06G5t97Nq+74WhmzIWwQ=;
 b=PFCYHfXq748ooI+oget0EK4isy/bFSUtQFsDcZTEJwgqDWwmMLLhgi6+dnZ/irRDXd
 gLm5ofKi9rvwu+RLKo0fmiVaB7omhZLPduHvks+YR1VHtCjZ4DDCDJVImWrpMk9fzM5S
 3/MTRVZn1mb9sZRGjRyeL/dh7TYGVNneqL/NQyAsZpOCmD/oGhJHDwEaeZLQsIEJPcTQ
 +5CHNBk/C6jA49IOagvzeZZqhV0MxYX3hW3ZzONMHeT0s8igtVLeTaV0UnAGXNHMzhO3
 39qsn25cpDwMDz6Hydxyxq8JvA5A6NYUnl/rk7fULRwjpJMk1f226bWqcmwWRhTMg3ws
 D59A==
X-Gm-Message-State: AOAM5337qB7T3ATQ1SS4tZrevXgz/rLG2hWfEtdLowdsSORo+JLapbti
 UE9xSQq9SAZf6zb3zVEu3WlcU+mCmltHEjxHJBLs2dnl
X-Google-Smtp-Source: ABdhPJyPBql9tx6kux1CbesYf/GYJjv6D7o8klCOMVcHqkXMaaGbMlYNikFFxKNtHYVDPWRAQW0m4GCB6typ2xINvfE=
X-Received: by 2002:a05:6102:2322:: with SMTP id
 b2mr237259vsa.18.1610512238458; 
 Tue, 12 Jan 2021 20:30:38 -0800 (PST)
MIME-Version: 1.0
References: <CAB__hTT6AyXGPERxgJQiDoyvhxPcLSZts2SmnrhE0kyMvr7fXw@mail.gmail.com>
 <CAL7q81s=-MRW3ufTmcjZ5Fm5KVsz4MQtTKpPLbrD5Hk4xvauvA@mail.gmail.com>
 <CAB__hTQkKGCBMddVJPw75RAq=2E9zdEMCXLr0oruCObFNPd=dw@mail.gmail.com>
In-Reply-To: <CAB__hTQkKGCBMddVJPw75RAq=2E9zdEMCXLr0oruCObFNPd=dw@mail.gmail.com>
Date: Tue, 12 Jan 2021 23:30:02 -0500
Message-ID: <CAL7q81ugbP7XkHwU=BFdsVDp=GhusZQMXV05SAWoh2O=XhGhRA@mail.gmail.com>
To: Rob Kossler <rkossler@nd.edu>
Cc: usrp-users <usrp-users@lists.ettus.com>
Subject: Re: [USRP-users] Testing single RFNoC block produces
 out-of-sequence (S) errors
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
From: Jonathon Pendlum via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Jonathon Pendlum <jonathon.pendlum@ettus.com>
Content-Type: multipart/mixed; boundary="===============5077697023789621498=="
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

--===============5077697023789621498==
Content-Type: multipart/alternative; boundary="000000000000e14ed605b8c09977"

--000000000000e14ed605b8c09977
Content-Type: text/plain; charset="UTF-8"

Hey Rob,

Since you are definitely dropping packets, I think trying DPDK is a good
next step.

Jonathon

On Tue, Jan 12, 2021 at 10:12 PM Rob Kossler <rkossler@nd.edu> wrote:

> Hi Jonathon,
> I had not tried the "netstat -s" but after your suggestion I did and the
> "receive buffer errors" does increase after running my application.  I had
> previously increased the ring buffer size to  the max 4096.
> Rob
>
> On Mon, Jan 11, 2021 at 9:50 PM Jonathon Pendlum <
> jonathon.pendlum@ettus.com> wrote:
>
>> Hi Rob,
>>
>> If you run netstat -s before and after running your flowgraph, do you see
>> "receive buffer errors" in the UDP section increasing? I imagine you've
>> tried this but just in case: have you increased the ring buffer size with
>> "sudo ethtool -G <interface> tx 4096 rx 4096"?
>>
>> Jonathon
>>
>> On Tue, Jan 5, 2021 at 6:08 PM Rob Kossler via USRP-users <
>> usrp-users@lists.ettus.com> wrote:
>>
>>> Hi,
>>> I created a custom pulse-detector block which attempts to pass/discard
>>> samples based upon an instantaneous power estimate. Each set of
>>> consecutively passed samples constitutes a "burst" (i.e. the EOB is set on
>>> the TLAST corresponding to the final passed sample of the burst).  A burst
>>> can have as few as 1 sample because my block does not prevent this.
>>>
>>> The block does what I expect in the testbench and even in the FPGA
>>> binary when using the same data as the testbench.  However, when using a
>>> long input stream (~250MSamps from previous recording that I have handy) to
>>> test this block running in the FPGA, I get out-of-sequence errors on
>>> receive. My graph is tx_streamer => pulse_detector => rx_streamer
>>> (actually, my pulse_detector is a 2x2 block so there are 2 tx_streamers and
>>> 2 rx_streamers, all of which are run in separate threads).
>>>
>>> I am wondering if the Sequence errors have nothing to do with my block
>>> but rather are related to the way Ubuntu handles incoming Ethernet data
>>> such that perhaps it is running out of RX descriptors. I have tried slowing
>>> down my Transmit and seen some improvement but without eliminating the
>>> errors completely. So, I'm wondering what suggestions others might have.
>>> My ideas are:
>>> * invest some time to get DPDK working.  With this, perhaps Sequence
>>> errors cannot occur??
>>> * try slowing down my Tx even further?
>>> * create artificial data sets (rather than real collected data) such
>>> that I can control the length of the output pulses
>>>
>>> Let me know if you have any suggestions.
>>> Rob
>>> _______________________________________________
>>> USRP-users mailing list
>>> USRP-users@lists.ettus.com
>>> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
>>>
>>

--000000000000e14ed605b8c09977
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hey Rob,<div><br></div><div>Since you are definitely dropp=
ing packets, I think trying DPDK is a=C2=A0good next step.</div><div><br></=
div><div>Jonathon</div></div><br><div class=3D"gmail_quote"><div dir=3D"ltr=
" class=3D"gmail_attr">On Tue, Jan 12, 2021 at 10:12 PM Rob Kossler &lt;<a =
href=3D"mailto:rkossler@nd.edu">rkossler@nd.edu</a>&gt; wrote:<br></div><bl=
ockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-lef=
t:1px solid rgb(204,204,204);padding-left:1ex"><div dir=3D"ltr">Hi Jonathon=
,<div>I had not tried the &quot;netstat -s&quot; but after your suggestion =
I did and the &quot;receive buffer errors&quot; does increase after running=
 my application.=C2=A0 I had previously increased the ring buffer size to=
=C2=A0 the max 4096.</div><div>Rob</div></div><br><div class=3D"gmail_quote=
"><div dir=3D"ltr" class=3D"gmail_attr">On Mon, Jan 11, 2021 at 9:50 PM Jon=
athon Pendlum &lt;<a href=3D"mailto:jonathon.pendlum@ettus.com" target=3D"_=
blank">jonathon.pendlum@ettus.com</a>&gt; wrote:<br></div><blockquote class=
=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rg=
b(204,204,204);padding-left:1ex"><div dir=3D"ltr">Hi Rob,<div><br></div><di=
v>If you run netstat -s before and after running your flowgraph, do you see=
 &quot;receive buffer errors&quot; in the UDP section increasing? I imagine=
 you&#39;ve tried this but just in case: have you increased the ring buffer=
 size with &quot;sudo ethtool -G &lt;interface&gt; tx 4096 rx 4096&quot;?</=
div><div><br></div><div>Jonathon</div></div><br><div class=3D"gmail_quote">=
<div dir=3D"ltr" class=3D"gmail_attr">On Tue, Jan 5, 2021 at 6:08 PM Rob Ko=
ssler via USRP-users &lt;<a href=3D"mailto:usrp-users@lists.ettus.com" targ=
et=3D"_blank">usrp-users@lists.ettus.com</a>&gt; wrote:<br></div><blockquot=
e class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px s=
olid rgb(204,204,204);padding-left:1ex"><div dir=3D"ltr">Hi,<div>I created =
a custom pulse-detector block which attempts to pass/discard samples based =
upon an instantaneous power estimate. Each set of consecutively passed samp=
les constitutes a &quot;burst&quot; (i.e. the EOB is set on the TLAST corre=
sponding to the final passed sample of the burst).=C2=A0 A burst can have a=
s few as 1 sample because my block does not prevent this.</div><div><br></d=
iv><div>The block does what I expect in the testbench and even in the FPGA =
binary when using the same data as the testbench.=C2=A0 However, when using=
 a long input stream (~250MSamps from previous recording that I have handy)=
 to test this block running in the FPGA, I get out-of-sequence errors on re=
ceive. My graph is tx_streamer =3D&gt; pulse_detector =3D&gt; rx_streamer (=
actually, my pulse_detector is a 2x2 block so there are 2 tx_streamers and =
2 rx_streamers, all of which are run in separate threads).</div><div><br></=
div><div>I am wondering if the Sequence errors have nothing to do with my b=
lock but rather are related to the way Ubuntu handles incoming Ethernet dat=
a such that perhaps it is running out of RX descriptors. I have tried slowi=
ng down my Transmit and seen some improvement but without eliminating the e=
rrors completely. So, I&#39;m wondering what suggestions others might have.=
=C2=A0 My ideas are:</div><div>* invest some time to get DPDK working.=C2=
=A0 With this, perhaps Sequence errors cannot occur??</div><div>* try=C2=A0=
slowing down my Tx even further?</div><div>* create artificial data sets (r=
ather than real collected data) such that I can control the length of the o=
utput pulses</div><div><br></div><div>Let me know if you have any suggestio=
ns.</div><div>Rob</div></div>
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

--000000000000e14ed605b8c09977--


--===============5077697023789621498==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============5077697023789621498==--

