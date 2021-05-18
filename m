Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 93DF4387FE2
	for <lists+usrp-users@lfdr.de>; Tue, 18 May 2021 20:48:33 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 958433846B9
	for <lists+usrp-users@lfdr.de>; Tue, 18 May 2021 14:48:32 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="nXN1jUrZ";
	dkim-atps=neutral
Received: from mail-yb1-f179.google.com (mail-yb1-f179.google.com [209.85.219.179])
	by mm2.emwd.com (Postfix) with ESMTPS id 6D531384509
	for <usrp-users@lists.ettus.com>; Tue, 18 May 2021 14:47:47 -0400 (EDT)
Received: by mail-yb1-f179.google.com with SMTP id g38so14616296ybi.12
        for <usrp-users@lists.ettus.com>; Tue, 18 May 2021 11:47:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to;
        bh=VFsXdU7z19TRCS02+oZM05YAs2CPUlrPNsWH+qorOJE=;
        b=nXN1jUrZhPgpMZ1g0pJ4uAJ5oaCTJsLlvLx9j1Mraa+bh3jAZGbLaA8sO7cVsk8Nbl
         ix8GbYJ+wcLiWMkPDBnmMWZdAoBJ5mOpnYcA3iuu+Rru2n0KTkLQSl0VJ3Yv+YlgES5b
         0aryj12Iww5cxZRXBwE41aBUfetpQuxIsBvDmmhsaJOudS0yExpZ+8zUfeSEomAqV/c0
         Ll7ftr68O5bEtb3tPEzz5Vm/QC6RzfVk5UYrNAs6KorzQbvaa4C7wX+rFJ2hb9xm8ya9
         7K3SiEtfAG9ayOYHyXz8X93aWW9wTjWN/oqU4aZpRmh35QtyW2fUrazxmoej7u81Ve3r
         X+iQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to;
        bh=VFsXdU7z19TRCS02+oZM05YAs2CPUlrPNsWH+qorOJE=;
        b=cJ2lGzelEAratX2XUwPN7X1OgA1EKhudZWthPCZE7ZK//OiD1vxAodTBsrjpi9uLKD
         fFpo75ZHUO0KE5Kg5qSpvngZUBO6F/LbyLJrX+e4yai8tOYRvA070SKd0GDB4Be1WO+z
         c144HCYnT7c09wRysPcAuMcrfeDLvtOAyTZjQy/6WUI4Twsi1Ivyse53NXj2Y8pPRlHv
         ZlzBYLi88jcR03wutN02mAzZWovoVfRZFST2ANCuQLmSj4+wx8j7gA5lQP7dr/GY+l4b
         9XTUd5Z/l8Pg8oAYAwmul2ox8eK7fstGnaIos3t5vk2yl7Zj+ZjSf2E1GiTwfGQ+TVsT
         7hcg==
X-Gm-Message-State: AOAM53176cfGQdd61bQplZu0kA2kIkfmzJtoqBH3apYY2rQyYJMgoaev
	SyKWnL1HCLpK2H+FZ0FXTWpQ4aOVJczk8o4KAkxJccyS3pwIXdEqgb8=
X-Google-Smtp-Source: ABdhPJydC/pIuSK3AxByZMeEeXTXA6pn0iH551Tf41HUE+PKQB2SlIYBkti56tOqgO1I/TEqF5Ol8ev0UJcn+4fO7V8=
X-Received: by 2002:a25:3585:: with SMTP id c127mr10075220yba.494.1621363666805;
 Tue, 18 May 2021 11:47:46 -0700 (PDT)
MIME-Version: 1.0
References: <CAL0m=NacROnWkmwJaSFc_EdtF3Rs9bFitbTwJQjCgPY==ZKpow@mail.gmail.com>
 <F69F86F2-31B7-487E-8714-6542540F800E@gmail.com> <CAL0m=NbmR3DY6e_AKX-inbdO-d1cAE+Yz1MJHTTj0uH2oRBi9Q@mail.gmail.com>
 <20210518135119.wqzzwhymc575acto@barbe>
In-Reply-To: <20210518135119.wqzzwhymc575acto@barbe>
From: "Zeng, Huacheng" <huacheng.zeng@gmail.com>
Date: Tue, 18 May 2021 14:47:36 -0400
Message-ID: <CAL0m=NYqGdC4gc0kDTZzhQD-5XNroF9_Ho0vgUydL6X+6jZwBg@mail.gmail.com>
To: =?UTF-8?Q?C=C3=A9dric_Hannotier?= <cedric.hannotier@ulb.be>,
	usrp-users <usrp-users@lists.ettus.com>
Message-ID-Hash: PFAESX53M3DCF4EVLH6G6QYK2BCGNTZ2
X-Message-ID-Hash: PFAESX53M3DCF4EVLH6G6QYK2BCGNTZ2
X-MailFrom: huacheng.zeng@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: X310 Synchronization
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/PFAESX53M3DCF4EVLH6G6QYK2BCGNTZ2/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============8188817194994904574=="

--===============8188817194994904574==
Content-Type: multipart/alternative; boundary="00000000000069688105c29f25ff"

--00000000000069688105c29f25ff
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi C=C3=A9dric,

I tried "set_time_unknown_pps()" but got no luck. The sample misalignment
remains the same. I suspect this is somehow related to the warning
"[WARNING] [RFNOC::GRAPH] One or more blocks timed out during flush!" from
the UHD, but have no idea about how to fix it. Thanks anyway.

-Hua

On Tue, May 18, 2021 at 9:51 AM C=C3=A9dric Hannotier via USRP-users <
usrp-users@lists.ettus.com> wrote:

> Hi Hua,
>
> On 17/05/21 16:27, Zeng, Huacheng wrote:
> > Hi Marcus,
> >
> > Thank you for the reply. I am using SBX (40MHz)  daughterboards for X31=
0.
> > For my software setting, I'm not sure what is the best way to present t=
he
> > details. So I copied my code below. Hopeful it is not messy for you to
> > review.
> > [...]
> > int main() {
> >     [...]
> >     sp.sync_opt =3D "internal"; //"pps", "mimo"
> >     [...]
> > void sdr_dev::configure_usrp(sdr_para sp) {
> >     [...]
> >     // clock and time sync_opthronization
> >     if (sync_opt =3D=3D "pps") {
> >         [...]
> >     } else if (sync_opt =3D=3D "mimo") {
> >         [...]
> >     } else {
> >         usrp -> set_time_now(uhd::time_spec_t(1.0));
> >     }
>
> It seems you are using set_time_now() to synchronize
> the two daughterboards inside your X310.
> Could this be related to [1]?
> Does using set_time_unknown_pps() instead of set_time_now() help?
>
> [1]
> https://lists.ettus.com/empathy/thread/YHNX5U6XFKBCV3XPC34LT3JFOG2ZGA2W?h=
ash=3DYHNX5U6XFKBCV3XPC34LT3JFOG2ZGA2W#YHNX5U6XFKBCV3XPC34LT3JFOG2ZGA2W
>
> Regards
> --
>
> C=C3=A9dric Hannotier
> _______________________________________________
> USRP-users mailing list -- usrp-users@lists.ettus.com
> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>

--00000000000069688105c29f25ff
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr"><div>Hi C=C3=A9dric,</div><div><br></div>=
<div>I tried &quot;set_time_unknown_pps()&quot; but got no luck. The sample=
 misalignment remains the same. I suspect this is somehow related to the wa=
rning &quot;[WARNING] [RFNOC::GRAPH] One or more blocks timed out during fl=
ush!&quot; from the UHD, but have no idea about how to fix it. Thanks anywa=
y. <br></div><div><br></div><div>-Hua<br></div></div><br><div class=3D"gmai=
l_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Tue, May 18, 2021 at 9:51=
 AM C=C3=A9dric Hannotier via USRP-users &lt;<a href=3D"mailto:usrp-users@l=
ists.ettus.com">usrp-users@lists.ettus.com</a>&gt; wrote:<br></div><blockqu=
ote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px=
 solid rgb(204,204,204);padding-left:1ex">Hi Hua,<br>
<br>
On 17/05/21 16:27, Zeng, Huacheng wrote:<br>
&gt; Hi Marcus,<br>
&gt; <br>
&gt; Thank you for the reply. I am using SBX (40MHz)=C2=A0 daughterboards f=
or X310.<br>
&gt; For my software setting, I&#39;m not sure what is the best way to pres=
ent the<br>
&gt; details. So I copied my code below. Hopeful it is not messy for you to=
<br>
&gt; review.<br>
&gt; [...]<br>
&gt; int main() {<br>
&gt;=C2=A0 =C2=A0 =C2=A0[...]<br>
&gt;=C2=A0 =C2=A0 =C2=A0sp.sync_opt =3D &quot;internal&quot;; //&quot;pps&q=
uot;, &quot;mimo&quot;<br>
&gt;=C2=A0 =C2=A0 =C2=A0[...]<br>
&gt; void sdr_dev::configure_usrp(sdr_para sp) {<br>
&gt;=C2=A0 =C2=A0 =C2=A0[...]<br>
&gt;=C2=A0 =C2=A0 =C2=A0// clock and time sync_opthronization<br>
&gt;=C2=A0 =C2=A0 =C2=A0if (sync_opt =3D=3D &quot;pps&quot;) {<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0[...]<br>
&gt;=C2=A0 =C2=A0 =C2=A0} else if (sync_opt =3D=3D &quot;mimo&quot;) {<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0[...]<br>
&gt;=C2=A0 =C2=A0 =C2=A0} else {<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0usrp -&gt; set_time_now(uhd::time_spe=
c_t(1.0));<br>
&gt;=C2=A0 =C2=A0 =C2=A0}<br>
<br>
It seems you are using set_time_now() to synchronize<br>
the two daughterboards inside your X310.<br>
Could this be related to [1]?<br>
Does using set_time_unknown_pps() instead of set_time_now() help?<br>
<br>
[1] <a href=3D"https://lists.ettus.com/empathy/thread/YHNX5U6XFKBCV3XPC34LT=
3JFOG2ZGA2W?hash=3DYHNX5U6XFKBCV3XPC34LT3JFOG2ZGA2W#YHNX5U6XFKBCV3XPC34LT3J=
FOG2ZGA2W" rel=3D"noreferrer" target=3D"_blank">https://lists.ettus.com/emp=
athy/thread/YHNX5U6XFKBCV3XPC34LT3JFOG2ZGA2W?hash=3DYHNX5U6XFKBCV3XPC34LT3J=
FOG2ZGA2W#YHNX5U6XFKBCV3XPC34LT3JFOG2ZGA2W</a><br>
<br>
Regards<br>
-- <br>
<br>
C=C3=A9dric Hannotier<br>
_______________________________________________<br>
USRP-users mailing list -- <a href=3D"mailto:usrp-users@lists.ettus.com" ta=
rget=3D"_blank">usrp-users@lists.ettus.com</a><br>
To unsubscribe send an email to <a href=3D"mailto:usrp-users-leave@lists.et=
tus.com" target=3D"_blank">usrp-users-leave@lists.ettus.com</a><br>
</blockquote></div></div>

--00000000000069688105c29f25ff--

--===============8188817194994904574==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============8188817194994904574==--
