Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 058E967BDF8
	for <lists+usrp-users@lfdr.de>; Wed, 25 Jan 2023 22:18:05 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 7E1BF38436E
	for <lists+usrp-users@lfdr.de>; Wed, 25 Jan 2023 16:18:03 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1674681483; bh=xwo5OoqPx7wgSnu+9Md7DWhtPQmVHGZP/VqEo+PvTrM=;
	h=From:Date:To:Subject:List-Id:List-Archive:List-Help:List-Owner:
	 List-Post:List-Subscribe:List-Unsubscribe:From;
	b=PFQQGGyhXOdBbDub4Yik0MwvG5z5T3A29KYZ6d5G9Q8r2MMQf0Kz7oV2c4vr1oOp/
	 IXhRT2gcn7JAUvqDk7KxLSHJKBi4PZOsvQ8SqClF7Zd5VaeCEr8PvMpayx/jk97iIw
	 cLxNYj57er5M742ySwAVZzU6rbz5vy4DBXN3tyYClMwZSscqTI0lx7STYbt/HhCBu+
	 9IFTPGp7KYtxvfAdz0NyXrZtVL9Hh4/eDt1ow6vrkPNhxtuHjrnfs5cjEMMegd+sgf
	 L5G7ieEtEtV12yA8cX2cGfnlAdqQfzfG4Va+8Wx/oWBmAYrReM8ZJ4LygxiQY6Z4GG
	 jYiZQJnXDmBMA==
Received: from mail-lf1-f42.google.com (mail-lf1-f42.google.com [209.85.167.42])
	by mm2.emwd.com (Postfix) with ESMTPS id D9E893842BC
	for <usrp-users@lists.ettus.com>; Wed, 25 Jan 2023 16:17:13 -0500 (EST)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="BlG99ID3";
	dkim-atps=neutral
Received: by mail-lf1-f42.google.com with SMTP id bp15so31046759lfb.13
        for <usrp-users@lists.ettus.com>; Wed, 25 Jan 2023 13:17:13 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=to:subject:message-id:date:from:mime-version:from:to:cc:subject
         :date:message-id:reply-to;
        bh=PcDEMDxI97bQui85sE58EsyiYiZYbG4uaLgEBQINXPY=;
        b=BlG99ID3Jgb+H8PO3/Tc1kocAy5EWSmXdbCSag4CfaLc0IfFUyCX2DqWdRKrKG/W5j
         BGxSU1j1e4FLYUxOAQpZL0XVLJv3X293famZJzmlr73hxuYiwSiSHO5GF5C9KRtfUm6O
         4JJW2WOo1u460UjWDxTLWfJMnVWBn7h4RgO4dxZ+mLCf1toHzjD0wxm1PQt5hTXGis39
         KGdsk2XLr8cfPW8veRyM2eiE4a+nxgKxdT+4c28nVBsc//TmwpzGrNAXbEky/on79NWH
         sB//E2GEe2VUGkkElHGD7rDlgDoU8WWlh8XnuoHgXZipE7JB3LZUEZCddWN57OFbDfwr
         Snrw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=to:subject:message-id:date:from:mime-version:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=PcDEMDxI97bQui85sE58EsyiYiZYbG4uaLgEBQINXPY=;
        b=kuXYGKAZLADrsmkRqqXrWuFheolRTQC1DEomdfuB12Cq8dTwznorzs9MZbxPPkH+g9
         P2MWj8N4jX4aNWOAHGpM+dOfucRCAH4qlbtE8Yf6PiIlQafkvuldWxEIxtoKn7awrHd+
         C2ExGxsoJSGimE5UdjlxeDvKMtM0l3mFDu4OIfF9zg5rOkhFCL+6EhB+C7oJeQAUi+sO
         9oi0a3x8+qO9p6uT5Y0GO3p1J39iGkIbsa8L07VuV4KjUoRJtDv3Ddr/uqDhLl8uJO1X
         oCxuGG86y73OVKq4BfXMsUHa3XzPjPhStToD5QTD5WY8jBZQAWnf1zjlM2o3AGcgkFW2
         frOg==
