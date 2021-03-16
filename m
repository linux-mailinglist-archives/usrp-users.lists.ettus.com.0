Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 7CFF033D9E1
	for <lists+usrp-users@lfdr.de>; Tue, 16 Mar 2021 17:55:11 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 8AE48383B7E
	for <lists+usrp-users@lfdr.de>; Tue, 16 Mar 2021 12:55:10 -0400 (EDT)
Received: from mail-ed1-f45.google.com (mail-ed1-f45.google.com [209.85.208.45])
	by mm2.emwd.com (Postfix) with ESMTPS id 4C99D383B01
	for <usrp-users@lists.ettus.com>; Tue, 16 Mar 2021 12:54:16 -0400 (EDT)
Received: by mail-ed1-f45.google.com with SMTP id x21so22359934eds.4
        for <usrp-users@lists.ettus.com>; Tue, 16 Mar 2021 09:54:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ettus-com.20150623.gappssmtp.com; s=20150623;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=7qROxmqwgV/bNPWQ5goqEISSPzxpx7ju+FmBgn4MfcY=;
        b=Rc3YHVCguKLVq+CvZANGb0bulIVu4yiFgxgDbkzI9xZ5xdO0ZZG+zH/GZBl1qJdkjw
         /WPEb7O10mVclGDfous/JnkahMZizpq1dFAyBhfy8HqWuc8JpqdvnIx7sVUhyGQoKmIE
         pWa7Xt/dnhB6RcLMfEBxXZV+6Myu3bFZMzSlnqq0sGoSsmuAnrqZ8Dal1njEWjX3Lg3W
         5Ax1yt66IrZiM0DbSQ55VKqOREdZ2y6/ULEcJKNTKlDgPtpGtjvNAgkgXqDPTxLJPZdt
         pvrCNtHWZUGOqUGRPjmgr47iLlTLh4DJmqogQ1sOIuuXqVoR6tg4gQ563pZJbbxq+SA0
         mZKA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=7qROxmqwgV/bNPWQ5goqEISSPzxpx7ju+FmBgn4MfcY=;
        b=Odij87n7s56qY8NQvF6CvDkumQrJtMsZY75sZqQwaJW0yX636f7mtnVn+N2gYu6+mX
         xBfksvMJ5UL75Pyh627P50hX/fA7KjtHEBsbGX1Iadac3nKHwTmYVjB5Biz2LP/cXtWS
         gLa71OzV/nC1U7qhf/N0vjHwRJdJ7orSrbOjbhaMCt0eE7ZshKmVieS/xoKRMl6/mr1k
         ocGK6APVw1GD+hi8CuhqPc4jCC66quSUb6PtFaTHP68nzV4M9KABloXawk8Rxh1k50ph
         oAhMYDeOsjgNXWDCeJUQ5M6b9+GgLU5nvUK2ESpScTgO5zN9Al0Q3Upo8ne7hEmTU3RQ
         vQbg==
X-Gm-Message-State: AOAM532Jn3kcLe5QHb8vj1dPOYa/oklpJKtuAkoz4woTbUMVVxWej8O5
	oh5iR+it1M6HE3d4AcBD4TGs+qLOFgudwmKp7KT2baoRHke4jg==
X-Google-Smtp-Source: ABdhPJwX9vkOKtMt56fuC9yPz+hNfZ34ehyv4VnSPgUbWkfCtBnp1VYF2G/sRchud1i9G3bxqVJNe/SOjVjgQ7isdzI=
X-Received: by 2002:aa7:db01:: with SMTP id t1mr37345827eds.77.1615913655396;
 Tue, 16 Mar 2021 09:54:15 -0700 (PDT)
MIME-Version: 1.0
References: <CAOHuk9D5U97rJmO1ExSnwz4d=f4ya4uusyi68E1yT7ii0F+UBw@mail.gmail.com>
In-Reply-To: <CAOHuk9D5U97rJmO1ExSnwz4d=f4ya4uusyi68E1yT7ii0F+UBw@mail.gmail.com>
From: Martin Braun <martin.braun@ettus.com>
Date: Tue, 16 Mar 2021 17:54:04 +0100
Message-ID: <CAFOi1A7N-fP6K+ai4qrJOT7tnOuQ5D_pd3n8WoXcH00pQUoG8A@mail.gmail.com>
To: Ryan Marlow <ryan@lmarlow.com>
Message-ID-Hash: YSDMYPADJE7TRFGSWJELUREK3RRYX7B7
X-Message-ID-Hash: YSDMYPADJE7TRFGSWJELUREK3RRYX7B7
X-MailFrom: martin.braun@ettus.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: "USRP-users@lists.ettus.com" <usrp-users@lists.ettus.com>
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: N3xx internal ethernet interface
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/YSDMYPADJE7TRFGSWJELUREK3RRYX7B7/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============3115674877051152671=="

