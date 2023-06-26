Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id AEC4E73E36C
	for <lists+usrp-users@lfdr.de>; Mon, 26 Jun 2023 17:34:23 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id E0DC0380C19
	for <lists+usrp-users@lfdr.de>; Mon, 26 Jun 2023 11:34:16 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1687793656; bh=G/YYitoVr8bhvdUlbBp2A37fWLlFczapDWOwc2iB2AE=;
	h=References:In-Reply-To:Date:To:CC:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From:Reply-To:From;
	b=LkDgONZlEu9uwUqSS2wfw94QjoNS5fJXk7G48nzsgp7zXbWDqqoq0KNPx2dwovCGK
	 7jYNqGJ0gWJJW+Y/bovHYUz8rHu3JXibLrccirDAAjZhLx/WaSrcuuwMJNtC14PFZb
	 zpYNBg5ghm1+unqnAD67K8KdJwaX6QJxeZlrf4kQG+UEI3S6T8TiNjsPoYpRPz7FwW
	 ootMjL0tGGuYhxDuh++ikZaaorciLEZi/DomB9HQ6PccDOteJ1aFISe4uc1cH7jdic
	 OOgza3Cc+O/BicuzCKOyjmvG9YfwtwBEDe7VoSTFHvOm4iAxRPGhMZd2u4YR5puEaB
	 LAp+Ta3ep/zXA==
Received: from mail-lf1-f43.google.com (mail-lf1-f43.google.com [209.85.167.43])
	by mm2.emwd.com (Postfix) with ESMTPS id A08CE380B22
	for <usrp-users@lists.ettus.com>; Mon, 26 Jun 2023 11:33:13 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=nd.edu header.i=@nd.edu header.b="Y8d7sCaQ";
	dkim-atps=neutral
Received: by mail-lf1-f43.google.com with SMTP id 2adb3069b0e04-4fa48b5dc2eso2761604e87.1
        for <usrp-users@lists.ettus.com>; Mon, 26 Jun 2023 08:33:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=nd.edu; s=google; t=1687793591; x=1690385591;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=Y9a0ptw68PbwQnLulqj8vXS4tSyRzNBlpuWU7l+dOkY=;
        b=Y8d7sCaQJO583SJ1C26ohMhn32xDkSV/QmMKU56yFZFSvZB58iLBa1QWLDfXujzQDZ
         BsgM4gexRP2ZqbHtbpCgFTzsoU9Gyvv9g6KddNUlWGznRDr9u2+te7BnLod0T/CEJqeF
         B5ZSEY8o2OZ298B6mYxXPgw05GuC9dOGVImmmexkAGRnXoBoxbPJWtoGYNDmneUmmYd6
         f7pVzJCdtiqoyv/Cgx6nfet/AB3J5PvD0HWCui4ut+OzZaax9HgwhtlPQ9QeZh9o6XSz
         Z6lOK8IIObJxsYXkWX6gftIMj4OMScSau/rZrVUH/HxRkQmYktDmX4CqG6kVwqiYFo47
         e30A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1687793591; x=1690385591;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=Y9a0ptw68PbwQnLulqj8vXS4tSyRzNBlpuWU7l+dOkY=;
        b=RBK/SyByzn6PeO970r3oqUzAbe1fA01vsogKjlpOd3PrbVv4nmZ41dvOOHoxuBu4s1
         39nD3O4rkSa9EANOncFA53bTwI88tht9sF1u2iOPR2nhsgO5vki5wQzBQ4kKWqeHKAfB
         foLeyhhSPiPRrM0tKR8+dCwa/PYSoPrpK4fPkatMAHCewiUPaLbWX+lIcEZmp4ZQMbsp
         vJ8rdStRF8JKUlG6k/RHjIO3OKo77o6BXqO32W2vBj7ys2we8Sua/5hv6Efnmfqrd797
         hUdqQhFehi4Ox+Zg1NbZS1op9N7YUW/GXQzk1qkqPrM0l8suJDJX9Q4lXh+51aiP6CgY
         a3iA==
X-Gm-Message-State: AC+VfDyYr5oWm3SP1tcyhApM19IWhrPyIgW6gUg/Ylc4dYhgdiSmPlwJ
	XX/ep/4FxrogZct7RlZeDquOSukunLKvyjBwZGA7DF/GjnMXwsdZ
X-Google-Smtp-Source: ACHHUZ6Rw6MElzBooc0U6xyvxU4b0pvCL4P77XJd9OT31Z4LiROqtuF1iXw5PFC0kSvRFVqlTQSUui27RvCqI3/19yI=
X-Received: by 2002:a19:ab12:0:b0:4f9:5933:8ee8 with SMTP id
 u18-20020a19ab12000000b004f959338ee8mr8937865lfe.32.1687793590780; Mon, 26
 Jun 2023 08:33:10 -0700 (PDT)
MIME-Version: 1.0
References: <CAHRiTbnhtWyYk3A+q_J7PLhbKPb9USF5ZPnUxzFLGZCm938m+g@mail.gmail.com>
 <9b273b3f-114d-c9c4-d407-b62dbeb290ac@gmail.com>
In-Reply-To: <9b273b3f-114d-c9c4-d407-b62dbeb290ac@gmail.com>
Date: Mon, 26 Jun 2023 11:32:59 -0400
Message-ID: <CAB__hTQo909O7H-ht304d05rCu5qCeVVmAq++13dyKoEKMULCA@mail.gmail.com>
To: "Marcus D. Leech" <patchvonbraun@gmail.com>
Message-ID-Hash: BUHJ3PW74PSBEWPU2OABQS37FUVZJSMH
X-Message-ID-Hash: BUHJ3PW74PSBEWPU2OABQS37FUVZJSMH
X-MailFrom: rkossler@nd.edu
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: usrp-users@lists.ettus.com
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: TwinRx in coherent setup
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/BUHJ3PW74PSBEWPU2OABQS37FUVZJSMH/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
From: Rob Kossler via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Rob Kossler <rkossler@nd.edu>
Content-Type: multipart/mixed; boundary="===============5243228106756293512=="

