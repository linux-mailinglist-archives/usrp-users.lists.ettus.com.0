Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 8C1F03E91F9
	for <lists+usrp-users@lfdr.de>; Wed, 11 Aug 2021 14:54:26 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 6086E3843D2
	for <lists+usrp-users@lfdr.de>; Wed, 11 Aug 2021 08:54:25 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=ettus-com.20150623.gappssmtp.com header.i=@ettus-com.20150623.gappssmtp.com header.b="Hg+IRUfL";
	dkim-atps=neutral
Received: from mail-ej1-f53.google.com (mail-ej1-f53.google.com [209.85.218.53])
	by mm2.emwd.com (Postfix) with ESMTPS id 74114383E7F
	for <usrp-users@lists.ettus.com>; Wed, 11 Aug 2021 08:53:43 -0400 (EDT)
Received: by mail-ej1-f53.google.com with SMTP id o23so4099785ejc.3
        for <usrp-users@lists.ettus.com>; Wed, 11 Aug 2021 05:53:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ettus-com.20150623.gappssmtp.com; s=20150623;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=k3PApRZFW124fzZrqeOVuOngLhKyUV9uC1MwVXlr9mU=;
        b=Hg+IRUfLASGqzTOj5jfkWMm9QdcqbBJgmS+baFBqBbGfqjF9S530PsChkAxgEfnz0r
         CBB+P2n48aYuku6hSsz5dpVDsWSnsGT6ulzsHd7vinB/EBNW3pYFfdXm1q8PSozdbNni
         MlFZQisaCqwLSSwDVAVOA7FIOe+HGbuXAiIi1n+82wDM0IjIokGdnpZzvAO44XfKC/Br
         iIifUT+LNEEOCVMTebAKhwQ+Q+tRcFFf43f+XAM30ZPh4K5gJz04QXdUXLjGp8AHKtXJ
         pcfGbbZVQ5nqV9VlAu2UXFE1w4YVZaG/07fdvIqCCoB9eS+G8J75tDTxcAtoFoRKVSEu
         4GAw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=k3PApRZFW124fzZrqeOVuOngLhKyUV9uC1MwVXlr9mU=;
        b=UGslrwrF0wEQjONwyyvmOJIvWFkVzQnRIBepJtQ9fXhEspf+qX3eLg9lTmTtnS/GnV
         xwEDTS22i9GhdsmwJOMgNyFKc1Upz/GaKUOfKZQXivZISYfnMJmRJ9kugcimjUA6HQHV
         ZYOq9xRZSMtAl2LBxOpLK3kiEfP9FOdHU9BTy9s1UtmvxVLmIaZyYiaGWiRs0jf4aAr5
         2SPYbqEMlkYHhz5uhfNyAA6RspvqjpOqsFzBIqPf38e+zA/VE5WqM2QzskooHRT6oJ+t
         NyaSZmENKjtdQ1PdKXmWv2UuaHZjK/gDgnIi2JSw+9CzvLmujjtkmzCGeoEf9CMiWvPs
         Offw==
X-Gm-Message-State: AOAM533NTEp3Hi02NH9WdmCSeNndQQ8tR/xYKtm94T/lZkU5gwTy/ek0
	pvI/IRqFjfnb71YgKqWus2wA2/vEwcfKWSX2vDCVBX78
X-Google-Smtp-Source: ABdhPJzYFnRxadaabVgtwb0GU4/SrAX/98K7EAziCHWulR7UIwbtI9ZDKj9WjKhZyzBXykj/nbuJO9idre/eFUSyXJE=
X-Received: by 2002:a17:906:2792:: with SMTP id j18mr3543866ejc.168.1628686422375;
 Wed, 11 Aug 2021 05:53:42 -0700 (PDT)
MIME-Version: 1.0
References: <c6aa89dd-f347-6094-3b6b-319b506faadf@comcast.net> <E0638E2A-C2D8-4258-A334-001D11E67F7F@gmail.com>
In-Reply-To: <E0638E2A-C2D8-4258-A334-001D11E67F7F@gmail.com>
From: Michael Dickens <michael.dickens@ettus.com>
Date: Wed, 11 Aug 2021 08:53:31 -0400
Message-ID: <CAGNhwTOCg=9kne-5jcW3PRGOJaov-3c+obt0didmw0PQmVA=TQ@mail.gmail.com>
To: Paul Atreides <maud.dib1984@gmail.com>
Message-ID-Hash: SATT4ALDK2LZ6E3UNNE2OWHH4UKX57DS
X-Message-ID-Hash: SATT4ALDK2LZ6E3UNNE2OWHH4UKX57DS
X-MailFrom: michael.dickens@ettus.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: USRP list <usrp-users@lists.ettus.com>
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: B2XX radios don't continue on overflows
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/SATT4ALDK2LZ6E3UNNE2OWHH4UKX57DS/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============2477693805282181317=="

