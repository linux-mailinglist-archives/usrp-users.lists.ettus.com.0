Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 342E72870FB
	for <lists+usrp-users@lfdr.de>; Thu,  8 Oct 2020 10:56:21 +0200 (CEST)
Received: from [::1] (port=46956 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1kQRij-0007vP-0j; Thu, 08 Oct 2020 04:56:17 -0400
Received: from mail-ed1-f51.google.com ([209.85.208.51]:38287)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
 (Exim 4.93) (envelope-from <emil.bjelski@gmail.com>)
 id 1kQRif-0007rC-I2
 for usrp-users@lists.ettus.com; Thu, 08 Oct 2020 04:56:13 -0400
Received: by mail-ed1-f51.google.com with SMTP id i5so5021481edr.5
 for <usrp-users@lists.ettus.com>; Thu, 08 Oct 2020 01:55:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=/c7kx0vHPNdaRyO1z9wD+QxIwVgEmPXxUIk17XOZ/X8=;
 b=WeI/Rqo6NUkXrFTgQp6Zv+j7GY8BIyqBHjBIA7ieAbvTYTUHBXzfqx+3BN/8sYNSZ9
 hBAWQaBfkvOyy/ACed+nhEGkGlcx+JsOey3xT9DtMazryfqxiKB31CdL6LH2QSpldWjQ
 ZyHqw8e5m869kOYlGwBTJ4fyxwerlKwqFDloEyDBgEDGuoNOdNyWWi+99iYZAeryYpyE
 i6oxPI0U5mjFBBks1ASH055FfLYvAxSFo0nZNAOl3hN7mwIitWjWQc3xi9KT6AsFTa4e
 NvuxXIMXUIWpGML58YasVq2TjKsd3PXloAG3LolRpoH+TSC/Uk55LDXt+Fqdu/M0t9lD
 sW1A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=/c7kx0vHPNdaRyO1z9wD+QxIwVgEmPXxUIk17XOZ/X8=;
 b=fzVuHuH5UhDPpv2f1/QHAl0Hwp74TuMLYnv27PllSeY4Tu5TdNxqjo5bEohRn4Rjhz
 H1lJB9c4SJEy6h2AzecVFdTpjK4kkV4ai/t2jlogCVs2MPVLcsfqbMHUxvB/EVHMG3Uj
 fYKok1TItxVwovVThlJn2dP02eGJ471Hb6MjhogvikdTBYbaVoHv1WxfBLxAl9gwC6+r
 6kJUxELi+g+05eUtwhfzSA06YU+7TE3VZmCEleNRwvq3avyZ0/JBhBVCLbcuwOo6hpk3
 w28w0v35FZgoaAd2zWKbb90TpBi7NdjrIwlvLRDFQPuwFRr2bYx5xgYyUW6tJ3JLh3sm
 0xhA==
X-Gm-Message-State: AOAM531uqQvy54eDvWFb14LEBSIySpub1cJNNbzHTVYpf4sHCncRr2lU
 CCxc6fKxZHHcKHRENQOgPCD7dD7f7HUAqKKxRvI=
X-Google-Smtp-Source: ABdhPJzEcdg4kdpsWC5uCWq0nxR+V43k8frgm2M/3Qb1ZAbsJnRmJu5nAQEMs/y5rGWoSI+5U/YtFqIWWr4S3rxBhfI=
X-Received: by 2002:a50:eb0a:: with SMTP id y10mr8187446edp.89.1602147332539; 
 Thu, 08 Oct 2020 01:55:32 -0700 (PDT)
MIME-Version: 1.0
References: <CADrptxWYb5Mf83FoQF05PhhH=-r=wU5VTF+v7brk3Pdom3cxGw@mail.gmail.com>
 <CAB__hTQ1Kcw_+2r9FCoWK00zGOttMPPaNQg5=m0_s-LiMaUYcQ@mail.gmail.com>
In-Reply-To: <CAB__hTQ1Kcw_+2r9FCoWK00zGOttMPPaNQg5=m0_s-LiMaUYcQ@mail.gmail.com>
Date: Thu, 8 Oct 2020 10:55:21 +0200
Message-ID: <CADrptxXbGuMeHDisUCxu8Xb++8Uagc+tmwgrG8aLOzbOcSmOQw@mail.gmail.com>
To: Rob Kossler <rkossler@nd.edu>
Cc: USRP Users <usrp-users@lists.ettus.com>
Subject: Re: [USRP-users] RFNOC REPLAY streaming to two UBX
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
From: Emil Bjelski via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Emil Bjelski <emil.bjelski@gmail.com>
Content-Type: multipart/mixed; boundary="===============8432818587902420597=="
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

--===============8432818587902420597==
Content-Type: multipart/alternative; boundary="000000000000a2473b05b124feea"

--000000000000a2473b05b124feea
Content-Type: text/plain; charset="UTF-8"

Hi Rob,
Thank you once again for answering my question!

I have one more question?

Did you change anything in the default FPGA image, in order to be able to
sustain a maximum 125 MS/s for 4 channels on N310, or 200 MS/s for 2
channels on  X310?

By looking into x310_rfnoc_image_core.yml and the same is for
n310_rfnoc_image_core.yml, I can notice that replay is connected over the
crossbar to DUC.
The Connection would look something like
PCIe -> CrossBarSwitch ->* Replay -> CrossBarSwitch *-> DUC -> Radio.


I can imagine that it would be more efficient to connect Replay directly to
the DUC.
PCIe -> CrossBarSwitch ->* Replay -> DUC -*> Radio.

However, I am not sure, would  that work with the new design due to the
clock domain crossings?

Kind Regards,

EMil

On Tue, Oct 6, 2020 at 3:40 PM Rob Kossler <rkossler@nd.edu> wrote:

> Hi Emil,
> With UHD 4.0, this works.  And, the latest FPGA images from Ettus include
> the Replay block on the X310 (in the past, this was just for the N310) so
> you don't even have to build your own image. And, the latest FPGA images
> provide access to the full 1GB ram such that you could store arb waveforms
> for 2 channels with memory depth of 125M samps for each channel.
>
> I verified that I could play 4 channels at 125 MS/s from the UHD 4.0
> Replay block on the N310. I believe that I also verified 2 channels at 200
> MS/s on the X310, but I don't remember for certain.
>
> Rob
>
> On Tue, Oct 6, 2020 at 7:00 AM Emil Bjelski via USRP-users <
> usrp-users@lists.ettus.com> wrote:
>
>> Hi All,
>>
>> I am investigating the option to stream samples from RFNOC_REPLAY block
>> to two UBX-160 MHz cards with full speed (i.e. 200 Msps for each board).
>> I would also like to support timing control for both of these two
>> transmissions.
>>
>> I am planning to use new RFNOC architecture and UHD 4.0.
>> However, before diving deeper I would like to hear from you if this is
>> possible to be done in straightforward manner with the newest RFNOC
>> developments.
>>
>> I see from the previous posts
>> (
>> http://ettus.80997.x6.nabble.com/USRP-users-transmitting-on-two-channels-with-replay-block-td13915.html
>> ).
>> That with older RFNOC design and UHD 3.xxx streaming from RFNOC was
>> limited to a single UBX radio.
>> Meaning that an FPGA image with 2 Replay blocks was needed in order to
>> stream samples to two UBXs radios.
>>
>> What would be the easiest way to proceed with new UHD 4.0?
>>
>> Thanks in advance on the answers,
>>
>> Emil
>> _______________________________________________
>> USRP-users mailing list
>> USRP-users@lists.ettus.com
>> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
>>
>

--000000000000a2473b05b124feea
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi Rob,<div>Thank you once again for answering my question=
!</div><div><br></div><div>I have one more question?</div><div><br></div><d=
iv><div>Did you change anything=C2=A0in the default FPGA image, in order to=
 be able to sustain a maximum 125 MS/s for 4 channels on N310, or 200 MS/s =
for 2 channels on=C2=A0 X310?</div><div></div></div><div><br></div><div>By =
looking into x310_rfnoc_image_core.yml and the same is for n310_rfnoc_image=
_core.yml, I can notice that replay is connected over the crossbar to DUC.<=
/div><div>The Connection would look something like=C2=A0</div><div>PCIe -&g=
t; CrossBarSwitch -&gt;<b> Replay -&gt; CrossBarSwitch </b>-&gt; DUC -&gt; =
Radio.</div><div><br></div><div><br></div><div>I can imagine that it would =
be more efficient=C2=A0to connect Replay directly to the DUC.=C2=A0</div><d=
iv><div>PCIe -&gt; CrossBarSwitch -&gt;<b> Replay -&gt; DUC -</b>&gt; Radio=
.</div><div></div></div><div><br></div><div>However, I am not sure,=C2=A0wo=
uld=C2=A0 that work with the new design due to the clock domain crossings?<=
/div><div><br></div><div>Kind Regards,</div><div><br></div><div>EMil</div><=
/div><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">O=
n Tue, Oct 6, 2020 at 3:40 PM Rob Kossler &lt;<a href=3D"mailto:rkossler@nd=
.edu">rkossler@nd.edu</a>&gt; wrote:<br></div><blockquote class=3D"gmail_qu=
ote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,20=
4);padding-left:1ex"><div dir=3D"ltr">Hi Emil,<div>With UHD 4.0, this works=
.=C2=A0 And, the latest FPGA images from Ettus include the Replay block on =
the X310 (in the past, this was just for the N310) so you don&#39;t even ha=
ve to build your own image. And, the latest FPGA images provide access to t=
he full 1GB ram such that you could store arb waveforms for 2 channels with=
 memory depth of 125M samps for each channel.=C2=A0=C2=A0</div><div><br></d=
