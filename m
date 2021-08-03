Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 68B093DF13E
	for <lists+usrp-users@lfdr.de>; Tue,  3 Aug 2021 17:18:17 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id AAFB93847B0
	for <lists+usrp-users@lfdr.de>; Tue,  3 Aug 2021 11:18:16 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=ettus-com.20150623.gappssmtp.com header.i=@ettus-com.20150623.gappssmtp.com header.b="vGDeNzOY";
	dkim-atps=neutral
Received: from mail-ej1-f41.google.com (mail-ej1-f41.google.com [209.85.218.41])
	by mm2.emwd.com (Postfix) with ESMTPS id 67044383D2C
	for <usrp-users@lists.ettus.com>; Tue,  3 Aug 2021 11:17:34 -0400 (EDT)
Received: by mail-ej1-f41.google.com with SMTP id c25so215567ejb.3
        for <usrp-users@lists.ettus.com>; Tue, 03 Aug 2021 08:17:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ettus-com.20150623.gappssmtp.com; s=20150623;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=2bfRNR2NmimfW4JPtAjcHmmAUmIm+wF3DNrw2bnnhwk=;
        b=vGDeNzOYmMU0fQKqoQ3+swPmiSq9IJJTBosJr6tHVBKdTe3ef3nRAj+C33k4W45aRC
         HCNv7pdi9SoLCXKafydFimIaJJ5ZkgXSYOW7kUi/oPxFErWkYhljjDSIfgH5KEXVmVtz
         4PGrKTIiDxpX3SKE5bptS58qXls5zCfaXowh4HSb7El4X51yQ1SFQEB0UgzYM+u0TW2R
         VxLNmNt3UY8IXQRPz2kXzWXvdoyn4Pc9rFWHfCaC6N/uouJzaFTwFk6fzkPoOxZzYQuW
         520IftsajZpX/CsNFQbz7NSofLPTvS29jZ9mXeMY1u00MQobO3d0wTynqP87kQ3fmIsZ
         NpdQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=2bfRNR2NmimfW4JPtAjcHmmAUmIm+wF3DNrw2bnnhwk=;
        b=Mit+wrprKsB9kkEnuHM93OgHyo7WIKHyU//xhj30bCw9Qk3F/cjl9PibJZWmCvzoJk
         SGnMSsTUtH+SPjgKlvh86A7MPdICTzzmfpp/pmAGNRF+zV92D0ngcv8n3zYEQoljrkLR
         GfLi82O8mVSOVADtXZRnh9JgNSoXCbGkxLTHCbZLiAEKuKm+IGG/97pyZHCpechHyX/s
         /DMfW+4Hd0uv0aM0crMTerNMb7VFZf2vvZdTzczwKRi4F3Pv3xA7dxttyFXcAcz+P0y2
         fDh0kXsdgcVilZKC04pg21UgoqWowiCj72GR4qL2qSc2MCrMlGjQC0mGRDTBbVCwoQwR
         A7KQ==
X-Gm-Message-State: AOAM530kaWaaewTxthU6ioylB9TG7ln1DK9cTRL3QSpOZF+Dt9pyVdIx
	Z3e9WT3qasoBIN838YV5c0YdbwWSD4B9SPvEOJusRsM9
X-Google-Smtp-Source: ABdhPJxz2sOez5+ihXPx4D7mc4wr0GzxdBaGqqgw+QdXl5S/3EamTVjJtnWSI9E7oNAVVPoY0MoIk21dV9hjWCEqAOA=
X-Received: by 2002:a17:906:d20a:: with SMTP id w10mr21880112ejz.426.1628003853339;
 Tue, 03 Aug 2021 08:17:33 -0700 (PDT)
MIME-Version: 1.0
References: <bb6acb72-70e9-28b1-326a-ad63945c8e03@gmail.com>
 <CAGNhwTNf4F9gEEgJX_V7v0RWnndgRP7gr3_uF-R82j6sbkS93Q@mail.gmail.com>
 <ca7130e2-3932-e6a0-faab-c281bb14ce24@gmail.com> <CAGNhwTNQq3rU-eXtTK_cKq=5-BeLzZ6VvO7_nz9pWSmfQC+deA@mail.gmail.com>
 <afdd2477-d728-376b-647f-9c45b0f03c67@gmail.com> <CAB__hTT7JvHYt3AJQJ6_dHv1QmZQk7gm3Len5tBVPLAVSyz33w@mail.gmail.com>
 <eab09b45-2ae9-0a25-e66c-57d09146e80a@gmail.com>
