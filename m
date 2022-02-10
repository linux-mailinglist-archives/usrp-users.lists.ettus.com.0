Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 266844B1700
	for <lists+usrp-users@lfdr.de>; Thu, 10 Feb 2022 21:34:14 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 6EB1C38427E
	for <lists+usrp-users@lfdr.de>; Thu, 10 Feb 2022 15:34:13 -0500 (EST)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=ettus-com.20210112.gappssmtp.com header.i=@ettus-com.20210112.gappssmtp.com header.b="V+zV2+Ib";
	dkim-atps=neutral
Received: from mail-yb1-f180.google.com (mail-yb1-f180.google.com [209.85.219.180])
	by mm2.emwd.com (Postfix) with ESMTPS id 2734E384205
	for <usrp-users@lists.ettus.com>; Thu, 10 Feb 2022 15:33:20 -0500 (EST)
Received: by mail-yb1-f180.google.com with SMTP id m6so18872764ybc.9
        for <usrp-users@lists.ettus.com>; Thu, 10 Feb 2022 12:33:20 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ettus-com.20210112.gappssmtp.com; s=20210112;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=U3k34fdevyCrJHqlK3YpE5zGoWo8t31pCXU7y5coMuE=;
        b=V+zV2+IbEYBPxrBKjXxjFqO58GnN7McrFUKi3qRNMRhk/FCixkn5z78I2Ur78PNNso
         cep0nR6FIELto+91vSBcerX/VIxku+3M4Bv1slFg1CxhoW9V+PCUqOd4dO2CKOT3Mjym
         BCQtMoZwxIgFCl26+mguIEYPB6yWE8kRwzMr60N43WR/RiHnHZ7UaAgyuflZ4nKMCnaV
         J/+SkzBrycnE6KQDsvvNqvyvdCqjg0ZK6cL+WugJLkvvdGmkPgcBiXGRhTS5RE7dQ+A0
         4Zm8rxhGxtHca5x774FHArszIEtuzH2C5bfK2vufP6LerGR9lKr9LhzuJSb8DufN7OLw
         iO+A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=U3k34fdevyCrJHqlK3YpE5zGoWo8t31pCXU7y5coMuE=;
        b=uqVQ8rGymQasgH1o1alY66P8hSH7RdKOHahyqdz0+sE4xqQtmk8ZRENPhryXNWg2VH
         VCFshiIIRIXYFcKyCAqW/WQEGK7MSqcblUd1WLuGi3rsgstJJVuL3BiXz7QXc+wfbwxm
         +LbuDLTjlcHuGk96TtSm2qVMT2m+HcFA6AjWl/MMRy0hfKJ9o9MgN+jCX5734BKrbIAY
         GgKgK7ul0xURyj7t7LxqSACzwSDpVkqgSi8Ee8VkTJxx5rdxBeEVZM44k+zSv6vGBEtT
         c2kiu9exdx9bhiCaqQ5NDunE+/3zUsqDVkE7JBdV3PaYEuIdnAYaIZRfcvDb4GYzcY92
         IycQ==
X-Gm-Message-State: AOAM531LZAJAaIdD9qXwfbcyHGKxwMeolF9NCXBykMETpRTNYUF3cvvd
	6Y0WqEKFX/GOh2zJRpxEUhRgyT/DYUzSvtKiy1Ogrpwr
X-Google-Smtp-Source: ABdhPJyjbmV4Qx1UxdspZkXql9PrloC6wfR0FBEyP/cbzIFVIiX4b/McrK8QRilyBveMJ54hB64H8ZZpR/gyE/DqMsM=
X-Received: by 2002:a81:eb14:: with SMTP id n20mr9238875ywm.200.1644525200125;
 Thu, 10 Feb 2022 12:33:20 -0800 (PST)
MIME-Version: 1.0
References: <CAB__hTSyT==Q_Nfn8xgfT-FBuutZ_ieD_CKuc-PdA3xm6KHs4w@mail.gmail.com>
 <CAL7q81tArWo++HCSyo_MGXpThqmdBvt94r-RJccqT3+bhh0PGw@mail.gmail.com>
 <CAFche=gKiRGtNmHE5L=59fbqEdKCvypFEwito3cgXg8qtcL-gA@mail.gmail.com> <CAB__hTQUT8mTDRDAeA-b_mJBmpF=h0UMDFLOgf0XKaJ01ZWbzg@mail.gmail.com>