--===============2477693805282181317==
Content-Type: multipart/alternative; boundary="000000000000a8101405c9481ba4"

--000000000000a8101405c9481ba4
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

FYI Ron's patch is integrated in the UHD-4.0 and UHD-4.1 and master
branches, and was in the UHD 4.1.0.0 release. It was not part of the UHD
4.0.0.0 release, and has not been backported to the UHD-3.15-LTS (or prior)
branch. - MLD

UHD-4.0 :
https://github.com/EttusResearch/uhd/commit/3d9d68af799c73dd8bfe566294461a3=
55ced4c56
UHD-4.1 and master :
https://github.com/EttusResearch/uhd/commit/70e1f0f0c697d6522e3a87e2de93e34=
e375decb4

On Wed, Aug 11, 2021 at 2:52 AM Paul Atreides <maud.dib1984@gmail.com>
wrote:

> Thanks so much Ron. I Will test this first thing in the morning=E2=80=A6a=
lthough I
> guess technically it is morning.
> Talk soon
> <end transmission>
>
> On Aug 11, 2021, at 02:17, Ron Economos <w6rz@comcast.net> wrote:
>
> =EF=BB=BF
>
> I have a patch that I've tested to work well. In UHD v4.0.0.0, add this
> line of code:
>
> diff --git a/host/lib/usrp/cores/rx_vita_core_3000.cpp
> b/host/lib/usrp/cores/rx_vita_core_3000.cpp
> index 4b09f75fd..368ae8e0a 100644
> --- a/host/lib/usrp/cores/rx_vita_core_3000.cpp
> +++ b/host/lib/usrp/cores/rx_vita_core_3000.cpp
> @@ -117,6 +117,9 @@ struct rx_vita_core_3000_impl : rx_vita_core_3000
>          cmd_word |=3D uint32_t((inst_stop) ? 1 : 0) << 28;
>          cmd_word |=3D (inst_samps) ? stream_cmd.num_samps : ((inst_stop)=
 ?
> 0 : 1);
>
> +        _continuous_streaming =3D stream_cmd.stream_mode
> +                                =3D=3D
> stream_cmd_t::STREAM_MODE_START_CONTINUOUS;
> +
>          // issue the stream command
>          _iface->poke32(REG_CTRL_CMD, cmd_word);
>          const uint64_t ticks =3D
>
> Ron
> On 8/10/21 10:48 PM, Paul Atreides wrote:
>
> what is the current guidance until this bug is fixed? i've recompiled UHD
> 3 times now.
> UHD4.0
> UHD4.1
> master
> all of them have the same issue, if i get even one overflow in gnuradio
> the screen locks up, in rx_benchmark/rx_samples_to_file the program
> terminates early.
>
> when will this be fixed?
>
> _______________________________________________
> USRP-users mailing list -- usrp-users@lists.ettus.com
> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>
> _______________________________________________
> USRP-users mailing list -- usrp-users@lists.ettus.com
> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>
> _______________________________________________
> USRP-users mailing list -- usrp-users@lists.ettus.com
> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>

--000000000000a8101405c9481ba4
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>FYI Ron&#39;s patch is integrated in the UHD-4.0 and =
UHD-4.1 and master branches, and was in the UHD 4.1.0.0 release. It was not=
 part of the UHD 4.0.0.0 release, and has not been backported to the UHD-3.=
15-LTS (or prior) branch. - MLD<br></div><div><br></div><div>UHD-4.0 :=C2=
=A0<a href=3D"https://github.com/EttusResearch/uhd/commit/3d9d68af799c73dd8=
bfe566294461a355ced4c56">https://github.com/EttusResearch/uhd/commit/3d9d68=
af799c73dd8bfe566294461a355ced4c56</a></div><div>UHD-4.1 and master :=C2=A0=
<a href=3D"https://github.com/EttusResearch/uhd/commit/70e1f0f0c697d6522e3a=
87e2de93e34e375decb4">https://github.com/EttusResearch/uhd/commit/70e1f0f0c=
697d6522e3a87e2de93e34e375decb4</a></div></div><br><div class=3D"gmail_quot=
e"><div dir=3D"ltr" class=3D"gmail_attr">On Wed, Aug 11, 2021 at 2:52 AM Pa=
ul Atreides &lt;<a href=3D"mailto:maud.dib1984@gmail.com">maud.dib1984@gmai=
l.com</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"ma=
rgin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:=
1ex"><div dir=3D"auto">Thanks so much Ron. I Will test this first thing in =
the morning=E2=80=A6although I guess technically it is morning.=C2=A0<br>Ta=
lk soon=C2=A0<br><div dir=3D"ltr">&lt;<span>end transmission&gt;</span></di=
v><div dir=3D"ltr"><br><blockquote type=3D"cite">On Aug 11, 2021, at 02:17,=
 Ron Economos &lt;<a href=3D"mailto:w6rz@comcast.net" target=3D"_blank">w6r=