X-Gm-Message-State: AFqh2kokSQzp+ONy/qntm1YzovNyDOWnUB2D6t7JtozzP0y/990iEAh4
	zudAejj5cZV/Ks6HT65UD2ZsAvloC5ToHJUWy05N4AGYQP0=
X-Google-Smtp-Source: AMrXdXv9aChI0nX28XtkT5ZUY/DRlPN762qSnxIyXadzRpEtG8TfU2TqSSeZkjvK2XgML7gEZ9edXTEEFhqtn1I+8DQ=
X-Received: by 2002:a05:6512:214d:b0:4b4:9c0b:f4d3 with SMTP id
 s13-20020a056512214d00b004b49c0bf4d3mr1854399lfr.349.1674681432146; Wed, 25
 Jan 2023 13:17:12 -0800 (PST)
MIME-Version: 1.0
From: Uri M <uri.marcovitch@gmail.com>
Date: Wed, 25 Jan 2023 23:16:59 +0200
Message-ID: <CAGA=HFc6SGvNWmQtqMsh3uY6Ez+U_F3y0CGSmvAs=8zc7+O37A@mail.gmail.com>
To: usrp-users@lists.ettus.com
Message-ID-Hash: EYI2XMWPOAIJ2ZOP57UIS4J43DWS7JJX
X-Message-ID-Hash: EYI2XMWPOAIJ2ZOP57UIS4J43DWS7JJX
X-MailFrom: uri.marcovitch@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Help with replay_capture.py
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/EYI2XMWPOAIJ2ZOP57UIS4J43DWS7JJX/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============3567992220376267632=="

--===============3567992220376267632==
Content-Type: multipart/alternative; boundary="000000000000e0076005f31d272d"

--000000000000e0076005f31d272d
Content-Type: text/plain; charset="UTF-8"

Hi all,

I'm running into some trouble with the replay_capture.py example. When I
try to use multiple channels, I keep getting the same samples in all of
them.

I've tried all the file file format options.

Note that the samples of channel 1 are good.

If anyone has any ideas, I'd really appreciate the help.

Thanks!

-Uri

--000000000000e0076005f31d272d
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><p style=3D"border:0px solid rgb(217,217,227);box-sizing:b=
order-box;margin:1.25em 0px;color:rgb(55,65,81);font-family:S=C3=B6hne,ui-s=
ans-serif,system-ui,-apple-system,&quot;Segoe UI&quot;,Roboto,Ubuntu,Cantar=
ell,&quot;Noto Sans&quot;,sans-serif,&quot;Helvetica Neue&quot;,Arial,&quot=
;Apple Color Emoji&quot;,&quot;Segoe UI Emoji&quot;,&quot;Segoe UI Symbol&q=
uot;,&quot;Noto Color Emoji&quot;;font-size:16px;white-space:pre-wrap;backg=
round-color:rgb(247,247,248)">Hi all,</p><p style=3D"border:0px solid rgb(2=
17,217,227);box-sizing:border-box;margin:1.25em 0px;color:rgb(55,65,81);fon=
t-family:S=C3=B6hne,ui-sans-serif,system-ui,-apple-system,&quot;Segoe UI&qu=
ot;,Roboto,Ubuntu,Cantarell,&quot;Noto Sans&quot;,sans-serif,&quot;Helvetic=
a Neue&quot;,Arial,&quot;Apple Color Emoji&quot;,&quot;Segoe UI Emoji&quot;=
,&quot;Segoe UI Symbol&quot;,&quot;Noto Color Emoji&quot;;font-size:16px;wh=
ite-space:pre-wrap;background-color:rgb(247,247,248)">I&#39;m running into =
some trouble with the replay_capture.py example. When I try to use multiple=
 channels, I keep getting the same samples in all of them. </p><p style=3D"=
