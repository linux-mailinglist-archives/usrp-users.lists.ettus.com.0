Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 658D510A0DA
	for <lists+usrp-users@lfdr.de>; Tue, 26 Nov 2019 16:00:04 +0100 (CET)
Received: from [::1] (port=60238 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.92)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1iZcJn-0003BO-Kz; Tue, 26 Nov 2019 09:59:55 -0500
Received: from mail-pg1-f174.google.com ([209.85.215.174]:34595)
 by mm2.emwd.com with esmtps (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128)
 (Exim 4.92) (envelope-from <ronrounsifer@gmail.com>)
 id 1iZcJk-00037p-QU
 for usrp-users@lists.ettus.com; Tue, 26 Nov 2019 09:59:52 -0500
Received: by mail-pg1-f174.google.com with SMTP id z188so9128798pgb.1
 for <usrp-users@lists.ettus.com>; Tue, 26 Nov 2019 06:59:32 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:from:date:message-id:subject:to;
 bh=cLeLUKosfr6eFSEElr2HNeQ1Dtn6DtYfhPCEY68cTkk=;
 b=gohGQe8yPpKyNYpLpGzazd9kFqfUxKjOf0CLvBphggryM1bW6FWIEge9ErPrHvBsN1
 /grkJNotBgDf+jMJAvtn7sDSc1ZYgYYJnjVqkaIY3WEIcclheUEgMTrl0ti4zJLpV96f
 1L/PFWt6Jg93GZBVt4cvlRREvaHxej4tyAYZnBaJ1dF6Z4cXrHB8oz8vzhOZwulE0ftn
 hPTeqHHyAny1JwZkkS/lXd+JNKwyeNS9rgz7IqvYhkn1/me6w80V9HWgJ8OAHuOfzQjp
 UnLaJ8J+F2B8+8BjKrumz+4RoA4qMEjL42sdalg8uGURAhT+ENkJs4mN7KXy/K6D3jqB
 6hPw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
 bh=cLeLUKosfr6eFSEElr2HNeQ1Dtn6DtYfhPCEY68cTkk=;
 b=ImrX+KQV2hFdS16GXSjB9LAfWBksMA+gGbWcVBxb4fBm7yE6jQYuz4F3BCsENTmbdc
 g6fGfgfx07iDFrllHNqAFRtDFlOLH5hD/h6zSr3nrv+6i60mPT76Cxecbuk1bFKYtq6J
 bnvzqRMnEtel8nxs8wxkvwKs3IVW3Z1aozz2a0lgCeXP/kKH7/HRXQStZfz7XPo6qp/e
 fE2Lh03T0HgDdCe+xkR9QFqgtjY+l5HmD/s5ETFtJDbgmCxhmRekUmnkT8qC1kFrnZxp
 URcWWdvpwLsi5XEGf5B339daqyTMt5t2BD4VullZRQzfdZ82Xvesvom0ynkoy/guAWQp
 KKtQ==
X-Gm-Message-State: APjAAAUJe9ARq6RqsTZS1j1fvp1XYMSOvZUq7YarIPBBob19C4hsaRb4
 ZU1GVSmOEWqIWNRqdcQ+wk0nv6DaBEvtLTuEp+gj/o0f
X-Google-Smtp-Source: APXvYqyJbRiE1qo7OpXOUJQ6VJXtbkjZXZPP4Um73ndDbH5pFoY/5QoiBoVZxYQdVmOcGmYO+J5eKgW4wAJ8KcsUHOM=
X-Received: by 2002:a65:62d3:: with SMTP id m19mr38615737pgv.270.1574780351523; 
 Tue, 26 Nov 2019 06:59:11 -0800 (PST)
MIME-Version: 1.0
Date: Tue, 26 Nov 2019 08:59:00 -0600
Message-ID: <CALMYaTO5ARxjjscVCN5MFo+HvyuSuH=is=riDrv8q7-=H=WLDw@mail.gmail.com>
To: usrp-users@lists.ettus.com
Subject: [USRP-users] E320 Packet Parsing Error
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
From: Ronald Rounsifer via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Ronald Rounsifer <ronrounsifer@gmail.com>
Content-Type: multipart/mixed; boundary="===============6477791550979566201=="
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

--===============6477791550979566201==
Content-Type: multipart/alternative; boundary="00000000000073afe40598411fd1"

--00000000000073afe40598411fd1
Content-Type: text/plain; charset="UTF-8"

Hello,

I am currently developing with your USRP Hardware Driver (UHD) for the E320
monolithic board and have run into a packet parsing error while attempting
to setup transmitting and receiving streamers.
When created and executed in isolation both the transmitting streamer and
receiving streamer run without any issue, but when I attempt to connect the
two I begin running into an issue with the indices of the packet.

The error (see below) occurs 3 times before a segmentation fault occurs so
any help would be appreciated!

Note: I am not using any custom software. Everything is only using the base
UHD that is documented on the website.


*Error*







*Stream cmd issued: Exception in Rx Thread!Exception: EnvironmentError:
IOError: Block ctrl (CE_01_Port_30) packet parse error - EnvironmentError:
IOError: Expected packet index: 753 Received index: 754Cleaning rx_streamer
to attempt recovery.New code executingReceived ACK.Sent the following
number of samples: 1024Segmentation fault (core dumped)*

Thank you,
Ron

