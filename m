Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 0B7CF28F2B4
	for <lists+usrp-users@lfdr.de>; Thu, 15 Oct 2020 14:53:11 +0200 (CEST)
Received: from [::1] (port=39456 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1kT2kn-0008OA-5w; Thu, 15 Oct 2020 08:53:09 -0400
Received: from mail-ej1-f54.google.com ([209.85.218.54]:34655)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
 (Exim 4.93) (envelope-from <martin.braun@ettus.com>)
 id 1kT2kj-0008HK-RM
 for usrp-users@lists.ettus.com; Thu, 15 Oct 2020 08:53:05 -0400
Received: by mail-ej1-f54.google.com with SMTP id u8so3486926ejg.1
 for <usrp-users@lists.ettus.com>; Thu, 15 Oct 2020 05:52:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=ettus-com.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=+WuhjIxr/ds6C4+WxpAuO6fboq/HcEAOGhxdHd7E5lw=;
 b=jaleX9k8xYGNi/WQY+m7MWKdUEAe3QbOsKJ3wGtXJOAAF4jpNfQTUc5yS2mQOgKOn3
 F1mDp6cIqwx522LiO/w3mLtt8ew/58Wj39pIzO+qgqatqj4TfMyNzy6FL7udc+AX3J5i
 IO++064iIZkHCnDD/XFL+hfLvZItTT916uoo3eT44LXhMvLBKjc7+VBzT5mYFKh33Y/G
 /xqbl9Imjb5a6Ya6AcWngNXtPjFx0Qsgkcu9pXbnLFVaG7b77o6+7mWKdbA8FZ8j6ekg
 7YPx5tA2MkqEQTjr9ueH9Jl7k3YZl6Gjz2fK7jMXZmBRYYBkaa+tPAf5/XPt1MZW0k4u
 3HOA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=+WuhjIxr/ds6C4+WxpAuO6fboq/HcEAOGhxdHd7E5lw=;
 b=IVrkiUeA2hwmbfdbXZacj9LSb+khzyKMsKoLM65dt1E2x5V7Z/XBiUXU5jfFfCUI/6
 Blic+ONVfum38c4PZvcIAvegCzxUdRst0tX0RyXOwf6/Eol8InAJlSxfx+QC1+rG6DOd
 ShQNn4O8MWg5kbRXpsUuAkTXkriiooYzIVMj6bnJ9r/vVnPex8/KdhOyA1QKkwk+k4Gj
 O/CuMhNBY+QRLVbjwAy0ARVCwd3QkU3nfO3ZnaCBVkHbw8g12H/fCpAgngBZlcgXJtqm
 iPHNjFxw1C+I7bPE6541auVUm+YdTSkd86BwMXw6Sl459ghcw36/sQCOmWWboK0g7cLh
 Emow==
X-Gm-Message-State: AOAM532kw/fxYxSs1+RhGw9wbuz05ULzcec460VUloL1ZH36cXe9rDEu
 kfbdrueeXw5sEMoMTevmRZKQQpPgOK090fOZPlDOtndL4YiMfw==
X-Google-Smtp-Source: ABdhPJybnrQX33/HNOpSkjh7ztr7TpnyZkfNSuGMHKIwjln9wQPPcnVWGCxWJie5XoOQZFesLGLPAlTfJ1wOq07N4Vo=
X-Received: by 2002:a17:906:d8e:: with SMTP id
 m14mr4481763eji.448.1602766344798; 
 Thu, 15 Oct 2020 05:52:24 -0700 (PDT)
MIME-Version: 1.0
References: <DM6PR12MB306787C9B650A03D7A2CAF878C320@DM6PR12MB3067.namprd12.prod.outlook.com>
 <1B286BD5-53D8-411C-84CC-0E0B6F2962ED@gmail.com>
 <DM6PR12MB3067482AEC0E9D141AC2FE2C8C320@DM6PR12MB3067.namprd12.prod.outlook.com>
 <5F7375B7.60104@gmail.com>
 <DM6PR12MB3067CA6916624B9C2B8528328C320@DM6PR12MB3067.namprd12.prod.outlook.com>
 <5F737BA7.1050009@gmail.com>
 <DM6PR12MB3067DE67D641B09806F8411A8C320@DM6PR12MB3067.namprd12.prod.outlook.com>
In-Reply-To: <DM6PR12MB3067DE67D641B09806F8411A8C320@DM6PR12MB3067.namprd12.prod.outlook.com>
Date: Thu, 15 Oct 2020 14:52:13 +0200
Message-ID: <CAFOi1A6PTVCjr-7aXSaxOAArC6g9ZYwgb6sa0NMCdj5R0Mj1tQ@mail.gmail.com>
To: Mark Koenig <mark.koenig@iubelttechnologies.com>
Subject: Re: [USRP-users] TWINRX Gain
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
From: Martin Braun via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Martin Braun <martin.braun@ettus.com>
Cc: "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============6684315250140466010=="
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

--===============6684315250140466010==
Content-Type: multipart/alternative; boundary="000000000000a3e1a105b1b51ee2"

--000000000000a3e1a105b1b51ee2
Content-Type: text/plain; charset="UTF-8"

Just an FYI, all of our USRPs define 0 dB gain as the smallest overall gain
that is supported, and then it goes up. TwinRX has a wide input range of
amplitudes, so much of that 90 dB is from attenuators that enable you to
nicely see the +10 dBm input signals. So gain range != amplification, it's
the combo of all gain-varying components.

--M

On Tue, Sep 29, 2020 at 8:30 PM Mark Koenig via USRP-users <
usrp-users@lists.ettus.com> wrote:

> I get it, thanks for the block diagrams.  I will look into doing a lab
> test with a calibrated source.
> ------------------------------
> *From:* Marcus D. Leech <patchvonbraun@gmail.com>
> *Sent:* Tuesday, September 29, 2020 2:23 PM
> *To:* Mark Koenig <mark.koenig@iubelttechnologies.com>
> *Cc:* usrp-users@lists.ettus.com <usrp-users@lists.ettus.com>
> *Subject:* Re: [USRP-users] TWINRX Gain
>
> On 09/29/2020 02:02 PM, Mark Koenig wrote:
>
> Yes, I understand gain varies with temperature and frequency, I just wasnt
> sure if there was any receive chain analysis performed with the daughtecard
> to give the developer an idea of what type of gain is provided over the
> attenuation range at various frequencies.  I am not too concerned about
> tenths of dBs....I was just interested in what the actual gain range
> provided by the card is.
>
> Thanks
>
> Mark
> ------------------------------
>
> If you look at the first page of this:
>
> https://files.ettus.com/schematics/twinrx/TwinRX%20RF%20Board%20Rev%20D.pdf
>
> You can see the overall block diagram.  You can also see several PE43503
> attenuators, sprinkled among several different MMIC amplifiers, and
>  various different RF pathways through switches and filters depending on
> band.   It would be hard for me to unwind all of that and give you
>  a definitive answer.
>
> Even for the IF processing, there are two different IFs, depending on the
> frequency band--again with various distributions of gain and
>   attenuation (either explicit attenuation, or attenuation via
> filtering)--all of which have considerable uncertainty--due to
> batch-to-batch
>   variability and temperature effects.   I'm fairly sure that even the
> designer of the board couldn't tell you, for any given board configuration
>   what the actual gain measured between the antenna input an the ADC input
> actually was, with better than 5dB confidence.  Which is where
>   calibration comes in.
>
> https://files.ettus.com/schematics/twinrx/TwinRX%20IF%20Board%20Rev%20C.pdf
>
> In a laboratory instrument, like a spectrum analyser, all of this is
> painstakingly calibrated at the factory, usually using lookup tables (or the
>   analog-era equivalent), based on well-characterized calibration
> sources.  So when you set the gain level on the front-panel of the device
>   to some dB value, you'll actually get that value at the measurement
> point and when you look at the measurement on the display and it
>   says -70dBm, it's actually -70dBm at the input terminal.  SDRs aren't
> that, typically.  Although one could build a fairly nice lab instrument
>   *around* an SDR, using all the aforementioned calibration exercises, etc.
>
> Now, this all, I admit, sounds a tad "lecturey".  I know you probably know
> all of this, but many on the list don't, or perhaps haven't thought about
>   it much.  So, I'm prompted to deliver this, or a very similar "lecture"
> a few times a year due to similar queries to yours.
> _______________________________________________
> USRP-users mailing list
> USRP-users@lists.ettus.com
> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
>

--000000000000a3e1a105b1b51ee2
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Just an FYI, all of our USRPs define 0 dB gain as the=
 smallest overall gain that is supported, and then it goes up. TwinRX has a=
 wide input range of amplitudes, so much of that 90 dB is from attenuators =
that enable you to nicely see the +10 dBm input signals. So gain range !=3D=
 amplification, it&#39;s the combo of all gain-varying components.</div><di=
v><br></div><div>--M<br></div></div><br><div class=3D"gmail_quote"><div dir=
=3D"ltr" class=3D"gmail_attr">On Tue, Sep 29, 2020 at 8:30 PM Mark Koenig v=
ia USRP-users &lt;<a href=3D"mailto:usrp-users@lists.ettus.com">usrp-users@=
lists.ettus.com</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" s=
tyle=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);pad=
ding-left:1ex">