z@comcast.net</a>&gt; wrote:<br><br></blockquote></div><blockquote type=3D"=
cite"><div dir=3D"ltr">=EF=BB=BF
 =20
   =20
 =20
 =20
    <p>I have a patch that I&#39;ve tested to work well. In UHD v4.0.0.0,
      add this line of code:<br>
    </p>
    <p>diff --git a/host/lib/usrp/cores/rx_vita_core_3000.cpp
      b/host/lib/usrp/cores/rx_vita_core_3000.cpp<br>
      index 4b09f75fd..368ae8e0a 100644<br>
      --- a/host/lib/usrp/cores/rx_vita_core_3000.cpp<br>
      +++ b/host/lib/usrp/cores/rx_vita_core_3000.cpp<br>
      @@ -117,6 +117,9 @@ struct rx_vita_core_3000_impl :
      rx_vita_core_3000<br>
      =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 cmd_word |=3D uint32=
_t((inst_stop) ? 1 : 0) &lt;&lt; 28;<br>
      =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 cmd_word |=3D (inst_=
samps) ? stream_cmd.num_samps :
      ((inst_stop) ? 0 : 1);<br>
      =C2=A0<br>
      +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 _continuous_streaming =3D=
 stream_cmd.stream_mode<br>
      +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 =3D=3D
      stream_cmd_t::STREAM_MODE_START_CONTINUOUS;<br>
      +<br>
      =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 // issue the stream =
command<br>
      =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 _iface-&gt;poke32(RE=
G_CTRL_CMD, cmd_word);<br>
      =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 const uint64_t ticks=
 =3D<br>
    </p>
    <p>Ron<br>
    </p>
    <div>On 8/10/21 10:48 PM, Paul Atreides
      wrote:<br>
    </div>
    <blockquote type=3D"cite">
     =20
      <div dir=3D"ltr">
        <div>
          <div>
            <div>what is the current guidance until this bug is fixed?
              i&#39;ve recompiled UHD 3 times now. <br>
            </div>
            UHD4.0<br>
          </div>
          UHD4.1<br>
        </div>
        <div>master</div>
        <div>all of them have the same issue, if i get even one overflow
          in gnuradio the screen locks up, in
          rx_benchmark/rx_samples_to_file the program terminates early.
          <br>
        </div>
        <div><br>
        </div>
        <div>when will this be fixed?<br>
        </div>
      </div>
      <br>
      <fieldset></fieldset>
      <pre>_______________________________________________
USRP-users mailing list -- <a href=3D"mailto:usrp-users@lists.ettus.com" ta=
rget=3D"_blank">usrp-users@lists.ettus.com</a>
To unsubscribe send an email to <a href=3D"mailto:usrp-users-leave@lists.et=
tus.com" target=3D"_blank">usrp-users-leave@lists.ettus.com</a>
</pre>
    </blockquote>
 =20

<span>_______________________________________________</span><br><span>USRP-=
users mailing list -- <a href=3D"mailto:usrp-users@lists.ettus.com" target=
=3D"_blank">usrp-users@lists.ettus.com</a></span><br><span>To unsubscribe s=
end an email to <a href=3D"mailto:usrp-users-leave@lists.ettus.com" target=
=3D"_blank">usrp-users-leave@lists.ettus.com</a></span><br></div></blockquo=
te></div>_______________________________________________<br>
USRP-users mailing list -- <a href=3D"mailto:usrp-users@lists.ettus.com" ta=
rget=3D"_blank">usrp-users@lists.ettus.com</a><br>
To unsubscribe send an email to <a href=3D"mailto:usrp-users-leave@lists.et=
tus.com" target=3D"_blank">usrp-users-leave@lists.ettus.com</a><br>
</blockquote></div>

--000000000000a8101405c9481ba4--

--===============2477693805282181317==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============2477693805282181317==--
