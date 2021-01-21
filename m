Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id DAC152FF041
	for <lists+usrp-users@lfdr.de>; Thu, 21 Jan 2021 17:30:05 +0100 (CET)
Received: from [::1] (port=49242 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1l2cqO-0001N4-Nv; Thu, 21 Jan 2021 11:30:00 -0500
Received: from mail-wm1-f47.google.com ([209.85.128.47]:40171)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
 (Exim 4.93) (envelope-from <marcus.mueller@ettus.com>)
 id 1l2cqL-0001EG-Bu
 for usrp-users@lists.ettus.com; Thu, 21 Jan 2021 11:29:57 -0500
Received: by mail-wm1-f47.google.com with SMTP id c127so2055104wmf.5
 for <usrp-users@lists.ettus.com>; Thu, 21 Jan 2021 08:29:37 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=ettus-com.20150623.gappssmtp.com; s=20150623;
 h=subject:to:references:from:message-id:date:user-agent:mime-version
 :in-reply-to:content-language:content-transfer-encoding;
 bh=jH5Y3vuVLQ5WX1nSUaLmhtpX4VbDOfzIvlyzLcZPNTg=;
 b=u5EJfo6cGQBD0lKhJw8HDafgepXCdUwmr1pztsjpibWVqKVFFwnN2TL+WQPe+dk81c
 40BVuxMdaiSyB/v2NAybQVdVCTeMf8PfdmAj7t3G3Fc3CfCxyMFLc30T6n64CLmDm7Hm
 TfqdkgBoEVDQIMKo2SAAlDRwdubiHm6VH0F74i8CJswGzqigcEezsdkNxhL0I6yMpSu0
 HoD3fH8YNHpd+5T4WIGSp33Z/nu4OtdlhtyfKIFD0LoLtZk2gwIwVWJ9gHidJRtRwMPb
 LuOwAp4oHG4NHAKqfUV+copTcKdSjIQKJrRWLKhdQunmgch+qe1FGX9K2hDxCH1uCxD5
 kQSA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=jH5Y3vuVLQ5WX1nSUaLmhtpX4VbDOfzIvlyzLcZPNTg=;
 b=mLblsQdqa5nw613gw/mKkY/OZ+VXaj8xN0UNF8dBOAUbRgmQwjH8k2Gx/BvjfMcnHh
 ndtISGA5vCCAPcfDCmM7x0wWyaQYd+3m2JkiM5WAwG4XT8Ke+g10UEg6KmFHj3HcG2UU
 D7VnEI78Lj/SeROzyKkDa9NrsaX6OeC9oIHBambeIwuXrLRfOtbCul6GQBPk9RCYj1NB
 hnVl5D/FTBQg5dT04BCjNHZUtoHhVbZpsJzlofOWTby+urcwLb+MNUbEnydHzRhUMTpZ
 3HxjL0bxK9qemUY9GkLeIEBKopZS+LWpCUsa0Zt0aSGQqlYOwa1jXkdI1s7sRMKaQhm0
 4Ppw==
X-Gm-Message-State: AOAM533sDPqCy20S+YOnkAQhTvTP6BARpQl2CkpZ7/6wEGIvKDIDRGjn
 F5nK8xGTL9cQal1XaKkDrikVEDYdkyd0trm5
X-Google-Smtp-Source: ABdhPJwYUc6P+fHyegGhrIBfWcXa0ZBVtgPMH2ok/SWGxPgO0PnWXTWr30PKp7BmrPx6aaunBGZOhA==
X-Received: by 2002:a1c:7f83:: with SMTP id a125mr180425wmd.86.1611246555931; 
 Thu, 21 Jan 2021 08:29:15 -0800 (PST)
Received: from [192.168.128.8]
 (HSI-KBW-46-223-162-176.hsi.kabel-badenwuerttemberg.de. [46.223.162.176])
 by smtp.gmail.com with ESMTPSA id h1sm5464514wrr.73.2021.01.21.08.29.15
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Thu, 21 Jan 2021 08:29:15 -0800 (PST)
To: Jeff S <e070832@hotmail.com>, usrp-users <usrp-users@lists.ettus.com>
References: <SN6PR1901MB46884B4D0EBC22B0D4F7CF08A4A10@SN6PR1901MB4688.namprd19.prod.outlook.com>
 <6c457450-6f9e-892b-ac53-5ea7956b7f0b@ettus.com>
 <SN6PR1901MB468884AC8FAC5C9476CC6678A4A10@SN6PR1901MB4688.namprd19.prod.outlook.com>
Message-ID: <420b3f86-ef54-997b-a3d2-302f6db5e3aa@ettus.com>
Date: Thu, 21 Jan 2021 17:29:14 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.6.0
MIME-Version: 1.0
In-Reply-To: <SN6PR1901MB468884AC8FAC5C9476CC6678A4A10@SN6PR1901MB4688.namprd19.prod.outlook.com>
Content-Language: en-US
Subject: Re: [USRP-users] SOB/EOB Burst Mode on X310 Splitting Signal
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
From: =?utf-8?q?Marcus_M=C3=BCller_via_USRP-users?=
 <usrp-users@lists.ettus.com>
Reply-To: =?UTF-8?Q?Marcus_M=c3=bcller?= <marcus.mueller@ettus.com>
Content-Type: text/plain; charset="windows-1252"
Content-Transfer-Encoding: quoted-printable
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

Hi Jeff,

thanks for clarifying!

Yes, that should work. Also, your GR version definitely has support for SOB=
/EOB.

Generally, I'd expect this to work; only misconception I see is that the Si=
nk doesn't
start sending when it sees the EOB; it starts sending at SOB, and stops exp=
ecting and
sending samples to the USRP at EOB.

Could you try replacing your very "spikey" signal with something like a sin=
e, so to see
whether we might be seeing turn of/off behaviour?

Best regards,
Marcus

On 21.01.21 16:34, Jeff S wrote:
> Thanks, Marcus.
> =

> Of course, I forgot the important version information.=A0 I'm currently u=
sing v3.7.13.5.=A0 We
> are also doing some RFNoC work, which we had some issues upgrading a whil=
e back, so we
> were holding off until it matured more.=A0 I'll ask our team if they want=
 to try and upgrade
> to 3.8 again.
> =

> I'm sure my description wasn't clear, so I'll try and clarify a little be=
tter based on
> your feedback.
> =

> I created the Random Source, and it is sending approximately 10,000 sampl=
es to the UHD
> USRP Sink as one message, with a tx_sob at the start and a tx_eob at the =
end.=A0 My thought
> was that the sink would not transmit anything until the EOB was received.=
=A0 The way
> GNURadio seems to be running, I'm getting [noutput_items =3D=3D 4096], so=
 it takes three calls
> to the work function to deliver all 10K samples of one message to the Sin=
k.=A0 I only want
> one burst from the sink of those 10K samples.=A0 What I am receiving seem=
s to be three
> transmissions that make up the one sample.=A0 The length of the three tra=
nsmissions seem to
> correspond to the value of noutput_items I was seeing.
> =

> The mention of 100 ms between bursts was only indicating how fast the mod=
ulator was being
> requested to transmit a single message.=A0 So if I only requested one mes=
sage, there would
> have been one group of three signals seen in the Rx signal.
> =

> Hope that clarified what I was trying to convey a little better.
> =

> Regards,
> Jeff
> =

> =

> =

> -------------------------------------------------------------------------=
-----------------
> *From:* Marcus M=FCller <marcus.mueller@ettus.com>
> *Sent:* Thursday, January 21, 2021 9:06 AM
> *To:* Jeff S <e070832@hotmail.com>; usrp-users <usrp-users@lists.ettus.co=
m>
> *Subject:* Re: [USRP-users] SOB/EOB Burst Mode on X310 Splitting Signal
> =A0
> Hi Jeff,
> =

> which version of GNU Radio are you using? Judging by the looks of your fl=
ow graph it's the
> (now legacy) 3.7, but *if* I remember correctly (it's really been a while=
), the SOB/EOB
> functionality appeared *somewhen* in 3.7.x; it might be worth trying your=
 exact same
> application in GNU Radio 3.8 (or 3.9).
> =

> Conceptually, it's important to note that after tx_sob you need to supply=
 the full burst
> of samples: I think you're doing that, but then again, you say you get th=
ree data bursts
> 100 ms apart, so I'm not sure about that, to be honest. The USRP sink can=
't guess that you
> want three bursts of samples to be sent as one; it starts streaming as fa=
st as you supply
> it data after the SOB, and will tell you you're late or too slow at suppl=
ying data (tG/U
> printed to your console) if you don't give it 10 million samples a second=
, until it gets
> an SOB.
> =

> Best regards,
> Marcus
> =

> =

> On 21.01.21 15:53, Jeff S via USRP-users wrote:
>> I am attempting to use burst mode on an X310.=A0 I'm generating a random=
 signal from one
>> X310 and receiving it on another.=A0 My simple flowgraph is:
>> =

>> I can see the tx_sob and tx_eob tags, set to true, from the time sink:
>> =

>> =

>> where I verify that I can see the EOB, followed by a new SOB in the next=
 message (both set
>> to true, according to
>> https://www.gnuradio.org/doc/doxygen/classgr_1_1uhd_1_1usrp__sink.html
> <https://www.gnuradio.org/doc/doxygen/classgr_1_1uhd_1_1usrp__sink.html>
>> <https://www.gnuradio.org/doc/doxygen/classgr_1_1uhd_1_1usrp__sink.html
> <https://www.gnuradio.org/doc/doxygen/classgr_1_1uhd_1_1usrp__sink.html>>=
).=A0 But when I am
>> receiving the signal, the message seems to be broken up into three diffe=
rent transmissions
>> instead of one burst:
>> =

>> =

>> =

>> I'm transmitting a message every 100 ms, which seems to correspond to th=
e start of the
>> three messages.
>> =

>> Analyzing the modulator in a debugger indicates that there are three tim=
es that the work
>> function is called to build the message, which may correspond to the thr=
ee messages seen
>> in the signal, but I'm not sure why the tx_sob and tx_eob tags are not b=
eing followed.=A0
>> Maybe I may just have a major misunderstanding of how burst mode works.
>> =

>> Any ideas on what I may be doing wrong?
>> =

>> Thanks,
>> Jeff
>> =

>> _______________________________________________
>> USRP-users mailing list
>> USRP-users@lists.ettus.com
>> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
> <http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com>
>> =


_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
