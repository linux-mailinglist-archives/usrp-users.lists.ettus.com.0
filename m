Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 4064950A88B
	for <lists+usrp-users@lfdr.de>; Thu, 21 Apr 2022 20:55:42 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 0D9BE384A89
	for <lists+usrp-users@lfdr.de>; Thu, 21 Apr 2022 14:55:41 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1650567341; bh=AvH++CJwoyob9j9HEZgiiEDCruYZwi6M3+VFPZgX0uM=;
	h=References:In-Reply-To:From:Date:To:CC:Subject:List-Id:
	 List-Archive:List-Help:List-Owner:List-Post:List-Subscribe:
	 List-Unsubscribe:From;
	b=LBzqB0r0SYgT3wFeL3oyxJWhI56JToEMw9D9gTizSx5yGWtTp0dg8qWtxLz5A7Daa
	 PZ5QyyAW19R6e7x05MbWlvH8YE2JuHb+EQuH2fr/MDZc+3Zni5cebmrNE8d2Inm5SJ
	 0YUnYeqFlP3Yqfwsy04k2z4e8XXrs23iq1bAgvglONQldPzs9ttb2l3ZCJG1RDiR5L
	 W/5VjZOml6BWd1kxt+F4BjIs8GDaHyx+bYBaWkpUxCCXyQAKnzUA05Qgfkh+e1jW+a
	 efhKvPeSpVBVunprQUqaEyKUlDwi+ckaMeczBwfesJUxIPYlOnAgyJtWjnjZgVeI1n
	 enYwawxW65Epw==
Received: from mail-yw1-f173.google.com (mail-yw1-f173.google.com [209.85.128.173])
	by mm2.emwd.com (Postfix) with ESMTPS id 1DC783841A8
	for <usrp-users@lists.ettus.com>; Thu, 21 Apr 2022 14:54:40 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=ettus-com.20210112.gappssmtp.com header.i=@ettus-com.20210112.gappssmtp.com header.b="SC9hwFAV";
	dkim-atps=neutral
Received: by mail-yw1-f173.google.com with SMTP id 00721157ae682-2ebf3746f87so62231937b3.6
        for <usrp-users@lists.ettus.com>; Thu, 21 Apr 2022 11:54:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ettus-com.20210112.gappssmtp.com; s=20210112;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=L1A29TqvyYb6AZ8xyZMhXXJbtu/n1bQcJgr2vSNoZbc=;
        b=SC9hwFAVNzf/g/HVvjGVMpG25o4sz+IUFHcbFnZyVRKJ4dW6dFk4vwYlp6tZIoJg3B
         +w7QssIDKdbA0PgO7/BoGtWIs3Kbuqlv1dxyBWpyEezk5BVd3/eImnoiJFuGFWHoOQZD
         fIn9EQbX14Cu0DmqTFmjwMPhbZHPJC+RNdw29pOB4bppt7rohW4s+XD9Rdnw+PC18Hfz
         725DEWMgtMiWRjoJjX9f3YxbFuh9b5ApY2hUUMowLwV1Ywp79DlV/j/Vw8/ngJwtqhxA
         6ieJdCwVU4Ieai+J665ROLHCdFKwuvwsPW4dIO9kj2jYF+40QqMNeKjA23dCIEu7AbsB
         Eouw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=L1A29TqvyYb6AZ8xyZMhXXJbtu/n1bQcJgr2vSNoZbc=;
        b=47C1L5l2BMZLkZ76TpYU/nRVvkR5PNRBL2OAYGrw/zQK/3U2/SIIlEdGB/BjHcuA6m
         wICMI9Ddf6BskxH89Vgz1ljHemheKIRB9UxErsOICUCD96/Gux/0wtjBwCie/OCL747k
         uWUPRAvgzBN+xi52ffqdT8w+9E71XbQoizkaisSgDuzxGw7kc6M3ZKbPVh4FuR1FjTrc
         lCfu778MOxtK3uJrEdR7Ud6TKHvcAEunXL2RLDMZ+dmXbe+IbfVEMGLVVHYJ+nCp7auv
         MtxJUGQHdcG25GmYw5TAEkjKkj1NjNw0rwvtP+ZklHAMJSjwf2477TCm6FE5K+vVQFuE
         RV1A==
