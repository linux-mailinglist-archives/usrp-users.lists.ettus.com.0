Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 63B1E2F4F1D
	for <lists+usrp-users@lfdr.de>; Wed, 13 Jan 2021 16:48:16 +0100 (CET)
Received: from [::1] (port=51248 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1kziNa-0000mA-V8; Wed, 13 Jan 2021 10:48:14 -0500
Received: from mail-oi1-f171.google.com ([209.85.167.171]:34393)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
 (Exim 4.93) (envelope-from <rkossler@nd.edu>) id 1kziNW-0000dn-Jr
 for usrp-users@lists.ettus.com; Wed, 13 Jan 2021 10:48:10 -0500
Received: by mail-oi1-f171.google.com with SMTP id s75so2589094oih.1
 for <usrp-users@lists.ettus.com>; Wed, 13 Jan 2021 07:47:50 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nd.edu; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=Hs+JY0u8e0oNaezMSVO5Q2NdT6mrE6N3h1JK5PbPDxQ=;
 b=YQw9uRyXbXIRKosEf8ZqgiuTLbISzq7VXHPMy+lULro2vop01CHdvJAcZAAEZUW41R
 rGqkykmu4RRBEhrlSQLfbqBvdn/BTWx59SZEgVuZ4aooU7K7R2anc3cveiP0pDyy03pU
 AUPrxE8c7SlBYZSSQV4kCN47KnV51jcAKI25vCVUlzLA3xiltRFmoe1r0GIj5p+tkiVc
 /GBO2vkoF7DC98YrCbWc1UhoYQFvIXVxq+7F8v2C3rU+GoWV4uDH6uFu/8MB267FMf9S
 KdYpI5kj97Yoz/6ih6HflDJnDJdAILfpnHCrjtf0ulJ/+P/5cYBvyUBAADuF2BHH1oFc
 X9eg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=Hs+JY0u8e0oNaezMSVO5Q2NdT6mrE6N3h1JK5PbPDxQ=;
 b=pIPeGUa4Zb6PmpXy2ixA1iAs5I6pceerwmW1bdgYuN6jXgt62/nXcv8YX8vjlWvnbQ
 ut308VrX3P+CseHB/3qsMOBRih6VveKM1lTJdewct9bJuj0UEjVFm9jwcpU/XZvRVnXs
 ijFVBt2d8jMWcK07R97fDchi7QZF3V9ANRb52P9xTSQhnmxOWS/10nrq6cT03kocxg+z
 SVpnhg/tJtNVb/m1DDwHn45xGTC5VaigoKy90Ezj82PwjqCgEP049622YRy9T1ymAeOE
 qnXfMfPuPts7TeeDe78PtwZNq7OxYSGqnITKh0EBRY/0fY6o5mdvQkBECSc6DC4e3U7N
 ZuuQ==
X-Gm-Message-State: AOAM532ae/8+cPX9lOTLbKjpd8DBReaJ+ccInRM0eqSZTdq2ndroUndD
 u2DkBqTNyMqvAVgQa4YcC7qSdAS/TmIA+ECBg59DGQ==
X-Google-Smtp-Source: ABdhPJxDm7iHMQDuUkCrK53OhAt6ivOQiFYBd0TtLYybZ9ejBCUFLN/KDMi/gJOSePzcPHaCmP5AbYCcC2c6FRHKpAA=
X-Received: by 2002:a05:6808:9a:: with SMTP id
 s26mr1592266oic.124.1610552849654; 
 Wed, 13 Jan 2021 07:47:29 -0800 (PST)
MIME-Version: 1.0
References: <CAB__hTT7xrij++hgMQj_RYCa3GMAjj8znAmSg68Yhj=miM=jkg@mail.gmail.com>
 <CAFche=iZrigG8r3+2DdvGunazqNSayAp55Qm56Od=Y_XCgOOoA@mail.gmail.com>
In-Reply-To: <CAFche=iZrigG8r3+2DdvGunazqNSayAp55Qm56Od=Y_XCgOOoA@mail.gmail.com>
Date: Wed, 13 Jan 2021 10:47:18 -0500
Message-ID: <CAB__hTQFdAKNK4vg8fXjzHgMw307qubbJkcHVbB3P6E81xeaPg@mail.gmail.com>
To: Wade Fife <wade.fife@ettus.com>
Cc: usrp-users <usrp-users@lists.ettus.com>
Subject: Re: [USRP-users] Packet length control in rx_streamer
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
Content-Type: multipart/mixed; boundary="===============0883050702324322510=="
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

--===============0883050702324322510==
Content-Type: multipart/alternative; boundary="0000000000007f3c3105b8ca0e7b"

--0000000000007f3c3105b8ca0e7b
Content-Type: text/plain; charset="UTF-8"

Hi Wade,
Right. The block controls the packet size.  But, I am attempting to verify
that my block is actually behaving properly with respect to this packet
length.  In order to test this, I created a graph "host => myblock => host"
and I am looking at the packet sizes I receive on the host. However, I am
being stymied by the rx_streamer (and/or SEP) which is preventing me from
seeing the packet size output from my block because the streamer is
changing it.  How, do I keep the streamer from changing it?
Rob

On Wed, Jan 13, 2021 at 10:42 AM Wade Fife <wade.fife@ettus.com> wrote:

> The block ultimately determines the size of the packets that are sent out.
> Some block controllers (like the radio) use the spp argument to set the
> length that the block generates. I don't know what's going on in your case,
> but I would suggest looking at how the packet length is being controlled by
> the block. You could also use wireshark to confirm the packet length.
>
> Wade
>
> On Tue, Jan 12, 2021 at 3:47 PM Rob Kossler via USRP-users <
> usrp-users@lists.ettus.com> wrote:
>
>> Hi,
>> I have a custom rfnoc block that I am trying to test with the graph "host
>> => myblock => host".  "myblock" is supposed to output packets of a given
>> size (256) and I am trying to verify that it is doing so.  However, in my
>> simple application to test this graph, I get the following behavior:
>>
>>    - if I don't set "spp" in my rx_streamer args, I get packet length =
>>    1989.
>>    - if I set "spp" in my rx_streamer args, I get the packet length that
>>    I set.
>>    - But, what I really want is to get packets of the same size as the
>>    block output.
>>
>> Is this something that needs to get configured in my block controller?
>> Perhaps there is some packet forwarding policy.  It's a bit confusing to
>> me.  How can I keep the rx_streamer from changing the packet size that is
>> output from my block?
>>
>> Note: all sizes above are in "samples", not "bytes".
>>
>> Rob
>> _______________________________________________
>> USRP-users mailing list
>> USRP-users@lists.ettus.com
>> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
>>
>

--0000000000007f3c3105b8ca0e7b
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr">Hi Wade,<div>Right. The block controls th=
e packet size.=C2=A0 But, I am attempting to verify that my block is actual=
ly behaving properly with respect to this packet length.=C2=A0 In order to =
test this, I created a graph &quot;host =3D&gt; myblock =3D&gt; host&quot; =
and I am looking at the packet sizes I receive on the host. However, I am b=
eing stymied by the rx_streamer (and/or SEP) which is preventing me from se=
eing the packet size output from my block because the streamer is changing =
it.=C2=A0 How, do I keep the streamer from changing it?</div><div>Rob</div>=
</div><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">=
On Wed, Jan 13, 2021 at 10:42 AM Wade Fife &lt;<a href=3D"mailto:wade.fife@=
ettus.com">wade.fife@ettus.com</a>&gt; wrote:<br></div><blockquote class=3D=
"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(2=
04,204,204);padding-left:1ex"><div dir=3D"ltr"><div>The block ultimately de=
termines the size of the packets that are sent out. Some block controllers =
(like the radio) use the spp argument to set the length that the block gene=
rates. I don&#39;t know what&#39;s going on in your case, but I would sugge=
st looking at how the packet length is being controlled by the block. You c=
ould also use wireshark to confirm the packet length.</div><div><br></div><=
div>Wade<br></div></div><br><div class=3D"gmail_quote"><div dir=3D"ltr" cla=
ss=3D"gmail_attr">On Tue, Jan 12, 2021 at 3:47 PM Rob Kossler via USRP-user=
s &lt;<a href=3D"mailto:usrp-users@lists.ettus.com" target=3D"_blank">usrp-=
users@lists.ettus.com</a>&gt; wrote:<br></div><blockquote class=3D"gmail_qu=
ote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,20=
4);padding-left:1ex"><div dir=3D"ltr">Hi,<br><div>I have a custom rfnoc blo=
ck that I am trying to test with the graph &quot;host =3D&gt; myblock =3D&g=
t; host&quot;.=C2=A0 &quot;myblock&quot; is supposed to output packets of a=
 given size (256) and I am trying to verify that it is doing so.=C2=A0 Howe=