In-Reply-To: <eab09b45-2ae9-0a25-e66c-57d09146e80a@gmail.com>
From: Michael Dickens <michael.dickens@ettus.com>
Date: Tue, 3 Aug 2021 11:17:22 -0400
Message-ID: <CAGNhwTP6D-0X7thJ+y-c_EgE=mmDqDveBjcp1meAP2MjiLCoow@mail.gmail.com>
To: Vladica Sark <vladicasark@gmail.com>
Message-ID-Hash: WOQXDQJ5KZJTDJOBHSXVAAMAFJKTF3JS
X-Message-ID-Hash: WOQXDQJ5KZJTDJOBHSXVAAMAFJKTF3JS
X-MailFrom: michael.dickens@ettus.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Optical SFP+ adapters for N321
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/WOQXDQJ5KZJTDJOBHSXVAAMAFJKTF3JS/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============3779798285795999886=="

--===============3779798285795999886==
Content-Type: multipart/alternative; boundary="0000000000005f24fc05c8a92fd4"

--0000000000005f24fc05c8a92fd4
Content-Type: text/plain; charset="UTF-8"

Hi Vladica & the USRP community - For those of you who have White Rabbit
equipment, you can download brand new hot off the buildbots WR FPGA images
(WX and XQ) for your N3x0 or N32x here <
https://drive.google.com/drive/folders/1y-AJA2ZBaHgwyRCiOfatfAyLSX0t1G7l?usp=sharing>
. Note that these are for UHD 4.1.0.X -- UHD public GIT master; GIT branch
UHD-4.1, or 4.1.0.0 or 4.1.0.1 releases. I've tested these FPGA images on
N310 revision 5 and 7, and N320 (current revision); just up through
"benchmark_rate" when specifying "time_source=sfp0" and multiple channels,
both on the USRP and remote to a host ... all works fine! Thus, I wanted to
get the FPGA images out to customers for testing / evaluation ... If you do
so, I'd love to hear of your successes / issues! - MLD


On Tue, Jul 13, 2021 at 2:01 PM Vladica Sark <vladicasark@gmail.com> wrote:

> Hi Rob,
>
> Thanks for this useful information.
> According to Michael it should be fixed mid/late July 2021, so pretty
> soon. Meanwhile I can only switch back to X310 probably, and see if it
> works there.
>
> Let's hope it would be fixed soon.
>
>
> BR,
> Vladica
>
>
> On 12.07.21 17:47, Rob Kossler wrote:
> > Hi Vladica,
> > From the 'changelog', it appears that N321 support began with release
> > 3.14.  But, at that point I believe that WR was already broken.  So, I
> > think that there is no solution to your problem other than to wait for
> > Ettus to fix the WR issues.  However, WR has been broken for a while
> > (note user-list posts from last fall Sept  & Dec) so I don't know when
> > this will be working again.
> > Rob
> >
> >
> > On Wed, Jul 7, 2021 at 10:26 AM Vladica Sark <vladicasark@gmail.com
> > <mailto:vladicasark@gmail.com>> wrote:
> >
> >     Hi Michael,
> >
> >     I obtained the necessary SFP+ optical adapters and now I am trying to
> >     put uhd 3.13.1.0 on the N321s in order to use the WR synchronization.
> >     Unfortunately, when I update the sd card image with 3.13.1.0 the N321
> >     boots but the SFP0 and SFP1 do not go up. When I try to run
> >     uhd_find_devices, on a terminal using the USB port it says no UHD
> >     devices are found.
> >
> >     I believe that the right FPGA image should be put on the FPGA, but
> >     the
> >     ways described in Knowledgebase are not working.
> >
> >     Is there a way to put the version 3.13.1.0 on the N321? I have tried
> >     version 4.0.0.0 and it is working fine, but WR is broken.
> >
> >     BR,
> >     Vladica
> >
> >
> >     On 22.06.21 21:31, Michael Dickens wrote:
> >     > I'm using primarily FS adapters, cables (single and multi mode),
> >     and
> >     > fiber connectors (to allow multiplexing lanes). The adapters I
> >     bought
> >     > were "generic" and had to be tweaked using an FS BOX to be fully
> >     > compatible with Intel or Mellanox NICs. This tweaking seems to have
> >     > helped a lot with the 100 Gb interface (E810); the 10 Gb
> >     interfaces do
> >     > not show much benefit to be manufacturer specific -- though I'm
> >     sure
> >     > it doesn't hurt! I have not tried a multi-mode to single mode
> >     splitter
> >     > / joiner, but I'd suppose they do exist & if anybody here has had
> >     > experience that would be useful to hear about! I hope this is
> >     useful!
> >     > - MLD
> >     >
> >     >
> >     > On Tue, Jun 22, 2021 at 10:05 AM Vladica Sark
> >     <vladicasark@gmail.com <mailto:vladicasark@gmail.com>
> >     > <mailto:vladicasark@gmail.com <mailto:vladicasark@gmail.com>>>
> >     wrote:
> >     >
> >     >     Hi Michael,
> >     >
> >     >     Thanks for the answer. For now for the data I am using DAC
> >     cables,
> >     >     but
> >     >     we would need larger distances, i.e. 50+ meters, and for
> >     this I would
> >     >     need fibers for both WR and data.
> >     >
> >     >     Is there also some optical multiplexer for these wavelengths,
> in
> >     >     order
> >     >     to use a simplex fiber, for both WR and data?
> >     >
> >     >     BR,
> >     >     Vladica
> >     >
> >     >     On 22.06.21 15:41, Michael Dickens wrote:
> >     >     > Hi Vladica - I've tested a variety of fiber adapters and
> >     cables
> >     >     with
> >     >     > no issues (e.g., ZyXEL, FS, Axcen). The primary keys are
> >     to make
> >     >     sure
> >     >     > the various related parameters match up between the
> >     adapters and
> >     >     > cables and devices. For example: If the adapter is 1490/1310,
> >     >     then you
> >     >     > want to make sure the cable is for the same wavelengths. Same
> >     >     for the
> >     >     > fiber polish and other parameters (single / dual fiber ; .
> >     Some are
> >     >     > easier than others, none of this is too difficult luckily!
> >     >     >
> >     >     > For short distances, a DAC cable will work for all of the
> >     N320/N321
> >     >     > SFP interfaces.
> >     >     >
> >     >     > At the moment, WR support is being fixed for UHD 3.14.0.0 to
> >     >     current.
> >     >     > If you -require- WR support -right now- you can use UHD
> >     3.13.1.0
> >     >     while
> >     >     > we're working out how to fix WR for newer UHD. We expect
> >     the fix
> >     >     to be
> >     >     > available to customers sometime in mid/late-July (2021); once
> >     >     the fix
> >     >     > is determined and verified we will commit it to the various
> >     >     branches
> >     >     > of the UHD repository, and it will be available in UHD
> >     -after- the
> >     >     > forthcoming 4.1 release. It will be available in the
> >     public UHD
> >     >     > repository for folks to use to patch UHD between releases.
> >     >     >
> >     >     > I hope this is useful! - MLD
> >     >     >
> >     >     >
> >     >     > On Tue, Jun 22, 2021 at 6:19 AM Vladica Sark
> >     >     <vladicasark@gmail.com <mailto:vladicasark@gmail.com>
> >     <mailto:vladicasark@gmail.com <mailto:vladicasark@gmail.com>>
> >     >     > <mailto:vladicasark@gmail.com
> >     <mailto:vladicasark@gmail.com> <mailto:vladicasark@gmail.com
> >     <mailto:vladicasark@gmail.com>>>>
> >     >     wrote:
> >     >     >
> >     >     >     Dear all,
> >     >     >
> >     >     >     I would like to use N321 with WRS 3/18 which uses optical
> >     >     cables. I
> >     >     >     would like to use also for the 10 Gbit SFP1 optical SFP+
> >     >     transceiver.
> >     >     >     Do you have some recommended optical SFP+ adapters,
> >     duplex and,
> >     >     >     preferably, simplex?
> >     >     >     The idea is to use a duplex monomode fiber, one fiber for
> >     >     the 10 Gbit
> >     >     >     data and one fiber for WRS synchronization.
> >     >     >     They would be connected to 10 Gbit switch or QNAP
> >     >     Thunderbolt to SFP+
> >     >     >     adapter, so they do not have to be Intel.
> >     >     >
> >     >     >
> >     >     >     Best regards,
> >     >     >
> >     >     >     Vladica
> >     >     >
> >     >     >  _______________________________________________
> >     >     >     USRP-users mailing list -- usrp-users@lists.ettus.com
> >     <mailto:usrp-users@lists.ettus.com>
> >     >     <mailto:usrp-users@lists.ettus.com
> >     <mailto:usrp-users@lists.ettus.com>>
> >     >     >     <mailto:usrp-users@lists.ettus.com
> >     <mailto:usrp-users@lists.ettus.com>
> >     >     <mailto:usrp-users@lists.ettus.com
> >     <mailto:usrp-users@lists.ettus.com>>>
> >     >     >     To unsubscribe send an email to
> >     > usrp-users-leave@lists.ettus.com
> >     <mailto:usrp-users-leave@lists.ettus.com>
> >     >     <mailto:usrp-users-leave@lists.ettus.com
> >     <mailto:usrp-users-leave@lists.ettus.com>>
> >     >     >     <mailto:usrp-users-leave@lists.ettus.com
> >     <mailto:usrp-users-leave@lists.ettus.com>
> >     >     <mailto:usrp-users-leave@lists.ettus.com
> >     <mailto:usrp-users-leave@lists.ettus.com>>>
> >     >     >
> >     >
> >     _______________________________________________
> >     USRP-users mailing list -- usrp-users@lists.ettus.com
> >     <mailto:usrp-users@lists.ettus.com>
> >     To unsubscribe send an email to usrp-users-leave@lists.ettus.com
> >     <mailto:usrp-users-leave@lists.ettus.com>
> >
>

--0000000000005f24fc05c8a92fd4
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi=C2=A0Vladica &amp; the USRP community - For those of yo=
u who have White Rabbit equipment, you can download brand new hot off the b=
uildbots WR FPGA images (WX and XQ) for your N3x0 or N32x here &lt;=C2=A0<a=
 href=3D"https://drive.google.com/drive/folders/1y-AJA2ZBaHgwyRCiOfatfAyLSX=
0t1G7l?usp=3Dsharing">https://drive.google.com/drive/folders/1y-AJA2ZBaHgwy=
RCiOfatfAyLSX0t1G7l?usp=3Dsharing</a>&gt; . Note that these are for UHD 4.1=
.0.X -- UHD public GIT master; GIT branch UHD-4.1, or 4.1.0.0 or 4.1.0.1 re=
leases. I&#39;ve tested these FPGA images on N310 revision 5 and 7, and N32=
0 (current revision); just up through &quot;benchmark_rate&quot; when speci=
fying &quot;time_source=3Dsfp0&quot; and multiple channels, both on the USR=
P and remote to a host ... all works fine! Thus, I wanted to get the FPGA i=
mages out to customers for testing / evaluation ... If you do so, I&#39;d l=
ove to hear of your successes / issues! - MLD<div><br></div></div><br><div =
class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Tue, Jul 13,=
 2021 at 2:01 PM Vladica Sark &lt;<a href=3D"mailto:vladicasark@gmail.com">=
vladicasark@gmail.com</a>&gt; wrote:<br></div><blockquote class=3D"gmail_qu=
ote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,20=
4);padding-left:1ex">Hi Rob,<br>
<br>
Thanks for this useful information.<br>
According to Michael it should be fixed mid/late July 2021, so pretty <br>
soon. Meanwhile I can only switch back to X310 probably, and see if it <br>
works there.<br>
<br>
Let&#39;s hope it would be fixed soon.<br>
<br>
<br>
BR,<br>
Vladica<br>
<br>
<br>
On 12.07.21 17:47, Rob Kossler wrote:<br>
&gt; Hi Vladica,<br>
&gt; From the &#39;changelog&#39;, it appears that N321 support began with =
release <br>
&gt; 3.14.=C2=A0 But, at that point I believe that WR was already broken.=
=C2=A0 So, I <br>
&gt; think that there is no solution=C2=A0to your problem other than to wai=
t for <br>
&gt; Ettus to fix the WR issues.=C2=A0 However, WR has been broken for a wh=
ile <br>
&gt; (note user-list posts from last fall Sept=C2=A0 &amp; Dec) so I don&#3=
9;t know when <br>
&gt; this will be working again.<br>
&gt; Rob<br>
&gt;<br>
&gt;<br>
&gt; On Wed, Jul 7, 2021 at 10:26 AM Vladica Sark &lt;<a href=3D"mailto:vla=
dicasark@gmail.com" target=3D"_blank">vladicasark@gmail.com</a> <br>
&gt; &lt;mailto:<a href=3D"mailto:vladicasark@gmail.com" target=3D"_blank">=
vladicasark@gmail.com</a>&gt;&gt; wrote:<br>
&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0Hi Michael,<br>
&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0I obtained the necessary SFP+ optical adapters and =
now I am trying to<br>
&gt;=C2=A0 =C2=A0 =C2=A0put uhd 3.13.1.0 on the N321s in order to use the W=
R synchronization.<br>
&gt;=C2=A0 =C2=A0 =C2=A0Unfortunately, when I update the sd card image with=
 3.13.1.0 the N321<br>