X-Gm-Message-State: AOAM532O8dmKXzAw2V440HO98MqJ0qgDco07YPLA8GhXtKJABftoh4ka
	X84dKIqpIvDK2JqH1nhIjT0rSjSK6Hsf/YsaQWscIq9081BOtmJ8qK0=
X-Google-Smtp-Source: ABdhPJwsuW9oSozs0h1DjuNQ0u2v9UMKfRIrGy94+kv2X0H/WNo2N224E0XapP74ioyWiR8c9sSdKty276KbM9WsA0I=
X-Received: by 2002:a81:19c2:0:b0:2f4:da5d:e2e with SMTP id
 185-20020a8119c2000000b002f4da5d0e2emr1223747ywz.480.1650567279555; Thu, 21
 Apr 2022 11:54:39 -0700 (PDT)
MIME-Version: 1.0
References: <CAAxXO2HLcWstb43sCwUPQ=GjCd2VZTq3XEnJNemF4dZosxqk0Q@mail.gmail.com>
 <21b31060-a1eb-fba3-09f8-2adb30a21df1@gmail.com> <CAAxXO2GyFBEOVM3tiOdDaPkr8=97F9-XmhrVn9PYyzsZZCa+FA@mail.gmail.com>
 <c53f0375-befa-92d0-cb40-4e5a42af914a@gmail.com> <CAAxXO2FnhEtyPbrZ1dvVOBxLXPTEynNXYvLm3pNWEbdqkbcEWQ@mail.gmail.com>
 <CAAxXO2Gb4vbNA+Y4H-ynNER+cDA78pWwrv0KSTrYCzG39qErww@mail.gmail.com>
In-Reply-To: <CAAxXO2Gb4vbNA+Y4H-ynNER+cDA78pWwrv0KSTrYCzG39qErww@mail.gmail.com>
From: Wade Fife <wade.fife@ettus.com>
Date: Thu, 21 Apr 2022 13:54:23 -0500
Message-ID: <CAFche=iYooceLJ+8Uz42POX+neRwb1AiPEtt8a8d_OzVbua2Cw@mail.gmail.com>
To: Nikos Balkanas <nbalkanas@gmail.com>
Message-ID-Hash: 7ZTEMV5Y5W6LQAW2O6WRPUK2N6SVAQSD
X-Message-ID-Hash: 7ZTEMV5Y5W6LQAW2O6WRPUK2N6SVAQSD
X-MailFrom: wade.fife@ettus.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: usrp-users@lists.ettus.com
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: UHD compilation in Ubuntu 20.04 (focal)
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/7ZTEMV5Y5W6LQAW2O6WRPUK2N6SVAQSD/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============6712550232339062237=="

--===============6712550232339062237==
Content-Type: multipart/alternative; boundary="0000000000006047b505dd2ea40f"

--0000000000006047b505dd2ea40f
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

UHD 3.15 is stable. rc1 and rc2 refer to "release candidates". They are not
the final released version.

My machine also has Ubuntu 20.04 and UHD-3.15.LTS compiles for me. I did
not test older versions.

Wade

On Thu, Apr 21, 2022 at 10:46 AM Nikos Balkanas <nbalkanas@gmail.com> wrote=
:

> What do the rc1, rc2 mean in the versions?
>
> On Thu, Apr 21, 2022 at 6:39 PM Nikos Balkanas <nbalkanas@gmail.com>
> wrote:
> >
> > Aaah OK. I asked before whether there was a ready UHD version for
> > 20.04, but noone answered.
> > After I tried 20 of them, I assumed there was none:(
> > I chose 3.9.5 as the oldest stable, UHD release.
> > Is UHD 3.15.0.0 stable? cmake says it is unstable, development:(
> >
> > Nikos
> >
> > On Thu, Apr 21, 2022 at 6:00 PM Marcus D. Leech <patchvonbraun@gmail.co=
m>
> wrote:
> > >
> > > On 2022-04-21 10:52, Nikos Balkanas wrote:
> > > > Hi,
> > > >
> > > > Seems no one is looking into Ubuntu 20.04 compilation.
> > > > My X-300 is getting lonely...:(
> > > > If there are no objections, I can look it up myself.
> > > > I was thinking about fixing release_003_009_005.
> > > > Seems stable and hopefully need very little tweaking.
> > > > Since I don't know the code, I hope it's alright to ask here, if I
> > > > have any questions:)
> > > >
> > > > These are all the errors I found with make -k (60% completion):
> > > > /home/nikos/work/uhd/host/lib/transport/udp_zero_copy.cpp:193:29:
> > > > error: =E2=80=98class
> boost::asio::basic_datagram_socket<boost::asio::ip::udp>=E2=80=99
> > > > has no member named =E2=80=98native=E2=80=99
> > > > /home/nikos/work/uhd/host/lib/transport/tcp_zero_copy.cpp:157:29:
> > > > error: =E2=80=98class boost::asio::basic_stream_socket<boost::asio:=
:ip::tcp>=E2=80=99
> > > > has no member named =E2=80=98native=E2=80=99
> > > > /home/nikos/work/uhd/host/lib/transport/udp_simple.cpp:59:46: error=
:
> > > > =E2=80=98class boost::asio::basic_datagram_socket<boost::asio::ip::=
udp>=E2=80=99 has
> > > > no member named =E2=80=98native=E2=80=99
> > > > /home/nikos/work/uhd/host/lib/usrp/x300/x300_impl.cpp:1475:114:
> error:
> > > > no matching function for call to
> > > >
> =E2=80=98boost::date_time::subsecond_duration<boost::posix_time::time_dur=
ation,
> > > > 1000>::subsecond_duration(double)=E2=80=99
> > > > /usr/include/boost/date_time/time_duration.hpp:285:14: error: no ty=
pe
> > > > named =E2=80=98type=E2=80=99 in =E2=80=98struct boost::enable_if<bo=
ost::is_integral<double>,
> > > > void>=E2=80=99
> > > >
> > > > The first 3 I replaced:
> > > > _socket->native() -> _socket->native_handle()   Compiles OK.
> > > >
> > > > The last 2 are from the same place in x300_impl.cpp. This is a time
> > > > loop of 1 ms, until timeout. The code is perfectly
> > > > sound :
> > > > boost::system_time timeout_time =3D boost::get_system_time() +
> > > > boost::posix_time::milliseconds(timeout * 1000.0);
> > > >
> > > > What this has to do with subsecond_duration?
> > > >
> > > >  From /usr/include/boost/date_time/time_duration.hpp: 285
> > > > public:
> > > >      // The argument (ss) must be an integral type
> > > >      template <typename T>
> > > >      explicit subsecond_duration(T const& ss,
> > > >                                  typename
> > > > boost::enable_if<boost::is_integral<T>, void>::type* =3D
> > > > BOOST_DATE_TIME_NULLPTR) :
> > > >        base_duration(impl_type(traits_type::ticks_per_second >=3D
> > > > frac_of_second ? ss * adjustment_ratio : ss / adjustment_ratio))
> > > >
> > > > I could rewrite the time loop in C, outside boost, but don't want t=
o
> > > > break structure. Any ideas why is the compiler complaining?
> > > >
> > > > TIA
> > > > Nikos
> > > >
> > > >
> > > Ubuntu 20.04 *already packages* UHD-3.15.0.0, so figuring out how to
> > > compile a MUCH OLDER release of
> > >    UHD on 20.04 would perhaps be useful for people who really, really
> > > need a MUCH OLDER release of UHD.
> > >    But 3.15.0.0 already works out of the box from the package repos f=
or
> > > Ubuntu 20.04.
> > >
> > >
> _______________________________________________
> USRP-users mailing list -- usrp-users@lists.ettus.com
> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>

--0000000000006047b505dd2ea40f
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>UHD 3.15 is stable. rc1 and rc2 refer to &quot;releas=
e candidates&quot;. They are not the final released version.</div><div><br>=
</div><div>My machine also has Ubuntu 20.04 and UHD-3.15.LTS compiles for m=
e. I did not test older versions. <br></div><div><br></div><div>Wade<br></d=
iv></div><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_att=
r">On Thu, Apr 21, 2022 at 10:46 AM Nikos Balkanas &lt;<a href=3D"mailto:nb=
alkanas@gmail.com">nbalkanas@gmail.com</a>&gt; wrote:<br></div><blockquote =
class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px sol=
id rgb(204,204,204);padding-left:1ex">What do the rc1, rc2 mean in the vers=
ions?<br>
<br>
On Thu, Apr 21, 2022 at 6:39 PM Nikos Balkanas &lt;<a href=3D"mailto:nbalka=
nas@gmail.com" target=3D"_blank">nbalkanas@gmail.com</a>&gt; wrote:<br>
&gt;<br>
&gt; Aaah OK. I asked before whether there was a ready UHD version for<br>
&gt; 20.04, but noone answered.<br>
&gt; After I tried 20 of them, I assumed there was none:(<br>
&gt; I chose 3.9.5 as the oldest stable, UHD release.<br>
&gt; Is UHD 3.15.0.0 stable? cmake says it is unstable, development:(<br>
&gt;<br>
&gt; Nikos<br>
&gt;<br>
&gt; On Thu, Apr 21, 2022 at 6:00 PM Marcus D. Leech &lt;<a href=3D"mailto:=
patchvonbraun@gmail.com" target=3D"_blank">patchvonbraun@gmail.com</a>&gt; =
wrote:<br>
&gt; &gt;<br>
&gt; &gt; On 2022-04-21 10:52, Nikos Balkanas wrote:<br>
&gt; &gt; &gt; Hi,<br>
&gt; &gt; &gt;<br>
&gt; &gt; &gt; Seems no one is looking into Ubuntu 20.04 compilation.<br>
&gt; &gt; &gt; My X-300 is getting lonely...:(<br>
&gt; &gt; &gt; If there are no objections, I can look it up myself.<br>
&gt; &gt; &gt; I was thinking about fixing release_003_009_005.<br>
&gt; &gt; &gt; Seems stable and hopefully need very little tweaking.<br>
&gt; &gt; &gt; Since I don&#39;t know the code, I hope it&#39;s alright to =
ask here, if I<br>
&gt; &gt; &gt; have any questions:)<br>
&gt; &gt; &gt;<br>
&gt; &gt; &gt; These are all the errors I found with make -k (60% completio=
n):<br>
&gt; &gt; &gt; /home/nikos/work/uhd/host/lib/transport/udp_zero_copy.cpp:19=
3:29:<br>
&gt; &gt; &gt; error: =E2=80=98class boost::asio::basic_datagram_socket&lt;=
boost::asio::ip::udp&gt;=E2=80=99<br>
&gt; &gt; &gt; has no member named =E2=80=98native=E2=80=99<br>
&gt; &gt; &gt; /home/nikos/work/uhd/host/lib/transport/tcp_zero_copy.cpp:15=
7:29:<br>
&gt; &gt; &gt; error: =E2=80=98class boost::asio::basic_stream_socket&lt;bo=
ost::asio::ip::tcp&gt;=E2=80=99<br>
&gt; &gt; &gt; has no member named =E2=80=98native=E2=80=99<br>
&gt; &gt; &gt; /home/nikos/work/uhd/host/lib/transport/udp_simple.cpp:59:46=
: error:<br>
&gt; &gt; &gt; =E2=80=98class boost::asio::basic_datagram_socket&lt;boost::=
asio::ip::udp&gt;=E2=80=99 has<br>
&gt; &gt; &gt; no member named =E2=80=98native=E2=80=99<br>
&gt; &gt; &gt; /home/nikos/work/uhd/host/lib/usrp/x300/x300_impl.cpp:1475:1=
14: error:<br>
&gt; &gt; &gt; no matching function for call to<br>
&gt; &gt; &gt; =E2=80=98boost::date_time::subsecond_duration&lt;boost::posi=
x_time::time_duration,<br>
&gt; &gt; &gt; 1000&gt;::subsecond_duration(double)=E2=80=99<br>
&gt; &gt; &gt; /usr/include/boost/date_time/time_duration.hpp:285:14: error=
: no type<br>
&gt; &gt; &gt; named =E2=80=98type=E2=80=99 in =E2=80=98struct boost::enabl=
e_if&lt;boost::is_integral&lt;double&gt;,<br>
&gt; &gt; &gt; void&gt;=E2=80=99<br>
&gt; &gt; &gt;<br>
&gt; &gt; &gt; The first 3 I replaced:<br>
&gt; &gt; &gt; _socket-&gt;native() -&gt; _socket-&gt;native_handle()=C2=A0=
 =C2=A0Compiles OK.<br>
&gt; &gt; &gt;<br>
&gt; &gt; &gt; The last 2 are from the same place in x300_impl.cpp. This is=
 a time<br>
&gt; &gt; &gt; loop of 1 ms, until timeout. The code is perfectly<br>
&gt; &gt; &gt; sound :<br>
&gt; &gt; &gt; boost::system_time timeout_time =3D boost::get_system_time()=
 +<br>
&gt; &gt; &gt; boost::posix_time::milliseconds(timeout * 1000.0);<br>
&gt; &gt; &gt;<br>
&gt; &gt; &gt; What this has to do with subsecond_duration?<br>
&gt; &gt; &gt;<br>
&gt; &gt; &gt;=C2=A0 From /usr/include/boost/date_time/time_duration.hpp: 2=
85<br>
&gt; &gt; &gt; public:<br>
&gt; &gt; &gt;=C2=A0 =C2=A0 =C2=A0 // The argument (ss) must be an integral=
 type<br>
&gt; &gt; &gt;=C2=A0 =C2=A0 =C2=A0 template &lt;typename T&gt;<br>
&gt; &gt; &gt;=C2=A0 =C2=A0 =C2=A0 explicit subsecond_duration(T const&amp;=
 ss,<br>
&gt; &gt; &gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 typename<br>
&gt; &gt; &gt; boost::enable_if&lt;boost::is_integral&lt;T&gt;, void&gt;::t=
ype* =3D<br>
&gt; &gt; &gt; BOOST_DATE_TIME_NULLPTR) :<br>
&gt; &gt; &gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 base_duration(impl_type(traits_ty=
pe::ticks_per_second &gt;=3D<br>
&gt; &gt; &gt; frac_of_second ? ss * adjustment_ratio : ss / adjustment_rat=
io))<br>
&gt; &gt; &gt;<br>
&gt; &gt; &gt; I could rewrite the time loop in C, outside boost, but don&#=
39;t want to<br>
&gt; &gt; &gt; break structure. Any ideas why is the compiler complaining?<=
br>
&gt; &gt; &gt;<br>
&gt; &gt; &gt; TIA<br>
&gt; &gt; &gt; Nikos<br>
&gt; &gt; &gt;<br>
&gt; &gt; &gt;<br>
&gt; &gt; Ubuntu 20.04 *already packages* UHD-3.15.0.0, so figuring out how=
 to<br>
&gt; &gt; compile a MUCH OLDER release of<br>
&gt; &gt;=C2=A0 =C2=A0 UHD on 20.04 would perhaps be useful for people who =
really, really<br>
&gt; &gt; need a MUCH OLDER release of UHD.<br>
&gt; &gt;=C2=A0 =C2=A0 But 3.15.0.0 already works out of the box from the p=
ackage repos for<br>
&gt; &gt; Ubuntu 20.04.<br>
&gt; &gt;<br>
&gt; &gt;<br>
_______________________________________________<br>
USRP-users mailing list -- <a href=3D"mailto:usrp-users@lists.ettus.com" ta=
rget=3D"_blank">usrp-users@lists.ettus.com</a><br>
To unsubscribe send an email to <a href=3D"mailto:usrp-users-leave@lists.et=
tus.com" target=3D"_blank">usrp-users-leave@lists.ettus.com</a><br>
</blockquote></div>

--0000000000006047b505dd2ea40f--

--===============6712550232339062237==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============6712550232339062237==--