iv><div>I verified that I could play 4 channels at 125 MS/s from the UHD 4.=
0 Replay block on the N310. I believe that I also verified 2 channels at 20=
0 MS/s on the X310, but I don&#39;t remember for certain.</div><div><br></d=
iv><div>Rob</div></div><br><div class=3D"gmail_quote"><div dir=3D"ltr" clas=
s=3D"gmail_attr">On Tue, Oct 6, 2020 at 7:00 AM Emil Bjelski via USRP-users=
 &lt;<a href=3D"mailto:usrp-users@lists.ettus.com" target=3D"_blank">usrp-u=
sers@lists.ettus.com</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quo=
te" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204=
);padding-left:1ex"><div dir=3D"ltr">Hi All,<div><br></div><div>I am invest=
igating the option to stream samples from RFNOC_REPLAY block to two UBX-160=
 MHz cards with full speed (i.e. 200 Msps for each board).</div><div>I woul=
d also like to support timing control for both of these two transmissions.=
=C2=A0</div><div><br></div><div>I am planning to use new RFNOC architecture=
=C2=A0and UHD 4.0.</div><div>However, before diving deeper I would like to =
hear from you if this is possible to be done in straightforward=C2=A0manner=
 with the newest RFNOC developments.=C2=A0</div><div><br></div><div>I see f=