border:0px solid rgb(217,217,227);box-sizing:border-box;margin:1.25em 0px;c=
olor:rgb(55,65,81);font-family:S=C3=B6hne,ui-sans-serif,system-ui,-apple-sy=
stem,&quot;Segoe UI&quot;,Roboto,Ubuntu,Cantarell,&quot;Noto Sans&quot;,san=
s-serif,&quot;Helvetica Neue&quot;,Arial,&quot;Apple Color Emoji&quot;,&quo=
t;Segoe UI Emoji&quot;,&quot;Segoe UI Symbol&quot;,&quot;Noto Color Emoji&q=
uot;;font-size:16px;white-space:pre-wrap;background-color:rgb(247,247,248)"=
>I&#39;ve tried all the file file format options. </p><p style=3D"border:0p=
x solid rgb(217,217,227);box-sizing:border-box;margin:1.25em 0px;color:rgb(=
55,65,81);font-family:S=C3=B6hne,ui-sans-serif,system-ui,-apple-system,&quo=
t;Segoe UI&quot;,Roboto,Ubuntu,Cantarell,&quot;Noto Sans&quot;,sans-serif,&=
quot;Helvetica Neue&quot;,Arial,&quot;Apple Color Emoji&quot;,&quot;Segoe U=
I Emoji&quot;,&quot;Segoe UI Symbol&quot;,&quot;Noto Color Emoji&quot;;font=
-size:16px;white-space:pre-wrap;background-color:rgb(247,247,248)">Note tha=
t the samples of channel 1 are good.</p><p style=3D"border:0px solid rgb(21=
7,217,227);box-sizing:border-box;margin:1.25em 0px 0px;color:rgb(55,65,81);=
font-family:S=C3=B6hne,ui-sans-serif,system-ui,-apple-system,&quot;Segoe UI=
&quot;,Roboto,Ubuntu,Cantarell,&quot;Noto Sans&quot;,sans-serif,&quot;Helve=
tica Neue&quot;,Arial,&quot;Apple Color Emoji&quot;,&quot;Segoe UI Emoji&qu=
ot;,&quot;Segoe UI Symbol&quot;,&quot;Noto Color Emoji&quot;;font-size:16px=
;white-space:pre-wrap;background-color:rgb(247,247,248)">If anyone has any =
ideas, I&#39;d really appreciate the help. </p><p style=3D"border:0px solid=
 rgb(217,217,227);box-sizing:border-box;margin:1.25em 0px 0px;color:rgb(55,=
65,81);font-family:S=C3=B6hne,ui-sans-serif,system-ui,-apple-system,&quot;S=
egoe UI&quot;,Roboto,Ubuntu,Cantarell,&quot;Noto Sans&quot;,sans-serif,&quo=
t;Helvetica Neue&quot;,Arial,&quot;Apple Color Emoji&quot;,&quot;Segoe UI E=
moji&quot;,&quot;Segoe UI Symbol&quot;,&quot;Noto Color Emoji&quot;;font-si=
ze:16px;white-space:pre-wrap;background-color:rgb(247,247,248)">Thanks!</p>=
<p style=3D"border:0px solid rgb(217,217,227);box-sizing:border-box;margin:=
1.25em 0px 0px;color:rgb(55,65,81);font-family:S=C3=B6hne,ui-sans-serif,sys=
tem-ui,-apple-system,&quot;Segoe UI&quot;,Roboto,Ubuntu,Cantarell,&quot;Not=
o Sans&quot;,sans-serif,&quot;Helvetica Neue&quot;,Arial,&quot;Apple Color =
Emoji&quot;,&quot;Segoe UI Emoji&quot;,&quot;Segoe UI Symbol&quot;,&quot;No=
to Color Emoji&quot;;font-size:16px;white-space:pre-wrap;background-color:r=
gb(247,247,248)">-Uri</p></div>

--000000000000e0076005f31d272d--

--===============3567992220376267632==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============3567992220376267632==--
