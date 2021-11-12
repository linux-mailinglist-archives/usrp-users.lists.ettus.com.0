Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id C62A744ECD1
	for <lists+usrp-users@lfdr.de>; Fri, 12 Nov 2021 19:50:02 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 8211D384875
	for <lists+usrp-users@lfdr.de>; Fri, 12 Nov 2021 13:50:01 -0500 (EST)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=nd.edu header.i=@nd.edu header.b="dmRffbc4";
	dkim-atps=neutral
Received: from mail-oi1-f181.google.com (mail-oi1-f181.google.com [209.85.167.181])
	by mm2.emwd.com (Postfix) with ESMTPS id E74CA384133
	for <usrp-users@lists.ettus.com>; Fri, 12 Nov 2021 13:49:18 -0500 (EST)
Received: by mail-oi1-f181.google.com with SMTP id u74so19553207oie.8
        for <usrp-users@lists.ettus.com>; Fri, 12 Nov 2021 10:49:18 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=nd.edu; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=2Y5NG/yxQLp55e2z9bo7I4fXqPLgkz7mLhnmdeCggg8=;
        b=dmRffbc43n6/yIaVmi4pwHDS0dH6JlpDARS5CKddTuQbRqZLpNciunVyKAmk6f7wzb
         qFkfvDaDCa9K8WloMHob27EShwzd4HS7sYgRTdkkkdvcKgE+2Kfq7VSCxO0EFYLoBT6+
         kjhgLFOzN6+DTmDdL9M6LER1SgTbTclKSFUzXJZvTHl6nSTqNA4C2zOwbYlG5RDkyHUF
         Z930W+LOwr9nE9hN5OIPBHVMzy8KAFw98aGHuH24b787HBw0gZamgCS7kJ1Ec0auaa6E
         L47Td7CZEotAuABYqjq5pI7z0zHRgkhHsG5HhODArJPjmml+X56hh+RbTlEjh0NI2Kss
         Ekgg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=2Y5NG/yxQLp55e2z9bo7I4fXqPLgkz7mLhnmdeCggg8=;
        b=rw+W2PB2vx422MsWKxpEYBA5f459Fo8oSXayXxYVFkuUC2ChbCgWTaSwox03IeLM4E
         LDjsNdQ8gWlu+BtM5L2z0sXAZIV+zKuipvci/nNncvx6POUu/AMJvxZcJzoZJDw8VC1v
         LgrkY3a2mjFT3lfz8q4/drXktDD963KauqjFCvr+eFKpIH/+Ps20HyuKFIuXOnGcQmUQ
         CpmOPt7MRl45rU6X7L1N7ECn8dorn/ayZlqCKVq9JA3gYlUwFXvMoizSLfST6nCTOmFA
         ii/+Un6hc0mSBUUzeqF4fjrQ2XH+fS1GL4MTZt6/SvyKKs0pP5Kuu+oCc7462OFLMl8M
         Kseg==
X-Gm-Message-State: AOAM532pxUiHHH+GCxsoAHmni8i/ufUi8rwfnnMhJhDPucwV9k0vuG8s
	laWKb9YvMpxBw7VnRnLzDvkayIVtCJ4p5vqouZnPcQ==
X-Google-Smtp-Source: ABdhPJxF8iyGqzWcTnp2+O2jrx4w7ClcMyAD6fG9yZFzmjZ04yLo8mvMChw5TotM2u2EjqcTzYZukfYjOW4HBhtS2js=
X-Received: by 2002:aca:2408:: with SMTP id n8mr28471791oic.124.1636742958092;
 Fri, 12 Nov 2021 10:49:18 -0800 (PST)
MIME-Version: 1.0
References: <CAB__hTT2dcHqDV-OKN9konwjX-5ru1DicuVjU1gsjYPf+CGz1A@mail.gmail.com>
 <CAL7q81vYb9ktOTQb=CfhtEM26dK3cHOe-xE41jD=gWhQniKfVA@mail.gmail.com>
 <CAB__hTQxDvfrm5Qr4vHmy_4mKYSKOAO+8oYqT37f5poqKjtiMg@mail.gmail.com>
 <1662a21b-c4fc-aa9e-ccb3-bf5d41560e5b@gmail.com> <CAB__hTRnY_xhn8g3=gnrSdy2pQTbdQRCB12xTHuVrXku=tXMTw@mail.gmail.com>
 <d3ab3578-ab06-ad4b-e7e3-0bd70e278b8a@gmail.com> <CAB__hTQ7qgs72PRST+oxfk++aSk-wbQanAF+n6=iqF2XDSq__w@mail.gmail.com>
 <68dfeaf8-8a74-4902-a939-b9f79640b230@gmail.com> <CAB__hTSmvEquWz1GFsZDf297roNWMTBw-DymFHYxs16pUJOP0Q@mail.gmail.com>
 <09b6ddf3-81ca-b6fc-491c-66b7bfaf83d7@gmail.com> <CAB__hTTGkMcTz4a7ht_Uhb=V3o8EsC8hO5acqfwKkNYa46rsxg@mail.gmail.com>
 <678493ce-f272-2cd9-82e8-a3ceb184d633@gmail.com>