rom the previous posts=C2=A0</div><div>(<a href=3D"http://ettus.80997.x6.na=
bble.com/USRP-users-transmitting-on-two-channels-with-replay-block-td13915.=
html" target=3D"_blank">http://ettus.80997.x6.nabble.com/USRP-users-transmi=
tting-on-two-channels-with-replay-block-td13915.html</a>).</div><div>That w=
ith older RFNOC design and UHD 3.xxx streaming from RFNOC was limited to a =
single UBX radio.=C2=A0</div><div>Meaning that an FPGA image with 2 Replay =
blocks was needed in order to stream samples to two UBXs radios.</div><div>=
<br></div><div>What would be the easiest way to proceed with new UHD 4.0?</=
div><div><br></div><div>Thanks in advance on the answers,</div><div><br></d=
iv><div>Emil</div></div>
_______________________________________________<br>
USRP-users mailing list<br>
<a href=3D"mailto:USRP-users@lists.ettus.com" target=3D"_blank">USRP-users@=
lists.ettus.com</a><br>
<a href=3D"http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.c=
om" rel=3D"noreferrer" target=3D"_blank">http://lists.ettus.com/mailman/lis=
tinfo/usrp-users_lists.ettus.com</a><br>
</blockquote></div>
</blockquote></div>

--000000000000a2473b05b124feea--


--===============8432818587902420597==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============8432818587902420597==--