<div dir=3D"ltr">
<div>
<div id=3D"gmail-m_8691868994375490405appendonsend" style=3D"font-family:Ca=
libri,Arial,Helvetica,sans-serif;font-size:12pt;color:rgb(0,0,0)">
</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif;font-size:12pt=
;color:rgb(0,0,0)">
I get it, thanks for the block diagrams.=C2=A0 I will look into doing a lab=
 test with a calibrated source.</div>
<hr style=3D"display:inline-block;width:98%">
<div id=3D"gmail-m_8691868994375490405divRplyFwdMsg" dir=3D"ltr"><font styl=
e=3D"font-size:11pt" face=3D"Calibri, sans-serif" color=3D"#000000"><b>From=
:</b> Marcus D. Leech &lt;<a href=3D"mailto:patchvonbraun@gmail.com" target=
=3D"_blank">patchvonbraun@gmail.com</a>&gt;<br>
<b>Sent:</b> Tuesday, September 29, 2020 2:23 PM<br>
<b>To:</b> Mark Koenig &lt;<a href=3D"mailto:mark.koenig@iubelttechnologies=
.com" target=3D"_blank">mark.koenig@iubelttechnologies.com</a>&gt;<br>
<b>Cc:</b> <a href=3D"mailto:usrp-users@lists.ettus.com" target=3D"_blank">=
usrp-users@lists.ettus.com</a> &lt;<a href=3D"mailto:usrp-users@lists.ettus=
.com" target=3D"_blank">usrp-users@lists.ettus.com</a>&gt;<br>
<b>Subject:</b> Re: [USRP-users] TWINRX Gain</font>
<div>=C2=A0</div>
</div>
<div style=3D"background-color:rgb(255,255,255)">
<div>On 09/29/2020 02:02 PM, Mark Koenig wrote:<br>
</div>
<blockquote type=3D"cite">
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif;font-size:12pt=
;color:rgb(0,0,0)">
Yes, I understand gain varies with temperature and frequency, I just wasnt =
sure if there was any receive chain analysis performed with the daughtecard=
 to give the developer an idea of what type of gain is provided over the at=