In-Reply-To: <678493ce-f272-2cd9-82e8-a3ceb184d633@gmail.com>
From: Rob Kossler <rkossler@nd.edu>
Date: Fri, 12 Nov 2021 13:49:07 -0500
Message-ID: <CAB__hTS41LC3s6HJhH3eKDDjyXtyY3e0fB1Qv19dAGwpKDaw-A@mail.gmail.com>
To: "Marcus D. Leech" <patchvonbraun@gmail.com>
Message-ID-Hash: UPBYW3PUMSAIPPQDJAEK4BEVHUB3HFEZ
X-Message-ID-Hash: UPBYW3PUMSAIPPQDJAEK4BEVHUB3HFEZ
X-MailFrom: rkossler@nd.edu
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: usrp-users@lists.ettus.com
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: E310 file system problems
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/UPBYW3PUMSAIPPQDJAEK4BEVHUB3HFEZ/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============1389927322112229163=="

--===============1389927322112229163==
Content-Type: multipart/alternative; boundary="0000000000009b40f005d09bea4b"

--0000000000009b40f005d09bea4b
Content-Type: text/plain; charset="UTF-8"

On Fri, Nov 12, 2021 at 1:17 PM Marcus D. Leech <patchvonbraun@gmail.com>
wrote:

> On 2021-11-12 13:14, Rob Kossler wrote:
>
>
>>
> I will try soon, but such experiments are "expensive" because when it
> fails I have to re-burn the file system and then reconfigure stuff
> afterwords since I don't know how to recover from the issue.  My guess was
> that either the mount or the eject was writing a date (perhaps an
> "accessed" date in some metadata) that was much in the future relative to
> the file system "Aug 6 2021" date that it gets and somehow this date
> mismatch was causing the fsck failure.  But I am not knowledgeable on
> this.
>
> Regarding your NTPD comment, perhaps it isn't accessing any RTC.  Perhaps
> it is storing the time in the file system somewhere such that it can
> access it on next boot?
>
> Your comments indicated the resulting time after reboot in this case was
> *correct*, which would mean that something would have to be "keeping time"
> across the
>   reboot.  Or did you mean just that the time after reboot, without the
> network cable connected, but with NTPD turned on, was "closer" to correct
> than without?
>

You're right. I just meant that it was today's date on reboot.  I didn't
check to see if it was actually keeping time in between.  It would have
only been a few seconds anyway.

--0000000000009b40f005d09bea4b
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr">On Fri, Nov 12, 2021 at 1:17 PM Marcus D.=
 Leech &lt;<a href=3D"mailto:patchvonbraun@gmail.com" target=3D"_blank">pat=
chvonbraun@gmail.com</a>&gt; wrote:<br></div><div><div class=3D"gmail_quote=
"><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;borde=
r-left:1px solid rgb(204,204,204);padding-left:1ex">
 =20
   =20
 =20
  <div>
    <div>On 2021-11-12 13:14, Rob Kossler wrote:<br>
    </div>
    <blockquote type=3D"cite">
     =20
      <div dir=3D"ltr">
        <div class=3D"gmail_quote">
          <blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8=
ex;border-left:1px solid rgb(204,204,204);padding-left:1ex">
            <div><br>
            </div>
          </blockquote>
          <div><br>
          </div>
          <div>I will try soon, but such experiments are &quot;expensive&qu=
ot;
            because when it fails I have to re-burn the file system and
            then reconfigure stuff afterwords=C2=A0since I don&#39;t know h=
ow to
            recover from the=C2=A0issue.=C2=A0 My guess was that either the=
 mount
            or the eject was writing a date (perhaps an &quot;accessed&quot=
; date
            in some metadata) that was much in the future relative to
            the file system &quot;Aug 6 2021&quot; date that it gets and so=
mehow
            this date mismatch was causing the fsck failure.=C2=A0 But I am
            not knowledgeable on this.=C2=A0=C2=A0</div>
          <div><br>
          </div>
          <div>Regarding your NTPD comment, perhaps it isn&#39;t accessing
            any RTC.=C2=A0 Perhaps it is storing the time in the file syste=
m
            somewhere such that it can access=C2=A0it on next boot?</div>
        </div>
      </div>
    </blockquote>
    Your comments indicated the resulting time after reboot in this case
    was *correct*, which would mean that something would have to be
    &quot;keeping time&quot; across the<br>
    =C2=A0 reboot.=C2=A0 Or did you mean just that the time after reboot, w=
ithout
    the network cable connected, but with NTPD turned on, was &quot;closer&=
quot;
    to correct than without?<br></div></blockquote><div><br></div><div>You&=
#39;re right. I just meant that it was today&#39;s date on reboot.=C2=A0 I =
didn&#39;t check to see if it was actually keeping time in between.=C2=A0 I=
t would have only been a few seconds anyway.=C2=A0</div></div></div>
</div>

--0000000000009b40f005d09bea4b--

--===============1389927322112229163==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============1389927322112229163==--