&gt;=C2=A0 =C2=A0 =C2=A0boots but the SFP0 and SFP1 do not go up. When I tr=
y to run<br>
&gt;=C2=A0 =C2=A0 =C2=A0uhd_find_devices, on a terminal using the USB port =
it says no UHD<br>
&gt;=C2=A0 =C2=A0 =C2=A0devices are found.<br>
&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0I believe that the right FPGA image should be put o=
n the FPGA, but<br>
&gt;=C2=A0 =C2=A0 =C2=A0the<br>
&gt;=C2=A0 =C2=A0 =C2=A0ways described in Knowledgebase are not working.<br=
>
&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0Is there a way to put the version 3.13.1.0 on the N=
321? I have tried<br>
&gt;=C2=A0 =C2=A0 =C2=A0version 4.0.0.0 and it is working fine, but WR is b=
roken.<br>
&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0BR,<br>
&gt;=C2=A0 =C2=A0 =C2=A0Vladica<br>
&gt;<br>
&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0On 22.06.21 21:31, Michael Dickens wrote:<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt; I&#39;m using primarily FS adapters, cables (s=
ingle and multi mode),<br>
&gt;=C2=A0 =C2=A0 =C2=A0and<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt; fiber connectors (to allow multiplexing lanes)=
. The adapters I<br>
&gt;=C2=A0 =C2=A0 =C2=A0bought<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt; were &quot;generic&quot; and had to be tweaked=
 using an FS BOX to be fully<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt; compatible with Intel or Mellanox NICs. This t=
