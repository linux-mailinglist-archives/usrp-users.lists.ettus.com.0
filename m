Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 21DFE2F804C
	for <lists+usrp-users@lfdr.de>; Fri, 15 Jan 2021 17:10:58 +0100 (CET)
Received: from [::1] (port=46106 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1l0Rgd-0002va-1B; Fri, 15 Jan 2021 11:10:55 -0500
Received: from mail-ej1-f49.google.com ([209.85.218.49]:35827)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
 (Exim 4.93) (envelope-from <michael.dickens@ettus.com>)
 id 1l0RgY-0002lj-Tr
 for usrp-users@lists.ettus.com; Fri, 15 Jan 2021 11:10:51 -0500
Received: by mail-ej1-f49.google.com with SMTP id q22so14057474eja.2
 for <usrp-users@lists.ettus.com>; Fri, 15 Jan 2021 08:10:30 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=ettus-com.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=/glv3iNylzvQ1PI+BYENJPCXwm7SyNfiuJ5KMj7sGt8=;
 b=mfDhjPSvseRSsqZvYFIdxAe7quK3cKAWT47CGMlqKsUgrj7ZdI/UeHR53ysKewrYTs
 5G+AFPj33b/YpQGRIOfLsafFQNx4EDvBrjI8vgBVqYX0rVluYAex/tO+Dwsd/NTdVCqt
 FV4b49jiYwsHLlKEYC0ybDKXId7Xq54a7a5wxD3uY8T5m020Nxwu4RN//5tPSmc+NrbQ
 syG+p0xb8WPE9cdwM6rDzGxox5nCkeowUZub6uvJFtNekinQZcusy3oX8FvzWESMXYIu
 1frwI0pDcGky57aRidj/Ug8kGdlWTMbYe43N/B7a4smq4lqytLCxnznisirP1KGdc1DE
 Pk8Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=/glv3iNylzvQ1PI+BYENJPCXwm7SyNfiuJ5KMj7sGt8=;
 b=JZEmD/AyjrvB3RI0+rqSc0NOE/DOqelfVnZiSlJT6+GjCmLagwNYkQmb4+vKHkq/4k
 ZloaioB8K+anHcKEDrFaCZ3icJcOyjercid6/Oj8UTabiWAdPg4QXK52Rb7j+/i6YT4d
 PLaOHuphF53MmRM5RP2CfHc6LvAxJUUV7aT2B9t6kbJQu+crc/9yEbZtQSkipYwdlRkT
 alNnM2RAMsYhBYwOqgKo8afvwwyE/b8hGA+Xc/+hsPpecwY0A7lYjjCJPUqrLmN+JDoz
 1hHH7GdfgnJzBeo/SHtJ4xBDePxURpOzC4C+spA/LncOdksl0t/TYYlnMOipJr9m2kso
 j60w==
X-Gm-Message-State: AOAM5332nHutjPBlAk6CSDf7Rs8c4MZNjMEB1XDlr/hYX4iUbPJEfPB8
 aUOa/FLuUcgEM+yN9Xxw0eoLa8xdediY5kk2Da1psgvu
X-Google-Smtp-Source: ABdhPJx/g71fCVfDLnry226t3htcPihNDYoLUUDJh5cVdc4YOENdDOxK9OE7QRtxHpNtWok1DfGlpqUEK+dYsHghEg4=
X-Received: by 2002:a17:906:d0c1:: with SMTP id
 bq1mr9129150ejb.202.1610727009794; 
 Fri, 15 Jan 2021 08:10:09 -0800 (PST)
MIME-Version: 1.0
References: <LNXP123MB372474BC72EC550495B41F29CAA70@LNXP123MB3724.GBRP123.PROD.OUTLOOK.COM>
 <20210115131822.7s3trwfd3f7dbi5p@barbe>
 <LNXP123MB3724ED3EFA804051E6C72F20CAA70@LNXP123MB3724.GBRP123.PROD.OUTLOOK.COM>
In-Reply-To: <LNXP123MB3724ED3EFA804051E6C72F20CAA70@LNXP123MB3724.GBRP123.PROD.OUTLOOK.COM>
Date: Fri, 15 Jan 2021 11:09:58 -0500
Message-ID: <CAGNhwTPShfnYbK6tr4DxZJcHrLb5u4tvQpUOVdZXW91=YbnhdQ@mail.gmail.com>
To: Mark D <md964@hmgcc.gov.uk>
Cc: "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>
Subject: Re: [USRP-users] Setting E320 to use fixed IP Address on RJ45 eth0
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
From: Michael Dickens via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Michael Dickens <michael.dickens@ettus.com>
Content-Type: multipart/mixed; boundary="===============7747015741365240910=="
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

--===============7747015741365240910==
Content-Type: multipart/alternative; boundary="00000000000040001905b8f29ba1"

--00000000000040001905b8f29ba1
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

What version of UHD are you using? Different UHD versions provide different
filesystems, which configure networking differently. - MLD

On Fri, Jan 15, 2021 at 9:01 AM Mark D via USRP-users <
usrp-users@lists.ettus.com> wrote:

> Thanks C=C3=A9dric,
>
> I used the networkctl status eth0 command that pointed me to the file at
> /lib/system/network/40-eth0.network
>
> I then edited this file to remove the DHCP sections and set the address a=
t
> 192.168.1.60/24.
>
> Looks to be working great,
>
> Mark
>
> -----Original Message-----
> From: USRP-users <usrp-users-bounces@lists.ettus.com> On Behalf Of C=C3=
=A9dric
> Hannotier via USRP-users
> Sent: 15 January 2021 13:18
> To: usrp-users@lists.ettus.com
> Subject: Re: [USRP-users] Setting E320 to use fixed IP Address on RJ45 et=
h0
>
> On 15/01/21 09:06, Mark D via USRP-users wrote:
> > My E320 doesn't have that folder,
> > there is one "/etc/systemd/network/"
> > but no "/etc/systemd/networkd/" (i.e. no d after network).
> > I think maybe is a typing error in the manual and the folder name shoul=
d
> be network.
> >
> > The folder at this location is empty, so doesn't contain the SFP+
> setting file.
>
> Are you sure it is managed/configured by systemd-networkd?
> You can check its status by running "networkctl status eth0".
>
> > I have created in this folder a file eth0.network with the following
> content:
> >
> > ---------------------------
> > [Match]
> > Name=3Deth0
> >
> > [Network]
> > Address=3D192.168.1.60
>
> From systemd.network(5), I think you have to specify the netmask, eg:
> Address=3D192.168.1.60/24
>
> Do not forget to reload, either using 'networkctl reload' or 'systemctl
> restart systemd-networkd'.
>
> --
>
> C=C3=A9dric Hannotier
>
> _______________________________________________
> USRP-users mailing list
> USRP-users@lists.ettus.com
> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
> ________________________________
>  This email and any files transmitted with it are confidential and
> intended solely for the use of the individual or entity to whom they are
> addressed. If you have received this email in error please notify the
> system manager.
>
> _______________________________________________
> USRP-users mailing list
> USRP-users@lists.ettus.com
> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
>

--00000000000040001905b8f29ba1
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr">What version of UHD are you using? Differ=
ent UHD versions provide different filesystems, which configure networking =
differently. - MLD<div><div><div dir=3D"ltr" class=3D"gmail_signature" data=
-smartmail=3D"gmail_signature"><div dir=3D"ltr"><div dir=3D"ltr"><br></div>=
</div></div></div></div></div><div class=3D"gmail_quote"><div dir=3D"ltr" c=
lass=3D"gmail_attr">On Fri, Jan 15, 2021 at 9:01 AM Mark D via USRP-users &=
lt;<a href=3D"mailto:usrp-users@lists.ettus.com">usrp-users@lists.ettus.com=
</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:=
0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex">=
Thanks C=C3=A9dric,<br>
<br>
I used the networkctl status eth0 command that pointed me to the file at /l=
ib/system/network/40-eth0.network<br>
<br>
I then edited this file to remove the DHCP sections and set the address at =
<a href=3D"http://192.168.1.60/24" rel=3D"noreferrer" target=3D"_blank">192=
.168.1.60/24</a>.<br>
<br>
Looks to be working great,<br>
<br>
Mark<br>
<br>
-----Original Message-----<br>
From: USRP-users &lt;<a href=3D"mailto:usrp-users-bounces@lists.ettus.com" =
target=3D"_blank">usrp-users-bounces@lists.ettus.com</a>&gt; On Behalf Of C=
=C3=A9dric Hannotier via USRP-users<br>
Sent: 15 January 2021 13:18<br>
To: <a href=3D"mailto:usrp-users@lists.ettus.com" target=3D"_blank">usrp-us=
ers@lists.ettus.com</a><br>
Subject: Re: [USRP-users] Setting E320 to use fixed IP Address on RJ45 eth0=
<br>
<br>
On 15/01/21 09:06, Mark D via USRP-users wrote:<br>
&gt; My E320 doesn&#39;t have that folder,<br>
&gt; there is one &quot;/etc/systemd/network/&quot;<br>
&gt; but no &quot;/etc/systemd/networkd/&quot; (i.e. no d after network).<b=
r>
&gt; I think maybe is a typing error in the manual and the folder name shou=
ld be network.<br>
&gt;<br>
&gt; The folder at this location is empty, so doesn&#39;t contain the SFP+ =
setting file.<br>
<br>
Are you sure it is managed/configured by systemd-networkd?<br>
You can check its status by running &quot;networkctl status eth0&quot;.<br>
<br>
&gt; I have created in this folder a file eth0.network with the following c=
ontent:<br>
&gt;<br>
&gt; ---------------------------<br>
&gt; [Match]<br>
&gt; Name=3Deth0<br>
&gt;<br>
&gt; [Network]<br>
&gt; Address=3D192.168.1.60<br>
<br>
From systemd.network(5), I think you have to specify the netmask, eg:<br>
Address=3D<a href=3D"http://192.168.1.60/24" rel=3D"noreferrer" target=3D"_=
blank">192.168.1.60/24</a><br>
<br>
Do not forget to reload, either using &#39;networkctl reload&#39; or &#39;s=
ystemctl restart systemd-networkd&#39;.<br>
<br>
--<br>
<br>
C=C3=A9dric Hannotier<br>
<br>
_______________________________________________<br>
USRP-users mailing list<br>
<a href=3D"mailto:USRP-users@lists.ettus.com" target=3D"_blank">USRP-users@=
lists.ettus.com</a><br>
<a href=3D"http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.c=
om" rel=3D"noreferrer" target=3D"_blank">http://lists.ettus.com/mailman/lis=
tinfo/usrp-users_lists.ettus.com</a><br>
________________________________<br>
=C2=A0This email and any files transmitted with it are confidential and int=
ended solely for the use of the individual or entity to whom they are addre=
ssed. If you have received this email in error please notify the system man=
ager.<br>
<br>
_______________________________________________<br>
USRP-users mailing list<br>
<a href=3D"mailto:USRP-users@lists.ettus.com" target=3D"_blank">USRP-users@=
lists.ettus.com</a><br>
<a href=3D"http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.c=
om" rel=3D"noreferrer" target=3D"_blank">http://lists.ettus.com/mailman/lis=
tinfo/usrp-users_lists.ettus.com</a><br>
</blockquote></div></div>

--00000000000040001905b8f29ba1--


--===============7747015741365240910==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============7747015741365240910==--

