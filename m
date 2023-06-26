Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 21D8973E4CB
	for <lists+usrp-users@lfdr.de>; Mon, 26 Jun 2023 18:20:03 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 39304383E78
	for <lists+usrp-users@lfdr.de>; Mon, 26 Jun 2023 12:19:57 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1687796397; bh=0fezm1jgxqmw+cq7kfV3UiwCh3Rpy76Mux6omDIg+lc=;
	h=References:In-Reply-To:From:Date:To:CC:Subject:List-Id:
	 List-Archive:List-Help:List-Owner:List-Post:List-Subscribe:
	 List-Unsubscribe:From;
	b=IOag2jaT4UR50bq2ziO1X87/pFOR3W8lKrRhfXR4AXLUiw6KZfXEWoAJnFqWz31gv
	 COwlgXTdhr8cUvFUvKUNKImbkaMwPIL97LGrYJvGuZ+iFdcgdp/Fb6qTJ223Z0jXqO
	 ZyEqRJu9vL1CYyu8A4u5/+X2VL8iyzt87lFsgSA9QxOYeX3Cepq/pGnW3rlqjnwT2D
	 J0cEO+2JuYAn1mSZC8zeuFB2foemewex+0PlEoosOVyZiqAZek7PREBlFl30yb8pTc
	 k8Xd/NHwrYdA/+ZBJ/12OZaAS1Fqfi1VQoFt56BJFdpLzCwewY7gl8OSp7vR08W+QG
	 VWj3u3/FiWSlw==
Received: from mail-pl1-f177.google.com (mail-pl1-f177.google.com [209.85.214.177])
	by mm2.emwd.com (Postfix) with ESMTPS id 45432381076
	for <usrp-users@lists.ettus.com>; Mon, 26 Jun 2023 12:18:54 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="bG15/W2j";
	dkim-atps=neutral
Received: by mail-pl1-f177.google.com with SMTP id d9443c01a7336-1b4f9583404so29583235ad.2
        for <usrp-users@lists.ettus.com>; Mon, 26 Jun 2023 09:18:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1687796329; x=1690388329;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=Xcq2m3vIt7/R8u7vGIwbMR9b78REbLfGYjL0q8Fqjuw=;
        b=bG15/W2jmkaWkgdNzcgxLhFwflUOgeBNrUuT5xUGGEjNiHHYKWkPvRRfdoJzZReUGQ
         3AIYRkTlOoSUPKwW/WgKJyK80F7gPg5fcx//RDDacb5FFGNt/PiTC5Gprj8HcjdnPLfV
         ZCguB28vrjhwznGOznrRwIgHehcNnpJ8C2RF3b4PSMJAb68oBHKu/gBBL8uIWonK6IgR
         cJAIcebgGIo174XN07bst3oLhImNhg8c0amQNvB+hRnlMfZVf/GtlxyikntUQvThv790
         AJq5USFZaE6xwPSnbZIgSCkT0zJqQce/nyVlk0m0XhF6zLpZR8BQKd4SxegklQWOuZHT
         2NEA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1687796329; x=1690388329;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=Xcq2m3vIt7/R8u7vGIwbMR9b78REbLfGYjL0q8Fqjuw=;
        b=ACbW/CZ4g/wB5klBSTM+czM9magQrc+HM2fJZ2ydD8ei8akkz763okA9JNMAiZGzjo
         ddpufFSDx5WVTkhJeB4gmi1DLHoX+hgOEgxpFWR8i1spqry0DqpzU7kt3wMV07Nl4MgS
         RM5ME9Hg6aBiSsPk705NMkmI+eB2fozqAmWJ4Y8jLCpcG+1fpO7/OYn8t/DD6SCKB5GH
         520CR0qL8/L8rW/Y/PbCPVmQXeoyHEk64p2d1h7lJc0tOI2hkEUI0/Bg83szLpcj7+d7
         jCH79ydtT++HzrSHhzreeTVDfFCsC/FhfiiAc7yq8H2Q0kAnUt4kcLTXHtUh5XzwRmxm
         5u4g==
X-Gm-Message-State: AC+VfDzZ9YrqXkXR1Fco62fg4OWUG2JMOT75O/nd7W19rVWMqTO6Vh/+
	E5Qxnd6lE8tQQGi+luYIhvjPq+Rvlf7JYqsWI3A=
X-Google-Smtp-Source: ACHHUZ5CkaDfRGBg7F0jD0zGi2eAs83kHPch9qEIu1NUw3bJHLih59WOlpLHwLXOD6eiLEAkbVwmEDznncLOrIAyIcs=
X-Received: by 2002:a17:902:8f85:b0:1b6:adef:9222 with SMTP id
 z5-20020a1709028f8500b001b6adef9222mr7350460plo.61.1687796328770; Mon, 26 Jun
 2023 09:18:48 -0700 (PDT)