weaking seems to have<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt; helped a lot with the 100 Gb interface (E810);=
 the 10 Gb<br>
&gt;=C2=A0 =C2=A0 =C2=A0interfaces do<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt; not show much benefit to be manufacturer speci=
fic -- though=C2=A0I&#39;m<br>
&gt;=C2=A0 =C2=A0 =C2=A0sure<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt; it doesn&#39;t hurt! I have not tried a multi-=
mode to single mode<br>
&gt;=C2=A0 =C2=A0 =C2=A0splitter<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt; / joiner, but I&#39;d suppose they do exist &a=
mp; if anybody here has had<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt; experience that would be useful to hear about!=
 I hope this is<br>
&gt;=C2=A0 =C2=A0 =C2=A0useful!<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt; - MLD<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt; On Tue, Jun 22, 2021 at 10:05 AM Vladica Sark<=
br>
&gt;=C2=A0 =C2=A0 =C2=A0&lt;<a href=3D"mailto:vladicasark@gmail.com" target=
=3D"_blank">vladicasark@gmail.com</a> &lt;mailto:<a href=3D"mailto:vladicas=
ark@gmail.com" target=3D"_blank">vladicasark@gmail.com</a>&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt; &lt;mailto:<a href=3D"mailto:vladicasark@gmail=
.com" target=3D"_blank">vladicasark@gmail.com</a> &lt;mailto:<a href=3D"mai=
lto:vladicasark@gmail.com" target=3D"_blank">vladicasark@gmail.com</a>&gt;&=
gt;&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0wrote:<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;=C2=A0 =C2=A0 =C2=A0Hi Michael,<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;=C2=A0 =C2=A0 =C2=A0Thanks for the answer. For =
now for the data I am using DAC<br>
&gt;=C2=A0 =C2=A0 =C2=A0cables,<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;=C2=A0 =C2=A0 =C2=A0but<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;=C2=A0 =C2=A0 =C2=A0we would need larger distan=
ces, i.e. 50+ meters, and for<br>
&gt;=C2=A0 =C2=A0 =C2=A0this I would<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;=C2=A0 =C2=A0 =C2=A0need fibers for both WR and=
 data.<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;=C2=A0 =C2=A0 =C2=A0Is there also some optical =
multiplexer for these wavelengths, in<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;=C2=A0 =C2=A0 =C2=A0order<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;=C2=A0 =C2=A0 =C2=A0to use a simplex fiber, for=
 both WR and data?<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;=C2=A0 =C2=A0 =C2=A0BR,<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;=C2=A0 =C2=A0 =C2=A0Vladica<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;=C2=A0 =C2=A0 =C2=A0On 22.06.21 15:41, Michael =