tenuation range at various frequencies.=C2=A0
 I am not too concerned about tenths of dBs....I was just interested in wha=
t the actual gain range provided by the card is.</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif;font-size:12pt=
;color:rgb(0,0,0)">
<br>
</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif;font-size:12pt=
;color:rgb(0,0,0)">
Thanks</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif;font-size:12pt=
;color:rgb(0,0,0)">
<br>
</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif;font-size:12pt=
;color:rgb(0,0,0)">
Mark</div>
<hr style=3D"display:inline-block;width:98%">
<br>
</blockquote>
If you look at the first page of this:<br>
<br>
<a href=3D"https://files.ettus.com/schematics/twinrx/TwinRX%20RF%20Board%20=
Rev%20D.pdf" target=3D"_blank">https://files.ettus.com/schematics/twinrx/Tw=
inRX%20RF%20Board%20Rev%20D.pdf</a><br>
<br>
You can see the overall block diagram.=C2=A0 You can also see several PE435=
03 attenuators, sprinkled among several different MMIC amplifiers, and<br>
=C2=A0various different RF pathways through switches and filters depending =
on band.=C2=A0=C2=A0 It would be hard for me to unwind all of that and give=
 you<br>
=C2=A0a definitive answer.<br>
<br>
Even for the IF processing, there are two different IFs, depending on the f=
requency band--again with various distributions of gain and<br>
=C2=A0 attenuation (either explicit attenuation, or attenuation via filteri=
ng)--all of which have considerable uncertainty--due to batch-to-batch<br>
=C2=A0 variability and temperature effects.=C2=A0=C2=A0 I&#39;m fairly sure=
 that even the designer of the board couldn&#39;t tell you, for any given b=