--===============3115674877051152671==
Content-Type: multipart/alternative; boundary="0000000000006af8de05bdaa3753"

--0000000000006af8de05bdaa3753
Content-Type: text/plain; charset="UTF-8"

You can't ping it using the 'ping' command (as you've probably found out
yourself). We don't implement this outside of UHD, but UHD sends out
discovery management packets into that network to see what's on the other
side (e.g., a crossbar). You could forge one of those and send it in there
via UHD, but you'd have to figure out the packet format from the RFNoC spec
and the source code.

--M

On Tue, Mar 16, 2021 at 4:20 PM Ryan Marlow <ryan@lmarlow.com> wrote:

> Hello All,
> I have kinda an obscure/deep question about the functionality of the
> internal ethernet interface on the N3xx. It is my understanding that this
> interface (int0) connects the linux OS on the ARM to the CHDR/RFNoC network
> on FPGA so you can run UHD on the N3xx ARM itself. To verify the
> functionality of this interface, can I "ping" the IP address (defaults to
> 192.168.10.2) of the FPGA side on that interface and expect a response?
> Using tcpdump, I can see ARP request and replies. Just curious if anyone
> has suggestions of sanity checks that are simpler than running
> uhd_find_devices or uhd_usrp_probe to verify the integrity of that
> interface connection.
> Thanks,
> Ryan Marlow
>
> --
> Ryan L. Marlow
> R L Marlow Consulting LLC
> rlmarlow.com
> _______________________________________________
> USRP-users mailing list -- usrp-users@lists.ettus.com
> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>

--0000000000006af8de05bdaa3753
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>You can&#39;t ping it using the &#39;ping&#39; comman=
d (as you&#39;ve probably found out yourself). We don&#39;t implement this =
outside of UHD, but UHD sends out discovery management packets into that ne=
twork to see what&#39;s on the other side (e.g., a crossbar). You could for=
ge one of those and send it in there via UHD, but you&#39;d have to figure =
out the packet format from the RFNoC spec and the source code.</div><div><b=
r></div><div>--M<br></div></div><br><div class=3D"gmail_quote"><div dir=3D"=
ltr" class=3D"gmail_attr">On Tue, Mar 16, 2021 at 4:20 PM Ryan Marlow &lt;<=
a href=3D"mailto:ryan@lmarlow.com">ryan@lmarlow.com</a>&gt; wrote:<br></div=
><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border=
-left:1px solid rgb(204,204,204);padding-left:1ex"><div dir=3D"ltr"><div>He=
llo All,</div><div>I have kinda an obscure/deep question about the function=
ality of the internal ethernet interface on the N3xx. It is my understandin=
g that this interface (int0) connects the linux OS on the ARM to the CHDR/R=
FNoC network on FPGA so you can run UHD on the N3xx ARM itself. To verify t=
he functionality of this interface, can I &quot;ping&quot; the IP address (=
defaults to 192.168.10.2) of the FPGA side on that interface and expect a r=
esponse? Using tcpdump, I can see ARP request and replies. Just curious if =
anyone has suggestions of sanity checks that are simpler than running uhd_f=
ind_devices or uhd_usrp_probe to verify the integrity of that interface con=
nection.</div><div>Thanks,</div><div>Ryan Marlow<br></div><div><br>-- <br><=
div dir=3D"ltr"><div dir=3D"ltr"><div>Ryan L. Marlow</div><div>R L Marlow C=
onsulting LLC</div><div><a href=3D"http://rlmarlow.com" target=3D"_blank">r=
lmarlow.com</a><br></div></div></div></div></div>
_______________________________________________<br>
USRP-users mailing list -- <a href=3D"mailto:usrp-users@lists.ettus.com" ta=
rget=3D"_blank">usrp-users@lists.ettus.com</a><br>
To unsubscribe send an email to <a href=3D"mailto:usrp-users-leave@lists.et=
tus.com" target=3D"_blank">usrp-users-leave@lists.ettus.com</a><br>
</blockquote></div>

--0000000000006af8de05bdaa3753--

--===============3115674877051152671==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============3115674877051152671==--