Dickens wrote:<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;=C2=A0 =C2=A0 =C2=A0&gt; Hi=C2=A0Vladica - I&#3=
9;ve tested a variety of fiber adapters and<br>
&gt;=C2=A0 =C2=A0 =C2=A0cables<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;=C2=A0 =C2=A0 =C2=A0with<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;=C2=A0 =C2=A0 =C2=A0&gt; no issues (e.g., ZyXEL=
, FS, Axcen). The primary keys are<br>
&gt;=C2=A0 =C2=A0 =C2=A0to make<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;=C2=A0 =C2=A0 =C2=A0sure<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;=C2=A0 =C2=A0 =C2=A0&gt; the various related pa=
rameters match up between the<br>
&gt;=C2=A0 =C2=A0 =C2=A0adapters and<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;=C2=A0 =C2=A0 =C2=A0&gt; cables and devices. Fo=
r example: If the adapter is 1490/1310,<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;=C2=A0 =C2=A0 =C2=A0then you<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;=C2=A0 =C2=A0 =C2=A0&gt; want to make sure the =
cable is for the same wavelengths. Same<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;=C2=A0 =C2=A0 =C2=A0for the<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;=C2=A0 =C2=A0 =C2=A0&gt; fiber polish and other=
 parameters=C2=A0(single / dual fiber ; .<br>
&gt;=C2=A0 =C2=A0 =C2=A0Some are<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;=C2=A0 =C2=A0 =C2=A0&gt; easier than others, no=
ne of this is too difficult luckily!<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;=C2=A0 =C2=A0 =C2=A0&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;=C2=A0 =C2=A0 =C2=A0&gt; For short distances, a=
 DAC cable will work for all of the<br>
&gt;=C2=A0 =C2=A0 =C2=A0N320/N321<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;=C2=A0 =C2=A0 =C2=A0&gt; SFP interfaces.<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;=C2=A0 =C2=A0 =C2=A0&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;=C2=A0 =C2=A0 =C2=A0&gt; At the moment, WR supp=
ort is being fixed for UHD 3.14.0.0 to<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;=C2=A0 =C2=A0 =C2=A0current.<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;=C2=A0 =C2=A0 =C2=A0&gt; If you -require- WR su=
pport -right now- you can use UHD<br>
&gt;=C2=A0 =C2=A0 =C2=A03.13.1.0<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;=C2=A0 =C2=A0 =C2=A0while<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;=C2=A0 =C2=A0 =C2=A0&gt; we&#39;re working out =
how to fix WR for newer UHD. We expect<br>
&gt;=C2=A0 =C2=A0 =C2=A0the fix<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;=C2=A0 =C2=A0 =C2=A0to be<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;=C2=A0 =C2=A0 =C2=A0&gt; available to customers=
 sometime in mid/late-July (2021); once<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;=C2=A0 =C2=A0 =C2=A0the fix<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;=C2=A0 =C2=A0 =C2=A0&gt; is determined and veri=
fied we will commit it to the various<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;=C2=A0 =C2=A0 =C2=A0branches<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;=C2=A0 =C2=A0 =C2=A0&gt; of the UHD repository,=
 and it will be available in UHD<br>
&gt;=C2=A0 =C2=A0 =C2=A0-after- the<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;=C2=A0 =C2=A0 =C2=A0&gt; forthcoming 4.1=C2=A0r=
elease. It will be available in the<br>
&gt;=C2=A0 =C2=A0 =C2=A0public UHD<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;=C2=A0 =C2=A0 =C2=A0&gt; repository for folks t=
o use to patch UHD between releases.<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;=C2=A0 =C2=A0 =C2=A0&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;=C2=A0 =C2=A0 =C2=A0&gt; I hope this is useful!=
 - MLD<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;=C2=A0 =C2=A0 =C2=A0&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;=C2=A0 =C2=A0 =C2=A0&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;=C2=A0 =C2=A0 =C2=A0&gt; On Tue, Jun 22, 2021 a=
t 6:19 AM Vladica Sark<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;=C2=A0 =C2=A0 =C2=A0&lt;<a href=3D"mailto:vladi=
casark@gmail.com" target=3D"_blank">vladicasark@gmail.com</a> &lt;mailto:<a=
 href=3D"mailto:vladicasark@gmail.com" target=3D"_blank">vladicasark@gmail.=
com</a>&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0&lt;mailto:<a href=3D"mailto:vladicasark@gmail.com"=
 target=3D"_blank">vladicasark@gmail.com</a> &lt;mailto:<a href=3D"mailto:v=
ladicasark@gmail.com" target=3D"_blank">vladicasark@gmail.com</a>&gt;&gt;<b=
r>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;=C2=A0 =C2=A0 =C2=A0&gt; &lt;mailto:<a href=3D"=
mailto:vladicasark@gmail.com" target=3D"_blank">vladicasark@gmail.com</a><b=
r>
&gt;=C2=A0 =C2=A0 =C2=A0&lt;mailto:<a href=3D"mailto:vladicasark@gmail.com"=
 target=3D"_blank">vladicasark@gmail.com</a>&gt; &lt;mailto:<a href=3D"mail=
to:vladicasark@gmail.com" target=3D"_blank">vladicasark@gmail.com</a><br>
&gt;=C2=A0 =C2=A0 =C2=A0&lt;mailto:<a href=3D"mailto:vladicasark@gmail.com"=
 target=3D"_blank">vladicasark@gmail.com</a>&gt;&gt;&gt;&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;=C2=A0 =C2=A0 =C2=A0wrote:<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;=C2=A0 =C2=A0 =C2=A0&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;=C2=A0 =C2=A0 =C2=A0&gt;=C2=A0 =C2=A0 =C2=A0Dea=
r all,<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;=C2=A0 =C2=A0 =C2=A0&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;=C2=A0 =C2=A0 =C2=A0&gt;=C2=A0 =C2=A0 =C2=A0I w=
ould like to use N321 with WRS 3/18 which uses optical<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;=C2=A0 =C2=A0 =C2=A0cables. I<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;=C2=A0 =C2=A0 =C2=A0&gt;=C2=A0 =C2=A0 =C2=A0wou=
ld like to use also for the 10 Gbit SFP1 optical SFP+<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;=C2=A0 =C2=A0 =C2=A0transceiver.<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;=C2=A0 =C2=A0 =C2=A0&gt;=C2=A0 =C2=A0 =C2=A0Do =
you have some recommended optical SFP+ adapters,<br>
&gt;=C2=A0 =C2=A0 =C2=A0duplex and,<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;=C2=A0 =C2=A0 =C2=A0&gt;=C2=A0 =C2=A0 =C2=A0pre=
ferably, simplex?<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;=C2=A0 =C2=A0 =C2=A0&gt;=C2=A0 =C2=A0 =C2=A0The=
 idea is to use a duplex monomode fiber, one fiber for<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;=C2=A0 =C2=A0 =C2=A0the 10 Gbit<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;=C2=A0 =C2=A0 =C2=A0&gt;=C2=A0 =C2=A0 =C2=A0dat=
a and one fiber for WRS synchronization.<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;=C2=A0 =C2=A0 =C2=A0&gt;=C2=A0 =C2=A0 =C2=A0The=
y would be connected to 10 Gbit switch or QNAP<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;=C2=A0 =C2=A0 =C2=A0Thunderbolt to SFP+<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;=C2=A0 =C2=A0 =C2=A0&gt;=C2=A0 =C2=A0 =C2=A0ada=
pter, so they do not have to be Intel.<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;=C2=A0 =C2=A0 =C2=A0&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;=C2=A0 =C2=A0 =C2=A0&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;=C2=A0 =C2=A0 =C2=A0&gt;=C2=A0 =C2=A0 =C2=A0Bes=
t regards,<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;=C2=A0 =C2=A0 =C2=A0&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;=C2=A0 =C2=A0 =C2=A0&gt;=C2=A0 =C2=A0 =C2=A0Vla=
dica<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;=C2=A0 =C2=A0 =C2=A0&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;=C2=A0 =C2=A0 =C2=A0&gt; =C2=A0________________=
_______________________________<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;=C2=A0 =C2=A0 =C2=A0&gt;=C2=A0 =C2=A0 =C2=A0USR=
P-users mailing list -- <a href=3D"mailto:usrp-users@lists.ettus.com" targe=
t=3D"_blank">usrp-users@lists.ettus.com</a><br>
&gt;=C2=A0 =C2=A0 =C2=A0&lt;mailto:<a href=3D"mailto:usrp-users@lists.ettus=
.com" target=3D"_blank">usrp-users@lists.ettus.com</a>&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;=C2=A0 =C2=A0 =C2=A0&lt;mailto:<a href=3D"mailt=
o:usrp-users@lists.ettus.com" target=3D"_blank">usrp-users@lists.ettus.com<=
/a><br>
&gt;=C2=A0 =C2=A0 =C2=A0&lt;mailto:<a href=3D"mailto:usrp-users@lists.ettus=
.com" target=3D"_blank">usrp-users@lists.ettus.com</a>&gt;&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;=C2=A0 =C2=A0 =C2=A0&gt;=C2=A0 =C2=A0 =C2=A0&lt=
;mailto:<a href=3D"mailto:usrp-users@lists.ettus.com" target=3D"_blank">usr=
p-users@lists.ettus.com</a><br>
&gt;=C2=A0 =C2=A0 =C2=A0&lt;mailto:<a href=3D"mailto:usrp-users@lists.ettus=
.com" target=3D"_blank">usrp-users@lists.ettus.com</a>&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;=C2=A0 =C2=A0 =C2=A0&lt;mailto:<a href=3D"mailt=
o:usrp-users@lists.ettus.com" target=3D"_blank">usrp-users@lists.ettus.com<=
/a><br>
&gt;=C2=A0 =C2=A0 =C2=A0&lt;mailto:<a href=3D"mailto:usrp-users@lists.ettus=
.com" target=3D"_blank">usrp-users@lists.ettus.com</a>&gt;&gt;&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;=C2=A0 =C2=A0 =C2=A0&gt;=C2=A0 =C2=A0 =C2=A0To =
unsubscribe send an email to<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt; <a href=3D"mailto:usrp-users-leave@lists.ettus=
.com" target=3D"_blank">usrp-users-leave@lists.ettus.com</a><br>
&gt;=C2=A0 =C2=A0 =C2=A0&lt;mailto:<a href=3D"mailto:usrp-users-leave@lists=
.ettus.com" target=3D"_blank">usrp-users-leave@lists.ettus.com</a>&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;=C2=A0 =C2=A0 =C2=A0&lt;mailto:<a href=3D"mailt=
o:usrp-users-leave@lists.ettus.com" target=3D"_blank">usrp-users-leave@list=
s.ettus.com</a><br>
&gt;=C2=A0 =C2=A0 =C2=A0&lt;mailto:<a href=3D"mailto:usrp-users-leave@lists=
.ettus.com" target=3D"_blank">usrp-users-leave@lists.ettus.com</a>&gt;&gt;<=
br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;=C2=A0 =C2=A0 =C2=A0&gt;=C2=A0 =C2=A0 =C2=A0&lt=
;mailto:<a href=3D"mailto:usrp-users-leave@lists.ettus.com" target=3D"_blan=
k">usrp-users-leave@lists.ettus.com</a><br>
&gt;=C2=A0 =C2=A0 =C2=A0&lt;mailto:<a href=3D"mailto:usrp-users-leave@lists=
.ettus.com" target=3D"_blank">usrp-users-leave@lists.ettus.com</a>&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;=C2=A0 =C2=A0 =C2=A0&lt;mailto:<a href=3D"mailt=
o:usrp-users-leave@lists.ettus.com" target=3D"_blank">usrp-users-leave@list=
s.ettus.com</a><br>
&gt;=C2=A0 =C2=A0 =C2=A0&lt;mailto:<a href=3D"mailto:usrp-users-leave@lists=
.ettus.com" target=3D"_blank">usrp-users-leave@lists.ettus.com</a>&gt;&gt;&=
gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;=C2=A0 =C2=A0 =C2=A0&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0_______________________________________________<br>
&gt;=C2=A0 =C2=A0 =C2=A0USRP-users mailing list -- <a href=3D"mailto:usrp-u=
sers@lists.ettus.com" target=3D"_blank">usrp-users@lists.ettus.com</a><br>
&gt;=C2=A0 =C2=A0 =C2=A0&lt;mailto:<a href=3D"mailto:usrp-users@lists.ettus=
.com" target=3D"_blank">usrp-users@lists.ettus.com</a>&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0To unsubscribe send an email to <a href=3D"mailto:u=
srp-users-leave@lists.ettus.com" target=3D"_blank">usrp-users-leave@lists.e=
ttus.com</a><br>
&gt;=C2=A0 =C2=A0 =C2=A0&lt;mailto:<a href=3D"mailto:usrp-users-leave@lists=
.ettus.com" target=3D"_blank">usrp-users-leave@lists.ettus.com</a>&gt;<br>
&gt;<br>
</blockquote></div>

--0000000000005f24fc05c8a92fd4--

--===============3779798285795999886==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============3779798285795999886==--