ver, in my simple application to test this graph, I get the following behav=
ior:</div><div><ul><li>if I don&#39;t set &quot;spp&quot; in my rx_streamer=
 args, I get packet length =3D 1989.</li><li>if I set &quot;spp&quot; in my=
 rx_streamer args, I get the packet length that I set.=C2=A0</li><li>But, w=
hat I really want is to get packets of the same size as the block output.</=
li></ul><div>Is this something that needs to get configured in my block con=
troller?=C2=A0 Perhaps there is some packet forwarding policy.=C2=A0 It&#39=
;s a bit confusing to me.=C2=A0 How can I keep the rx_streamer from changin=
g=C2=A0the packet size that is output from my block?</div></div><div><br></=
div><div>Note: all sizes above are in &quot;samples&quot;, not &quot;bytes&=
quot;.</div><div><br></div><div>Rob</div></div>
_______________________________________________<br>
USRP-users mailing list<br>
<a href=3D"mailto:USRP-users@lists.ettus.com" target=3D"_blank">USRP-users@=
lists.ettus.com</a><br>
<a href=3D"http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.c=
om" rel=3D"noreferrer" target=3D"_blank">http://lists.ettus.com/mailman/lis=
tinfo/usrp-users_lists.ettus.com</a><br>
</blockquote></div>
</blockquote></div></div>

--0000000000007f3c3105b8ca0e7b--


--===============0883050702324322510==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============0883050702324322510==--