MIME-Version: 1.0
References: <CAHRiTbnhtWyYk3A+q_J7PLhbKPb9USF5ZPnUxzFLGZCm938m+g@mail.gmail.com>
 <9b273b3f-114d-c9c4-d407-b62dbeb290ac@gmail.com> <CAB__hTQo909O7H-ht304d05rCu5qCeVVmAq++13dyKoEKMULCA@mail.gmail.com>
In-Reply-To: <CAB__hTQo909O7H-ht304d05rCu5qCeVVmAq++13dyKoEKMULCA@mail.gmail.com>
From: Carlo Venier <venier.carlo@gmail.com>
Date: Mon, 26 Jun 2023 18:18:37 +0200
Message-ID: <CAHRiTbnB3AbYV+=-GxY9c7kt=EUvjOExtEPbB0HjLKVnE4pNcw@mail.gmail.com>
To: Rob Kossler <rkossler@nd.edu>
Message-ID-Hash: 7XCUKCZKYSUD52MONE7RR4TGQWJQ76KM
X-Message-ID-Hash: 7XCUKCZKYSUD52MONE7RR4TGQWJQ76KM
X-MailFrom: venier.carlo@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: "Marcus D. Leech" <patchvonbraun@gmail.com>, usrp-users@lists.ettus.com
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: TwinRx in coherent setup
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/7XCUKCZKYSUD52MONE7RR4TGQWJQ76KM/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============1631229698262722534=="

--===============1631229698262722534==
Content-Type: multipart/alternative; boundary="000000000000a1327905ff0ab44f"

--000000000000a1327905ff0ab44f
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Thanks Rob.
Actually, prior to tune the TwinRx I set the sampling rate.

Il lun 26 giu 2023, 17:33 Rob Kossler via USRP-users <
usrp-users@lists.ettus.com> ha scritto:

> Is there a chance that the issue is caused by the timed commands occurrin=
g
> prior to the "set_rx_rate" command (as indicated in the code provided in
> the issue tracker)?  I don't know how the DDC responds to timed commands
> prior to knowing its output rate.
> Rob
>
> On Mon, Jun 26, 2023 at 11:22=E2=80=AFAM Marcus D. Leech <patchvonbraun@g=
mail.com>
> wrote:
>
>> On 26/06/2023 11:12, Carlo Venier wrote:
>>
>> Good evening to everybody,
>>
>> I am trying to use an X300 with two TwinRX in a coherent setup.
>> After synchronization, in the case of fixed frequency operation (no
>> re-tuning) the phase differences among the channels are constant and
>> they remain constant over time.
>> However, if I re-tune the TwinRx on the exact same frequency, I expect
>> that the phase differences remain the same, but it does not happen. How
>> is it possible?
>>
>> The LO settings are the following:
>>
>> multi_usrp->set_rx_lo_export_enabled(true,
>> uhd::usrp::multi_usrp::ALL_LOS, 0);
>> multi_usrp->set_rx_lo_source("internal", uhd::usrp::multi_usrp::ALL_LOS,
>> 0);
>> multi_usrp->set_rx_lo_source("companion",
>> uhd::usrp::multi_usrp::ALL_LOS, 1);
>> multi_usrp->set_rx_lo_source("external", uhd::usrp::multi_usrp::ALL_LOS,
>> 2);
>> multi_usrp->set_rx_lo_source("external", uhd::usrp::multi_usrp::ALL_LOS,
>> 3);
>>
>> Moreover, by using the timed command before tuning all the channels
>> (code snippet at "https://files.ettus.com/manual/page_sync.html", "Align
>> LOs in the front-end"), I get into the issue at
>> ("https://github.com/EttusResearch/uhd/issues/606") and the X300 is not
>> usable until a power-cycle.
>> I get the same issues when using both the uhd3.15.0.0 and the uhd4.4.0.0=
.
>>
>> Hopefully this bug will get fixed.
>>
>> I think that without timed-tuning, even though you're sharing LOs, the
>> DDC phase-accumulators will be
>>   "ticking over" between the individual (untimed) tuning commands.  So
>> there will be unpredictable phase
>>   between all the channels.
>>
>>
>> Should I expect the same phase differences when I re-tune to the exact
>> same frequency or is it okay for the phase differences to change and I
>> am missing something?
>> Do you have any suggestion on how to solve the issue?
>>
>> Thanks,
>>
>> Best regards,
>> Carlo Venier
>>
>> _______________________________________________
>> USRP-users mailing list -- usrp-users@lists.ettus.com
>> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>>
>>
>> _______________________________________________
>> USRP-users mailing list -- usrp-users@lists.ettus.com
>> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>>
> _______________________________________________
> USRP-users mailing list -- usrp-users@lists.ettus.com
> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>

--000000000000a1327905ff0ab44f
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"auto">Thanks Rob.=C2=A0<div dir=3D"auto">Actually, prior to tun=
e the TwinRx I set the sampling rate.</div></div><br><div class=3D"gmail_qu=
ote"><div dir=3D"ltr" class=3D"gmail_attr">Il lun 26 giu 2023, 17:33 Rob Ko=
ssler via USRP-users &lt;<a href=3D"mailto:usrp-users@lists.ettus.com">usrp=
-users@lists.ettus.com</a>&gt; ha scritto:<br></div><blockquote class=3D"gm=
ail_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-le=
ft:1ex"><div dir=3D"ltr">Is there a chance that the issue is caused by the =
timed commands occurring prior to the &quot;set_rx_rate&quot; command (as i=
ndicated in the code provided in the issue tracker)?=C2=A0 I don&#39;t know=
 how the DDC responds to timed commands prior to knowing its output rate.<d=
iv>Rob</div></div><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"=
gmail_attr">On Mon, Jun 26, 2023 at 11:22=E2=80=AFAM Marcus D. Leech &lt;<a=
 href=3D"mailto:patchvonbraun@gmail.com" target=3D"_blank" rel=3D"noreferre=
r">patchvonbraun@gmail.com</a>&gt; wrote:<br></div><blockquote class=3D"gma=
il_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,2=
04,204);padding-left:1ex">
 =20
   =20
 =20
  <div>
    <div>On 26/06/2023 11:12, Carlo Venier
      wrote:<br>
    </div>
    <blockquote type=3D"cite">
     =20
      <div dir=3D"auto"><span style=3D"font-size:12.8px">Good evening to
          everybody,</span><br style=3D"font-size:12.8px">
        <br style=3D"font-size:12.8px">
        <span style=3D"font-size:12.8px">I am trying to use an X300 with
          two TwinRX in a coherent setup.</span><br style=3D"font-size:12.8=
