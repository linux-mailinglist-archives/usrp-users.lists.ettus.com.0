Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 81A231371A3
	for <lists+usrp-users@lfdr.de>; Fri, 10 Jan 2020 16:47:04 +0100 (CET)
Received: from [::1] (port=55148 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.92)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1ipwV4-0005cm-CA; Fri, 10 Jan 2020 10:47:02 -0500
Received: from mail-lj1-f169.google.com ([209.85.208.169]:39361)
 by mm2.emwd.com with esmtps (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128)
 (Exim 4.92) (envelope-from <sam.reiter@ettus.com>)
 id 1ipwV0-0005W3-V1
 for usrp-users@lists.ettus.com; Fri, 10 Jan 2020 10:46:59 -0500
Received: by mail-lj1-f169.google.com with SMTP id l2so2600596lja.6
 for <usrp-users@lists.ettus.com>; Fri, 10 Jan 2020 07:46:38 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=ettus-com.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=JfMUo7QTbcp9MFDTkroCZYFyAvydMREHBL3cbBmKYJY=;
 b=H2YaN9hLqnCzKB1ncYCzMHIWlHeKy8HwW4FEgNsddYpDPxwOCNzH80ahIu2+vn1swh
 LFd+HEyjk7f429h1GVV9vX9KFg0cw/YRwbLk5vlfbQb8l2I/uA9z//5Deb0QtjsxmAjl
 BmLnAp8NGyvEjpQH2e0R3f+Xv3N4RoCUFX6a61TVS7dn+PgoHve+OLPbj8zlk96975UJ
 0rExo2Ye17CIeJn2JYfvliNrx6xQWPTt0cmQUOjsnPpFtoMnpD76bFE/4gsHHMw1rU8I
 v1Rk3vi8Z/r4TaLQ42KXTEe3w5FZk3peFbYknQU5keSJ1sNzxLatiAq4gn/hyecDe0lr
 CyiA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=JfMUo7QTbcp9MFDTkroCZYFyAvydMREHBL3cbBmKYJY=;
 b=DcK5+yL5vQzLOeINVa7tMj8RiJHXRBL3/SUPQVj35+HK46dBqaX57uhq6l/8gPgPAc
 6W0FAZiGzRTjY2zNTSyk1Tbs60c9+7o3dS0IolFKMIqr/usAoIb3EdPMdQOC4n587X2C
 lKffe03Mef36AZGw/RBJoIi1WAjpwakhdrRlBQtXI84ra3ZPycCYn9y5XEJKXGc4tenQ
 556HleRjuM8dhpBXE6tHlpqIi19uXu0RLK9RFboZ7cBYRcW9b/OtjD646sbtjev2MCRC
 iykcdySPRXQkw5jFhfcCX67OmmP9pHVmrNT5wXObbLWQYEy52wONBtWMzMHyFE8ZQQg+
 /6Xg==
X-Gm-Message-State: APjAAAWUdpNItONB/C/dGDdXEiKt3BLLtZoWIPZPMuzwilfxuA5XJEH4
 +DOU4d/6PdLwzYbd+aCWceMQrht9Mg7P3z8eXiqpqHlT
X-Google-Smtp-Source: APXvYqya+qVbCzKTJwOXHF4nVODHKDtyaQNIfTC1qhTN2c7Z8A+GVNbtfhTYsavv4pzTB2NIgqGAhlGTufVLZ110cKM=
X-Received: by 2002:a2e:9248:: with SMTP id v8mr3060307ljg.189.1578671177671; 
 Fri, 10 Jan 2020 07:46:17 -0800 (PST)
MIME-Version: 1.0
References: <826572958.9669290.1578669344799.ref@mail.yahoo.com>
 <826572958.9669290.1578669344799@mail.yahoo.com>
In-Reply-To: <826572958.9669290.1578669344799@mail.yahoo.com>
Date: Fri, 10 Jan 2020 09:46:06 -0600
Message-ID: <CANf970bnEtmcTCOkYseriRLnXLc668Q1Krq9EvseYxrpnrTUSQ@mail.gmail.com>
To: voonna santosh <santu_voonna@yahoo.com>
Subject: Re: [USRP-users] Run time issue with 3.14.1.1 (X300 with UBX)
X-BeenThere: usrp-users@lists.ettus.com
X-Mailman-Version: 2.1.29
Precedence: list
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
List-Unsubscribe: <http://lists.ettus.com/mailman/options/usrp-users_lists.ettus.com>, 
 <mailto:usrp-users-request@lists.ettus.com?subject=unsubscribe>
List-Archive: <http://lists.ettus.com/pipermail/usrp-users_lists.ettus.com/>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Subscribe: <http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com>, 
 <mailto:usrp-users-request@lists.ettus.com?subject=subscribe>
