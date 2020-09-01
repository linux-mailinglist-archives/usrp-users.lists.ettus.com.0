Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 567BC259788
	for <lists+usrp-users@lfdr.de>; Tue,  1 Sep 2020 18:16:11 +0200 (CEST)
Received: from [::1] (port=34030 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1kD8x6-00065B-Tt; Tue, 01 Sep 2020 12:16:08 -0400
Received: from mail-lj1-f181.google.com ([209.85.208.181]:44053)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
 (Exim 4.93) (envelope-from <chfl5156@colorado.edu>)
 id 1kD8x2-0005xb-Ta
 for USRP-users@lists.ettus.com; Tue, 01 Sep 2020 12:16:05 -0400
Received: by mail-lj1-f181.google.com with SMTP id b19so2219619lji.11
 for <USRP-users@lists.ettus.com>; Tue, 01 Sep 2020 09:15:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=colorado.edu; s=google;
 h=mime-version:references:in-reply-to:reply-to:from:date:message-id
 :subject:to:cc;
 bh=Ho6fP5UO5BsYtBGdmX+stWR5y9XQf5evzPJ5DEDXieU=;
 b=alAJ20V+YOzw10TaKrW2byC6/HAvi4rxIgoTbn2HLXh3Rh3sO76KVMEsaBsfAsCJC3
 qpZWhZ0d49BDwk4eEbu+PvL6Xiyhu4fAFMk7B976bTj802wx04zYRxvwyc7pOgKsCodV
 eH7TaZc8d0Fg7iwBi1Cydqgtk6mO5rMtMvDhF3WTs1KD4WCgvsklo1BIxK8TKDNs7qrO
 xoBeAlifWeNAVv6oimyjUomy80ZN/Z5GPwXCm5pxGJemgVi1NrQj6LoQMs69yJ3rMUM7
 +JxE6VN3DCgsa+VcUbz+i7RYNyLgwrd/BU2r7bt2ZtZ4rvHWTO8Du4x0mI5FV1l5/yfY
 DrIA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:reply-to
 :from:date:message-id:subject:to:cc;
 bh=Ho6fP5UO5BsYtBGdmX+stWR5y9XQf5evzPJ5DEDXieU=;
 b=IV7K/cH5EH2QyZbW46W8XIhweFj5J6TaUsQidSeih7iwmm4uKNtfAdsrSKcMUtGC09
 vp6Dkk+Ml1kWRa5afLMHAk3MfUYWJpJclynjPZvQfDm3PIAVCt3qGKRIgm+HDLBz1xec
 ah8u4yI3HLJIQZIk1gajT2hM2b+SiHUU4ya0TaBaDgMXa7ZVE7x3nS0nXvfTgky3LwTf
 +zAic7c6pAVJBaEM4tLM1ZgCLgjCXV3BI4pC7ULaoJXQJwDlbjzHH2otnNshj+GQLuiT
 IUimNEQstWvsZCg4uaD8vnvTyQGHnOWqX5mmGlz05uYQIevvLID8kmTIRpjD/1WsMykp
 K97A==
X-Gm-Message-State: AOAM532l2s/tdi7IaLz0hBRgTmrhkWNP5LecdLL54JrGnf8dZrHrhzyU
 z752CJ0CJ4xivTc/z/wPgJYik4FarvFfsdnLBwaROQ==
X-Google-Smtp-Source: ABdhPJzJs2LyqAl286gi8QMS9H2pAKsgGyVUQP8SIzwdH4Z2TlO/YBqJvR1vhKR+6vD/vOQ4Lv5q/tRiEnJfX+bzohg=
X-Received: by 2002:a2e:8597:: with SMTP id b23mr984167lji.41.1598976923499;
 Tue, 01 Sep 2020 09:15:23 -0700 (PDT)
MIME-Version: 1.0
References: <CAM+cdhJvnNTRtukiKPx9OhGQAqeFOTBz+Vp3yc1ye4CYV44+OQ@mail.gmail.com>
 <75B13EC1-5F7C-4E97-9614-26221D8E5C20@gmail.com>
 <CAM+cdhJQbH0s+rLMcfH8dVgYNqcnZVEodQCqhtLynupdChz92g@mail.gmail.com>
 <5F4E70FD.4000400@gmail.com>
In-Reply-To: <5F4E70FD.4000400@gmail.com>
Date: Tue, 1 Sep 2020 10:15:11 -0600
Message-ID: <CAM+cdhJ9F4v7q2Nq7NxoqkttPgB6eR1_6v9bJkpefoQKpQONLg@mail.gmail.com>
To: "Marcus D. Leech" <patchvonbraun@gmail.com>
Cc: USRP-users@lists.ettus.com
Subject: Re: [USRP-users] External Oscillator with Ettus N310
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
From: Christopher Flood via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Christopher.Flood@colorado.edu
Content-Type: multipart/mixed; boundary="===============6873854698953390157=="
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

--===============6873854698953390157==
Content-Type: multipart/alternative; boundary="00000000000087979405ae42d303"

--00000000000087979405ae42d303
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

I have not looked at the output spectrum of the Rb, I kind of just assumed
it would be okay since it's the most stable oscillator that we have in our
lab. I can take a look at the spectrum and report back.

If I do see output spurs, do you have any suggestions / tips on cleaning up
the signal to the point where it would work as an external reference?

-Chris

On Tue, Sep 1, 2020 at 10:06 AM Marcus D. Leech <patchvonbraun@gmail.com>
wrote:

> On 09/01/2020 11:30 AM, Christopher Flood wrote:
>
> Shape is a sinusoid. Vrms going into a 1 megaohm scope is 1.4V, so I woul=
d
> expect that to be ~.7V going into a 50 ohm load (the SDR), which I believ=
e
> is under the max power requirement for the external reference of the N310=
.
>
> -Chris
>
> The notes suggest that a square-wave will produce lower phase-noise, but =
a
> sinusoid is also acceptable, and your VP-P should also be
>   acceptable for the LMK04828 master clock PLL chip that is used in the
> N310.
>
> Have you looked at the output spectrum of your Rb clock?  The two that I
> have had to be "cleaned up" before being used, because
>   there are typically fairly loud output spurs on "raw" Rb clocks, and
> there's no input filtering on the N310.
>
>
>
> On Tue, Sep 1, 2020 at 9:26 AM Marcus D Leech <patchvonbraun@gmail.com>
> wrote:
>
>> What are the output parameters of your Rb reference? Signal amplitude an=
d
>> shape, etc.
>>
>> Sent from my iPhone
>>
>> > On Sep 1, 2020, at 11:18 AM, Christopher Flood via USRP-users <
>> usrp-users@lists.ettus.com> wrote:
>> >
>> > =EF=BB=BF
>> >   Hi all,
>> >
>> > Sorry if this is coming through twice - I sent it once before I
>> subscribed to the list, but didn't know if it went through or not! (I
>> didn't see it in the archives...)
>> >
>> > -------
>> >
>> > I'm having some trouble using an external reference with the Ettus
>> N310. The reference I am using is a FS725 Rubidium Frequency Standard.
>> >
>> > To test the difference between the internal clock and the external
>> reference, I transmitted a 10MHz signal from the Ettus N310 with and
>> without the external reference. Using just the internal clock of the SDR=
,
>> the 10MHz signal slowly wanders with respect to the 10MHz signal from th=
e
>> Rubidium Frequency Standard as seen on an oscilloscope. This is to be
>> expected since the stability of the internal clock in the SDR is worse t=
han
>> the Rubidium Frequency Standard.
>> >
>> > However, when I connect the 10MHz signal from the Rubidium to the
>> external reference of the N310 and tell the N310 to use the external
>> reference, the 10MHz signal that the N310 generates wanders much faster
>> with respect to the 10MHz signal from the Rubidium. This is opposite of
>> what I believe should happen, assuming the N310 is truly using the exter=
nal
>> reference signal.
>> >
>> > Have any of you experienced this or have any tips as to what might be
>> going on?
>> >
>> > Thanks!
>> >
>> > -Chris
>> > _______________________________________________
>> > USRP-users mailing list
>> > USRP-users@lists.ettus.com
>> >
>> http://secure-web.cisco.com/1nWDwD0LbO77QthlIKVs0gyhEI4cVA_IfTj4rvvFSL4q=
Wjw_BKsjarpNVGUg1WSCn9mLxWoszHiy1EL4wQBcyjVSZlchr4oAdnfbUKsQurDlSMkQ3xes5nN=
VfRZbMo1K_tC57_jfBijc7k1IJEeJI4eGE5lp6Hvxm5TrWP7xYZJN3Rno2PLqMojzmmGUON3j_F=
wZI5DrM1IRJJOp4zugqAiDWJkDCb9_EmunfDHehAlAUGJMMDQ9fvhujOQ6RMQSye2luXmluRt_L=
10jyNP6kk-a7ojOTF1lgm_5ZcB9LpYVMPx8JEbY8_VIcwrlrC-n2XC4dn41AUQyHPf47I3DWWUS=
BZZGaTEgad3YzhpIvd0Mk3XAPpGfdyAPTH6kEW-xpRHOSnTArwXMSBHYc-Wy_utBs6L16LMlPST=
1Q65z9FcHKQbE-3AjZkQbUl--HGEeSu2HcZH89_ufKsucuflnBKQ/http%3A%2F%2Flists.ett=
us.com%2Fmailman%2Flistinfo%2Fusrp-users_lists.ettus.com
>>
>>
>

--00000000000087979405ae42d303
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">I have not looked at the output spectrum of the Rb, I kind=
 of just assumed it would be okay since it&#39;s the most stable oscillator=
 that we have in our lab. I can take a look at the spectrum and report back=
.=C2=A0<div><br></div><div>If I do see output spurs, do you have any sugges=
tions / tips on cleaning up the signal to the point where it would work as =
an external reference?<br></div><div><br></div><div>-Chris</div></div><br><=
div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Tue, Sep=
 1, 2020 at 10:06 AM Marcus D. Leech &lt;<a href=3D"mailto:patchvonbraun@gm=
ail.com">patchvonbraun@gmail.com</a>&gt; wrote:<br></div><blockquote class=
=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rg=
b(204,204,204);padding-left:1ex">
 =20
   =20
 =20
  <div bgcolor=3D"#FFFFFF">
    <div>On 09/01/2020 11:30 AM, Christopher
      Flood wrote:<br>
    </div>
    <blockquote type=3D"cite">
      <div dir=3D"ltr">
        <div dir=3D"ltr">Shape is a sinusoid. Vrms going into a 1 megaohm
          scope is 1.4V, so I would expect that to be ~.7V going into a
          50 ohm load (the SDR), which I believe is under the max power
          requirement for the external reference of the N310.=C2=A0</div>
        <div><br>
        </div>
        -Chris <br>
      </div>
    </blockquote>
    The notes suggest that a square-wave will produce lower phase-noise,
    but a sinusoid is also acceptable, and your VP-P should also be<br>
    =C2=A0 acceptable for the LMK04828 master clock PLL chip that is used i=
n
    the N310.<br>
    <br>
    Have you looked at the output spectrum of your Rb clock?=C2=A0 The two
    that I have had to be &quot;cleaned up&quot; before being used, because=
<br>
    =C2=A0 there are typically fairly loud output spurs on &quot;raw&quot; =
Rb clocks,
    and there&#39;s no input filtering on the N310.<br>
    <br>
    <br>
    <blockquote type=3D"cite">
      <div dir=3D"ltr">
        <div><br>
          <div class=3D"gmail_quote">
            <div dir=3D"ltr" class=3D"gmail_attr">On Tue, Sep 1, 2020 at
              9:26 AM Marcus D Leech &lt;<a href=3D"mailto:patchvonbraun@gm=
ail.com" target=3D"_blank">patchvonbraun@gmail.com</a>&gt;
              wrote:<br>
            </div>
            <blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0=
.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex">What are the =
output
              parameters of your Rb reference? Signal amplitude and
              shape, etc. <br>
              <br>
              Sent from my iPhone<br>
              <br>
              &gt; On Sep 1, 2020, at 11:18 AM, Christopher Flood via
              USRP-users &lt;<a href=3D"mailto:usrp-users@lists.ettus.com" =
target=3D"_blank">usrp-users@lists.ettus.com</a>&gt;
              wrote:<br>
              &gt; <br>
              &gt; =EF=BB=BF<br>
              &gt;=C2=A0 =C2=A0Hi all,<br>
              &gt; <br>
              &gt; Sorry if this is coming through twice - I sent it
              once before I subscribed to the list, but didn&#39;t know if
              it went through or not! (I didn&#39;t see it in the
              archives...)<br>
              &gt; <br>
              &gt; -------<br>
              &gt; <br>
              &gt; I&#39;m having some trouble using an external reference
              with the Ettus N310. The reference I am using is a FS725
              Rubidium Frequency Standard.<br>
              &gt; <br>
              &gt; To test the difference between the internal clock and
              the external reference, I transmitted a 10MHz signal from
              the Ettus N310 with and without the external reference.
              Using just the internal clock of the SDR, the 10MHz signal
              slowly wanders with respect to the 10MHz signal from the
              Rubidium Frequency Standard as seen on an oscilloscope.
              This is to be expected since the stability of the internal
              clock in the SDR is worse than the Rubidium Frequency
              Standard.<br>
              &gt; <br>
              &gt; However, when I connect the 10MHz signal from the
              Rubidium to the external reference of the N310 and tell
              the N310 to use the external reference, the 10MHz signal
              that the N310 generates wanders much faster with respect
              to the 10MHz signal from the Rubidium. This is opposite of
              what I believe should happen, assuming the N310 is truly
              using the external reference signal. <br>
              &gt; <br>
              &gt; Have any of you experienced this or have any tips as
              to what might be going on?<br>
              &gt; <br>
              &gt; Thanks!<br>
              &gt; <br>
              &gt; -Chris <br>
              &gt; _______________________________________________<br>
              &gt; USRP-users mailing list<br>
              &gt; <a href=3D"mailto:USRP-users@lists.ettus.com" target=3D"=
_blank">USRP-users@lists.ettus.com</a><br>
              &gt; <a href=3D"http://secure-web.cisco.com/1nWDwD0LbO77QthlI=
KVs0gyhEI4cVA_IfTj4rvvFSL4qWjw_BKsjarpNVGUg1WSCn9mLxWoszHiy1EL4wQBcyjVSZlch=
r4oAdnfbUKsQurDlSMkQ3xes5nNVfRZbMo1K_tC57_jfBijc7k1IJEeJI4eGE5lp6Hvxm5TrWP7=
xYZJN3Rno2PLqMojzmmGUON3j_FwZI5DrM1IRJJOp4zugqAiDWJkDCb9_EmunfDHehAlAUGJMMD=
Q9fvhujOQ6RMQSye2luXmluRt_L10jyNP6kk-a7ojOTF1lgm_5ZcB9LpYVMPx8JEbY8_VIcwrlr=
C-n2XC4dn41AUQyHPf47I3DWWUSBZZGaTEgad3YzhpIvd0Mk3XAPpGfdyAPTH6kEW-xpRHOSnTA=
rwXMSBHYc-Wy_utBs6L16LMlPST1Q65z9FcHKQbE-3AjZkQbUl--HGEeSu2HcZH89_ufKsucufl=
nBKQ/http%3A%2F%2Flists.ettus.com%2Fmailman%2Flistinfo%2Fusrp-users_lists.e=
ttus.com" rel=3D"noreferrer" target=3D"_blank">http://secure-web.cisco.com/=
1nWDwD0LbO77QthlIKVs0gyhEI4cVA_IfTj4rvvFSL4qWjw_BKsjarpNVGUg1WSCn9mLxWoszHi=
y1EL4wQBcyjVSZlchr4oAdnfbUKsQurDlSMkQ3xes5nNVfRZbMo1K_tC57_jfBijc7k1IJEeJI4=
eGE5lp6Hvxm5TrWP7xYZJN3Rno2PLqMojzmmGUON3j_FwZI5DrM1IRJJOp4zugqAiDWJkDCb9_E=
munfDHehAlAUGJMMDQ9fvhujOQ6RMQSye2luXmluRt_L10jyNP6kk-a7ojOTF1lgm_5ZcB9LpYV=
MPx8JEbY8_VIcwrlrC-n2XC4dn41AUQyHPf47I3DWWUSBZZGaTEgad3YzhpIvd0Mk3XAPpGfdyA=
PTH6kEW-xpRHOSnTArwXMSBHYc-Wy_utBs6L16LMlPST1Q65z9FcHKQbE-3AjZkQbUl--HGEeSu=
2HcZH89_ufKsucuflnBKQ/http%3A%2F%2Flists.ettus.com%2Fmailman%2Flistinfo%2Fu=
srp-users_lists.ettus.com</a><br>
              <br>
            </blockquote>
          </div>
        </div>
      </div>
    </blockquote>
    <br>
  </div>

</blockquote></div>

--00000000000087979405ae42d303--


--===============6873854698953390157==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============6873854698953390157==--