px">
        <span style=3D"font-size:12.8px">After synchronization, in the
          case of fixed frequency operation (no</span><br style=3D"font-siz=
e:12.8px">
        <span style=3D"font-size:12.8px">re-tuning) the phase differences
          among the channels are constant and</span><br style=3D"font-size:=
12.8px">
        <span style=3D"font-size:12.8px">they remain constant over time.</s=
pan><br style=3D"font-size:12.8px">
        <span style=3D"font-size:12.8px">However, if I re-tune the TwinRx
          on the exact same frequency, I expect</span><br style=3D"font-siz=
e:12.8px">
        <span style=3D"font-size:12.8px">that the phase differences remain
          the same, but it does not happen. How</span><br style=3D"font-siz=
e:12.8px">
        <span style=3D"font-size:12.8px">is it possible?</span><br style=3D=
"font-size:12.8px">
        <br style=3D"font-size:12.8px">
        <span style=3D"font-size:12.8px">The LO settings are the
          following:</span><br style=3D"font-size:12.8px">
        <br style=3D"font-size:12.8px">
        <span style=3D"font-size:12.8px">multi_usrp-&gt;set_rx_lo_export_e<=
/span><span style=3D"font-size:12.8px">nabled(true,</span><br style=3D"font=
-size:12.8px">
        <span style=3D"font-size:12.8px">uhd::usrp::multi_usrp::ALL_LOS</sp=
an><span style=3D"font-size:12.8px">, 0);</span><br style=3D"font-size:12.8=
px">
        <span style=3D"font-size:12.8px">multi_usrp-&gt;set_rx_lo_source(&q=
uot;</span><span style=3D"font-size:12.8px">internal&quot;,
          uhd::usrp::multi_usrp::ALL_LOS</span><span style=3D"font-size:12.=
8px">, 0);</span><br style=3D"font-size:12.8px">
        <span style=3D"font-size:12.8px">multi_usrp-&gt;set_rx_lo_source(&q=
uot;</span><span style=3D"font-size:12.8px">companion&quot;,</span><br styl=
e=3D"font-size:12.8px">
        <span style=3D"font-size:12.8px">uhd::usrp::multi_usrp::ALL_LOS</sp=
an><span style=3D"font-size:12.8px">, 1);</span><br style=3D"font-size:12.8=
px">
        <span style=3D"font-size:12.8px">multi_usrp-&gt;set_rx_lo_source(&q=
uot;</span><span style=3D"font-size:12.8px">external&quot;,
          uhd::usrp::multi_usrp::ALL_LOS</span><span style=3D"font-size:12.=
8px">, 2);</span><br style=3D"font-size:12.8px">
        <span style=3D"font-size:12.8px">multi_usrp-&gt;set_rx_lo_source(&q=
uot;</span><span style=3D"font-size:12.8px">external&quot;,
          uhd::usrp::multi_usrp::ALL_LOS</span><span style=3D"font-size:12.=
8px">, 3);</span><br style=3D"font-size:12.8px">
        <br style=3D"font-size:12.8px">
        <span style=3D"font-size:12.8px">Moreover, by using the timed
          command before tuning all the channels</span><br style=3D"font-si=
ze:12.8px">
        <span style=3D"font-size:12.8px">(code snippet at &quot;</span><a h=
ref=3D"https://files.ettus.com/manual/page_sync.html" style=3D"text-decorat=
ion-line:none;color:rgb(66,133,244);font-size:12.8px" rel=3D"noreferrer nor=
eferrer" target=3D"_blank">https://files.ettus.com/manual/page_sync.html</a=
><span style=3D"font-size:12.8px">&quot;, &quot;Align</span><br style=3D"fo=
nt-size:12.8px">
        <span style=3D"font-size:12.8px">LOs in the front-end&quot;), I get
          into the issue at</span><br style=3D"font-size:12.8px">
        <span style=3D"font-size:12.8px">(&quot;</span><a href=3D"https://g=
ithub.com/EttusResearch/uhd/issues/606" style=3D"text-decoration-line:none;=
color:rgb(66,133,244);font-size:12.8px" rel=3D"noreferrer noreferrer" targe=
t=3D"_blank">https://github.com/EttusResearch/uhd/issues/606</a><span style=
=3D"font-size:12.8px">&quot;) and the X300 is not</span><br style=3D"font-s=
ize:12.8px">
        <span style=3D"font-size:12.8px">usable until a power-cycle.</span>=
<br style=3D"font-size:12.8px">
        <span style=3D"font-size:12.8px">I get the same issues when using
          both the uhd3.15.0.0 and the uhd4.4.0.0.</span><br style=3D"font-=
size:12.8px">
      </div>
    </blockquote>
    Hopefully this bug will get fixed.<br>
    <br>
    I think that without timed-tuning, even though you&#39;re sharing LOs,
    the DDC phase-accumulators will be<br>
    =C2=A0 &quot;ticking over&quot; between the individual (untimed) tuning=
 commands.=C2=A0
    So there will be unpredictable phase<br>
    =C2=A0 between all the channels.<br>
    <blockquote type=3D"cite">
      <div dir=3D"auto"><br style=3D"font-size:12.8px">
        <span style=3D"font-size:12.8px">Should I expect the same phase
          differences when I re-tune to the exact</span><br style=3D"font-s=
ize:12.8px">
        <span style=3D"font-size:12.8px">same frequency or is it okay for
          the phase differences to change and I</span><br style=3D"font-siz=
e:12.8px">
        <span style=3D"font-size:12.8px">am missing something?</span><br st=
yle=3D"font-size:12.8px">
        <span style=3D"font-size:12.8px">Do you have any suggestion on how
          to solve the issue?</span><br style=3D"font-size:12.8px">
        <br style=3D"font-size:12.8px">
        <span style=3D"font-size:12.8px">Thanks,</span><br style=3D"font-si=
ze:12.8px">
        <br style=3D"font-size:12.8px">
        <span style=3D"font-size:12.8px">Best regards,</span><br style=3D"f=
ont-size:12.8px">
        <span style=3D"font-size:12.8px">Carlo Venier</span></div>
      <br>
      <fieldset></fieldset>
      <pre>_______________________________________________
USRP-users mailing list -- <a href=3D"mailto:usrp-users@lists.ettus.com" ta=
rget=3D"_blank" rel=3D"noreferrer">usrp-users@lists.ettus.com</a>
To unsubscribe send an email to <a href=3D"mailto:usrp-users-leave@lists.et=
tus.com" target=3D"_blank" rel=3D"noreferrer">usrp-users-leave@lists.ettus.=
com</a>
</pre>
    </blockquote>
    <br>
  </div>

_______________________________________________<br>
USRP-users mailing list -- <a href=3D"mailto:usrp-users@lists.ettus.com" ta=
rget=3D"_blank" rel=3D"noreferrer">usrp-users@lists.ettus.com</a><br>
To unsubscribe send an email to <a href=3D"mailto:usrp-users-leave@lists.et=
tus.com" target=3D"_blank" rel=3D"noreferrer">usrp-users-leave@lists.ettus.=
com</a><br>
</blockquote></div>
_______________________________________________<br>
USRP-users mailing list -- <a href=3D"mailto:usrp-users@lists.ettus.com" ta=
rget=3D"_blank" rel=3D"noreferrer">usrp-users@lists.ettus.com</a><br>
To unsubscribe send an email to <a href=3D"mailto:usrp-users-leave@lists.et=
tus.com" target=3D"_blank" rel=3D"noreferrer">usrp-users-leave@lists.ettus.=
com</a><br>
</blockquote></div>

--000000000000a1327905ff0ab44f--

--===============1631229698262722534==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============1631229698262722534==--