--00000000000073afe40598411fd1
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><span style=3D"color:rgb(0,0,0)"><span style=3D"font-famil=
y:Helvetica;font-size:12px;font-style:normal;font-variant-caps:normal;font-=
weight:normal;letter-spacing:normal;text-align:start;text-indent:0px;text-t=
ransform:none;white-space:normal;word-spacing:0px;text-decoration:none;disp=
lay:inline;float:none">Hello,</span></span><div class=3D"gmail-" style=3D"f=
ont-family:Helvetica;font-size:12px;font-style:normal;font-variant-caps:nor=
mal;font-weight:normal;letter-spacing:normal;text-align:start;text-indent:0=
px;text-transform:none;white-space:normal;word-spacing:0px;text-decoration:=
none"><span style=3D"color:rgb(0,0,0)"><br class=3D"gmail-"></span></div><d=
iv class=3D"gmail-" style=3D"font-family:Helvetica;font-size:12px;font-styl=
e:normal;font-variant-caps:normal;font-weight:normal;letter-spacing:normal;=
text-align:start;text-indent:0px;text-transform:none;white-space:normal;wor=
d-spacing:0px;text-decoration:none"><span style=3D"color:rgb(0,0,0)">I am c=
urrently developing with your USRP Hardware Driver (UHD) for the E320 monol=
ithic board and have run into a packet parsing error while attempting to se=
tup transmitting and receiving streamers.</span></div><div class=3D"gmail-"=
 style=3D"font-family:Helvetica;font-size:12px;font-style:normal;font-varia=
nt-caps:normal;font-weight:normal;letter-spacing:normal;text-align:start;te=
xt-indent:0px;text-transform:none;white-space:normal;word-spacing:0px;text-=
decoration:none"><span style=3D"color:rgb(0,0,0)">When created and executed=
 in isolation both the transmitting streamer and receiving streamer run wit=
hout any issue, but when I attempt to connect the two I begin running into =
an issue with the indices of the packet.=C2=A0</span></div><div class=3D"gm=
ail-" style=3D"font-family:Helvetica;font-size:12px;font-style:normal;font-=
variant-caps:normal;font-weight:normal;letter-spacing:normal;text-align:sta=
rt;text-indent:0px;text-transform:none;white-space:normal;word-spacing:0px;=
text-decoration:none"><span style=3D"color:rgb(0,0,0)"><br class=3D"gmail-"=
></span></div><div class=3D"gmail-" style=3D"font-family:Helvetica;font-siz=
e:12px;font-style:normal;font-variant-caps:normal;font-weight:normal;letter=
-spacing:normal;text-align:start;text-indent:0px;text-transform:none;white-=
space:normal;word-spacing:0px;text-decoration:none"><span style=3D"color:rg=
b(0,0,0)">The error (see below) occurs 3 times before a segmentation fault =
occurs so any help would be appreciated!<br></span></div><div class=3D"gmai=
l-" style=3D"font-family:Helvetica;font-size:12px;font-style:normal;font-va=
riant-caps:normal;font-weight:normal;letter-spacing:normal;text-align:start=
;text-indent:0px;text-transform:none;white-space:normal;word-spacing:0px;te=
xt-decoration:none"><span style=3D"color:rgb(0,0,0)"><br></span></div><div =
class=3D"gmail-" style=3D"font-family:Helvetica;font-size:12px;font-style:n=
ormal;font-variant-caps:normal;font-weight:normal;letter-spacing:normal;tex=
t-align:start;text-indent:0px;text-transform:none;white-space:normal;word-s=
pacing:0px;text-decoration:none"><span style=3D"color:rgb(0,0,0)">Note: I a=
m not using any custom software. Everything is only using the base UHD that=
 is documented on the website.<br class=3D"gmail-"></span></div><div class=
=3D"gmail-" style=3D"font-family:Helvetica;font-size:12px;font-style:normal=
;font-variant-caps:normal;font-weight:normal;letter-spacing:normal;text-ali=
gn:start;text-indent:0px;text-transform:none;white-space:normal;word-spacin=
g:0px;text-decoration:none"><div class=3D"gmail-"><span style=3D"color:rgb(=
0,0,0)"><br></span></div><div class=3D"gmail-"><span style=3D"color:rgb(0,0=
,0)"><br></span></div><div class=3D"gmail-"><span style=3D"color:rgb(0,0,0)=
"><b><u>Error</u></b></span></div><div class=3D"gmail-"><i><span style=3D"c=
olor:rgb(0,0,0)">Stream cmd issued: Exception in Rx Thread!<br>Exception: E=
nvironmentError: IOError: Block ctrl (CE_01_Port_30) packet parse error - E=
nvironmentError: IOError: Expected packet index: 753 Received index: 754<br=
>Cleaning rx_streamer to attempt recovery.<br><br>New code executing<br>Rec=
eived ACK.<br>Sent the following number of samples: 1024<br>Segmentation fa=
ult (core dumped)</span></i></div><div class=3D"gmail-"><span style=3D"colo=
r:rgb(0,0,0)"><br></span></div><div class=3D"gmail-"><span style=3D"color:r=
gb(0,0,0)">Thank you,</span></div><div class=3D"gmail-"><span style=3D"colo=
r:rgb(0,0,0)">Ron</span></div></div></div>

--00000000000073afe40598411fd1--


--===============6477791550979566201==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============6477791550979566201==--