oard configuration<br>
=C2=A0 what the actual gain measured between the antenna input an the ADC i=
nput actually was, with better than 5dB confidence.=C2=A0 Which is where<br=
>
=C2=A0 calibration comes in.<br>
<br>
<a href=3D"https://files.ettus.com/schematics/twinrx/TwinRX%20IF%20Board%20=
Rev%20C.pdf" target=3D"_blank">https://files.ettus.com/schematics/twinrx/Tw=
inRX%20IF%20Board%20Rev%20C.pdf</a><br>
<br>
In a laboratory instrument, like a spectrum analyser, all of this is painst=
akingly calibrated at the factory, usually using lookup tables (or the<br>
=C2=A0 analog-era equivalent), based on well-characterized calibration sour=
ces.=C2=A0 So when you set the gain level on the front-panel of the device<=
br>
=C2=A0 to some dB value, you&#39;ll actually get that value at the measurem=
ent point and when you look at the measurement on the display and it<br>
=C2=A0 says -70dBm, it&#39;s actually -70dBm at the input terminal.=C2=A0 S=
DRs aren&#39;t that, typically.=C2=A0 Although one could build a fairly nic=
e lab instrument<br>
=C2=A0 *around* an SDR, using all the aforementioned calibration exercises,=
 etc.<br>
<br>
Now, this all, I admit, sounds a tad &quot;lecturey&quot;.=C2=A0 I know you=
 probably know all of this, but many on the list don&#39;t, or perhaps have=
n&#39;t thought about<br>
=C2=A0 it much.=C2=A0 So, I&#39;m prompted to deliver this, or a very simil=
ar &quot;lecture&quot; a few times a year due to similar queries to yours.<=
br>
</div>
</div>
</div>

_______________________________________________<br>
USRP-users mailing list<br>
<a href=3D"mailto:USRP-users@lists.ettus.com" target=3D"_blank">USRP-users@=
lists.ettus.com</a><br>
<a href=3D"http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.c=
om" rel=3D"noreferrer" target=3D"_blank">http://lists.ettus.com/mailman/lis=
tinfo/usrp-users_lists.ettus.com</a><br>
</blockquote></div>

--000000000000a3e1a105b1b51ee2--


--===============6684315250140466010==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============6684315250140466010==--