From: Sam Reiter via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Sam Reiter <sam.reiter@ettus.com>
Cc: "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============7162152086906205035=="
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

--===============7162152086906205035==
Content-Type: multipart/alternative; boundary="000000000000c33a7a059bcb06fd"

--000000000000c33a7a059bcb06fd
Content-Type: text/plain; charset="UTF-8"

Santosh,

Could you send the output of

*ip a*

On you machine with the X300 connected?

Sam


On Fri, Jan 10, 2020 at 9:16 AM voonna santosh via USRP-users <
usrp-users@lists.ettus.com> wrote:

> Hi There,
>    I have just updated to 3.14.1 and experiencing the following issue. The
> system starts well, then there would be couple of underflows (even at less
> sampling rates) and the following error is shown. In this case I don't see
> anything on the scope.
>
>    I have restarted SDR and my PC, then it is working well.
>
> Command used:
> ./tx_samples_from_file --args addr=192.168.40.2  --file
> /home/svoonna/repo/test_files/test_file_SW_Samples_1MHz_28G.bin   --type
> short --spb 3640 --rate 50e6 --freq 60e6  --gain 0 --ant TX/RX --subdev A:0
> --bw 40 --ref internal --repeat --lo_off 80000000
>
> *[ERROR] [X300] 192.168.40.2 <http://192.168.40.2>: x300 fw communication
> failure #1*
> *EnvironmentError: IOError: x300 fw poke32 - reply timed out*
>
> BR,
> Santosh
>
> _______________________________________________
> USRP-users mailing list
> USRP-users@lists.ettus.com
> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
>

--000000000000c33a7a059bcb06fd
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Santosh,</div><div><br></div><div>Could you send the =
output of <br></div><div><br></div><div><b>ip a</b></div><div><b><br></b></=
div><div>On you machine with the X300 connected?<br></div><div><b></b></div=
><div><br></div><div><div><div dir=3D"ltr" class=3D"gmail_signature" data-s=
martmail=3D"gmail_signature"><div dir=3D"ltr"><div><div dir=3D"ltr">Sam</di=
v></div></div></div></div><br></div></div><br><div class=3D"gmail_quote"><d=
iv dir=3D"ltr" class=3D"gmail_attr">On Fri, Jan 10, 2020 at 9:16 AM voonna =
santosh via USRP-users &lt;<a href=3D"mailto:usrp-users@lists.ettus.com">us=
rp-users@lists.ettus.com</a>&gt; wrote:<br></div><blockquote class=3D"gmail=
_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204=
,204);padding-left:1ex"><div><div style=3D"font-family:Helvetica Neue,Helve=
tica,Arial,sans-serif;font-size:16px"><div dir=3D"ltr"><div><div dir=3D"ltr=
">Hi There,</div><div dir=3D"ltr">=C2=A0=C2=A0 I have just updated to 3.14.=
1 and experiencing the following issue. The system starts well, then there =
would be couple of underflows (even at less sampling rates) and the followi=
ng error is shown. In this case I don&#39;t see anything on the scope.</div=
><div dir=3D"ltr"><br></div><div dir=3D"ltr">=C2=A0=C2=A0 I have restarted =
SDR and my PC, then it is working well. <br></div><div dir=3D"ltr"><br></di=
v><div dir=3D"ltr">Command used: <span><br></span></div><div dir=3D"ltr"><s=
pan>./tx_samples_from_file --args addr=3D192.168.40.2=C2=A0 --file /home/sv=
oonna/repo/test_files/test_file_SW_Samples_1MHz_28G.bin=C2=A0=C2=A0 --type =
short --spb 3640 --rate 50e6 --freq 60e6=C2=A0 --gain 0 --ant TX/RX --subde=
v A:0 --bw 40 --ref internal --repeat --lo_off 80000000</span></div><div><b=
r></div><div><b>[ERROR] [X300] <a href=3D"http://192.168.40.2" target=3D"_b=
lank">192.168.40.2</a>: x300 fw communication failure #1</b></div><b>Enviro=
nmentError: IOError: x300 fw poke32 - reply timed out</b><br><div><br></div=
><div dir=3D"ltr">BR,</div><div dir=3D"ltr">Santosh<br></div></div><div><br=
></div></div></div></div>_______________________________________________<br=
>
USRP-users mailing list<br>
<a href=3D"mailto:USRP-users@lists.ettus.com" target=3D"_blank">USRP-users@=
lists.ettus.com</a><br>
<a href=3D"http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.c=
om" rel=3D"noreferrer" target=3D"_blank">http://lists.ettus.com/mailman/lis=
tinfo/usrp-users_lists.ettus.com</a><br>
</blockquote></div>

--000000000000c33a7a059bcb06fd--


--===============7162152086906205035==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============7162152086906205035==--