In-Reply-To: <CAB__hTQUT8mTDRDAeA-b_mJBmpF=h0UMDFLOgf0XKaJ01ZWbzg@mail.gmail.com>
From: Wade Fife <wade.fife@ettus.com>
Date: Thu, 10 Feb 2022 14:33:05 -0600
Message-ID: <CAFche=iXkkR1C9AEXbrytuFkiSUCYL2fpwO7Ufq_VdKoQi7nfA@mail.gmail.com>
To: Rob Kossler <rkossler@nd.edu>
Message-ID-Hash: 3VQIXOIOUZCTSDHBCFJXFYJKLINF4QD6
X-Message-ID-Hash: 3VQIXOIOUZCTSDHBCFJXFYJKLINF4QD6
X-MailFrom: wade.fife@ettus.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: usrp-users <usrp-users@lists.ettus.com>
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Replay block on E320 data rate
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/3VQIXOIOUZCTSDHBCFJXFYJKLINF4QD6/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============0392828723276299534=="

--===============0392828723276299534==
Content-Type: multipart/alternative; boundary="00000000000060c42b05d7afdcbe"

--00000000000060c42b05d7afdcbe
Content-Type: text/plain; charset="UTF-8"

I would start by double checking the YAML. For example, make sure the
MEM_ADDR_W parameter is correct (for E320 it should be 31, for 2 GiB) and
make sure each in/out port is connected the way you want.

If you share the YAML with me, I'm happy to take a look to see if anything
jumps out at me.

Thanks,

Wade

On Thu, Feb 10, 2022 at 10:34 AM Rob Kossler <rkossler@nd.edu> wrote:

> Thanks Wade,
> I am helping Ofer Saferman with an issue with the E320 and a 4-port replay
> block. Apart from your response (& Jonathon's response) indicating that
> data rates should not be an issue, I have also come to the same conclusion
> by trying some tests.  After these tests, the issue now seems to be that
> Replay ports 0 and 1 work as expected, but Replay ports 2 and 3 do not.  I
> know that a 4-port Replay block works fine on an N310 because I use it
> often.  So, I'm wondering why we have this issue on the E320.  Perhaps the
> E320 yml file is wrong - I am still waiting to take a look at this.  I have
> also requested that Ofer run the stock example
> "rfnoc_replay_samples_from_file" and use the --replay_chan option to prove
> that ports 0 and 1 work fine but ports 2 and 3 do not.
>
> Anyway, if you have any suggestions, I'd love to hear them.
> Rob
>
>
> On Thu, Feb 10, 2022 at 11:17 AM Wade Fife <wade.fife@ettus.com> wrote:
>
>> The E320's DRAM is pretty fast. It should have no problem keeping up for
>> your use case.
>>
>> Wade
>>
>> On Thu, Feb 10, 2022 at 1:56 AM Jonathon Pendlum <
>> jonathon.pendlum@ettus.com> wrote:
>>
>>> Hi Rob,
>>>
>>> As long as the DRAM can keep up throughput wise, you should be fine in
>>> that configuration. I think the E320 has a BIST you can run that reports
>>> the throughput.
>>>
>>> Jonathon
>>>
>>> On Wed, Feb 9, 2022 at 3:29 PM Rob Kossler <rkossler@nd.edu> wrote:
>>>
>>>> Hi,
>>>> I am wondering if there are any data rate restrictions for using the
>>>> Replay block on the E320.  I have a 4-port Replay block for simultaneously
>>>> playing two streams to the 2-port Radio and capturing two streams from the
>>>> 2-port Radio.  If the master_clock_rate is equal to the sample rate, does
>>>> this imply that I will have a data throughput issue?
>>>> Rob
>>>> _______________________________________________
>>>> USRP-users mailing list -- usrp-users@lists.ettus.com
>>>> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>>>>
>>> _______________________________________________
>>> USRP-users mailing list -- usrp-users@lists.ettus.com
>>> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>>>
>>

--00000000000060c42b05d7afdcbe
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>I would start by double checking the YAML. For exampl=
e, make sure the MEM_ADDR_W parameter is correct (for E320 it should be 31,=
 for 2 GiB) and make sure each in/out port is connected the way you want.<b=
r></div><div><br></div><div>If you share the YAML with me, I&#39;m happy to=
 take a look to see if anything jumps out at me.<br></div><div><br></div><d=
iv>Thanks,</div><div><br></div><div>Wade<br></div><br><div class=3D"gmail_q=
uote"><div dir=3D"ltr" class=3D"gmail_attr">On Thu, Feb 10, 2022 at 10:34 A=
M Rob Kossler &lt;<a href=3D"mailto:rkossler@nd.edu">rkossler@nd.edu</a>&gt=
; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px=
 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex"><div di=
r=3D"ltr"><div dir=3D"ltr">Thanks Wade,<div>I am helping Ofer Saferman with=
 an issue with the E320 and a 4-port replay block. Apart from your response=
 (&amp; Jonathon&#39;s response) indicating that data rates should not be a=
n issue, I have also come to the same conclusion by trying some tests.=C2=
=A0 After these tests, the issue now seems to be that Replay ports 0 and 1 =
work as expected, but Replay ports 2 and 3 do not.=C2=A0 I know that a 4-po=
rt Replay block works fine on an N310 because I use it often.=C2=A0 So, I&#=
39;m wondering why we have this issue on the E320.=C2=A0 Perhaps the E320 y=
ml file is wrong - I am still waiting to take a look at this.=C2=A0 I have =
also requested that Ofer run the stock example &quot;rfnoc_replay_samples_f=
rom_file&quot; and use the --replay_chan option to prove that ports 0 and 1=
 work fine but ports 2 and 3 do not.</div><div><br></div><div>Anyway, if yo=
u have any suggestions, I&#39;d love to hear them.</div><div>Rob</div><div>=
<br></div></div><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gm=
ail_attr">On Thu, Feb 10, 2022 at 11:17 AM Wade Fife &lt;<a href=3D"mailto:=
wade.fife@ettus.com" target=3D"_blank">wade.fife@ettus.com</a>&gt; wrote:<b=
r></div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex=
;border-left:1px solid rgb(204,204,204);padding-left:1ex"><div dir=3D"ltr">=
<div>The E320&#39;s DRAM is pretty fast. It should have no problem keeping =
up for your use case.</div><div><br></div><div>Wade<br></div></div><br><div=
 class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Thu, Feb 10=
, 2022 at 1:56 AM Jonathon Pendlum &lt;<a href=3D"mailto:jonathon.pendlum@e=
ttus.com" target=3D"_blank">jonathon.pendlum@ettus.com</a>&gt; wrote:<br></=
div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;bor=
der-left:1px solid rgb(204,204,204);padding-left:1ex"><div dir=3D"ltr">Hi R=
ob,<div><br></div><div>As long as the DRAM can keep up throughput wise, you=
 should be fine in that configuration. I think the E320 has a BIST you can =
run that reports the throughput.=C2=A0</div><div><br></div><div>Jonathon</d=
iv></div><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_att=
r">On Wed, Feb 9, 2022 at 3:29 PM Rob Kossler &lt;<a href=3D"mailto:rkossle=
r@nd.edu" target=3D"_blank">rkossler@nd.edu</a>&gt; wrote:<br></div><blockq=
uote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1p=
x solid rgb(204,204,204);padding-left:1ex"><div dir=3D"ltr">Hi,<br><div>I a=
m wondering if there are any data rate restrictions for using the Replay bl=
ock on the E320.=C2=A0 I have a 4-port Replay block for simultaneously play=
ing two streams to the 2-port Radio and capturing two streams from the 2-po=
rt Radio.=C2=A0 If the master_clock_rate is equal to the sample rate, does =
this imply that I will have a data throughput issue?</div><div>Rob</div></d=
iv>
_______________________________________________<br>
USRP-users mailing list -- <a href=3D"mailto:usrp-users@lists.ettus.com" ta=
rget=3D"_blank">usrp-users@lists.ettus.com</a><br>
To unsubscribe send an email to <a href=3D"mailto:usrp-users-leave@lists.et=
tus.com" target=3D"_blank">usrp-users-leave@lists.ettus.com</a><br>
</blockquote></div>
_______________________________________________<br>
USRP-users mailing list -- <a href=3D"mailto:usrp-users@lists.ettus.com" ta=
rget=3D"_blank">usrp-users@lists.ettus.com</a><br>
To unsubscribe send an email to <a href=3D"mailto:usrp-users-leave@lists.et=
tus.com" target=3D"_blank">usrp-users-leave@lists.ettus.com</a><br>
</blockquote></div>
</blockquote></div>
</div>
</blockquote></div></div>

--00000000000060c42b05d7afdcbe--

--===============0392828723276299534==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============0392828723276299534==--