--===============5243228106756293512==
Content-Type: multipart/alternative; boundary="0000000000006efae405ff0a11da"

--0000000000006efae405ff0a11da
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Is there a chance that the issue is caused by the timed commands occurring
prior to the "set_rx_rate" command (as indicated in the code provided in
the issue tracker)?  I don't know how the DDC responds to timed commands
prior to knowing its output rate.
Rob

On Mon, Jun 26, 2023 at 11:22=E2=80=AFAM Marcus D. Leech <patchvonbraun@gma=
il.com>
wrote:

> On 26/06/2023 11:12, Carlo Venier wrote:
>
> Good evening to everybody,
>
> I am trying to use an X300 with two TwinRX in a coherent setup.
> After synchronization, in the case of fixed frequency operation (no
> re-tuning) the phase differences among the channels are constant and
> they remain constant over time.
> However, if I re-tune the TwinRx on the exact same frequency, I expect
> that the phase differences remain the same, but it does not happen. How
> is it possible?
>
> The LO settings are the following:
>
> multi_usrp->set_rx_lo_export_enabled(true,
> uhd::usrp::multi_usrp::ALL_LOS, 0);
> multi_usrp->set_rx_lo_source("internal", uhd::usrp::multi_usrp::ALL_LOS,
> 0);
> multi_usrp->set_rx_lo_source("companion",
> uhd::usrp::multi_usrp::ALL_LOS, 1);
> multi_usrp->set_rx_lo_source("external", uhd::usrp::multi_usrp::ALL_LOS,
> 2);
> multi_usrp->set_rx_lo_source("external", uhd::usrp::multi_usrp::ALL_LOS,
> 3);
>
> Moreover, by using the timed command before tuning all the channels
> (code snippet at "https://files.ettus.com/manual/page_sync.html", "Align
> LOs in the front-end"), I get into the issue at
> ("https://github.com/EttusResearch/uhd/issues/606") and the X300 is not
> usable until a power-cycle.
> I get the same issues when using both the uhd3.15.0.0 and the uhd4.4.0.0.
>
> Hopefully this bug will get fixed.
>
> I think that without timed-tuning, even though you're sharing LOs, the DD=
C
> phase-accumulators will be
>   "ticking over" between the individual (untimed) tuning commands.  So
> there will be unpredictable phase
>   between all the channels.
>
>
> Should I expect the same phase differences when I re-tune to the exact
> same frequency or is it okay for the phase differences to change and I
> am missing something?
> Do you have any suggestion on how to solve the issue?
>
> Thanks,
>
> Best regards,
> Carlo Venier
>
> _______________________________________________
> USRP-users mailing list -- usrp-users@lists.ettus.com
> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>
>
> _______________________________________________
> USRP-users mailing list -- usrp-users@lists.ettus.com
> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>

--0000000000006efae405ff0a11da
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Is there a chance that the issue is caused by the timed co=
mmands occurring prior to the &quot;set_rx_rate&quot; command (as indicated=
 in the code provided in the issue tracker)?=C2=A0 I don&#39;t know how the=
 DDC responds to timed commands prior to knowing its output rate.<div>Rob</=
div></div><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_at=
tr">On Mon, Jun 26, 2023 at 11:22=E2=80=AFAM Marcus D. Leech &lt;<a href=3D=
"mailto:patchvonbraun@gmail.com">patchvonbraun@gmail.com</a>&gt; wrote:<br>=
</div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;b=
order-left:1px solid rgb(204,204,204);padding-left:1ex">
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
ion-line:none;color:rgb(66,133,244);font-size:12.8px" rel=3D"noreferrer" ta=
rget=3D"_blank">https://files.ettus.com/manual/page_sync.html</a><span styl=
e=3D"font-size:12.8px">&quot;, &quot;Align</span><br style=3D"font-size:12.=
8px">
        <span style=3D"font-size:12.8px">LOs in the front-end&quot;), I get
          into the issue at</span><br style=3D"font-size:12.8px">
        <span style=3D"font-size:12.8px">(&quot;</span><a href=3D"https://g=
ithub.com/EttusResearch/uhd/issues/606" style=3D"text-decoration-line:none;=
color:rgb(66,133,244);font-size:12.8px" rel=3D"noreferrer" target=3D"_blank=
">https://github.com/EttusResearch/uhd/issues/606</a><span style=3D"font-si=
ze:12.8px">&quot;) and the X300 is not</span><br style=3D"font-size:12.8px"=
>
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
rget=3D"_blank">usrp-users@lists.ettus.com</a>
To unsubscribe send an email to <a href=3D"mailto:usrp-users-leave@lists.et=
tus.com" target=3D"_blank">usrp-users-leave@lists.ettus.com</a>
</pre>
    </blockquote>
    <br>
  </div>

_______________________________________________<br>
USRP-users mailing list -- <a href=3D"mailto:usrp-users@lists.ettus.com" ta=
rget=3D"_blank">usrp-users@lists.ettus.com</a><br>
To unsubscribe send an email to <a href=3D"mailto:usrp-users-leave@lists.et=
tus.com" target=3D"_blank">usrp-users-leave@lists.ettus.com</a><br>
</blockquote></div>

--0000000000006efae405ff0a11da--

--===============5243228106756293512==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============5243228106756293512==--
