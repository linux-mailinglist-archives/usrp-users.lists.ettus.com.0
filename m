Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id B1B7C33F253
	for <lists+usrp-users@lfdr.de>; Wed, 17 Mar 2021 15:11:34 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id B4EE93836F8
	for <lists+usrp-users@lfdr.de>; Wed, 17 Mar 2021 10:11:32 -0400 (EDT)
Received: from mail-ot1-f47.google.com (mail-ot1-f47.google.com [209.85.210.47])
	by mm2.emwd.com (Postfix) with ESMTPS id 813273836EC
	for <usrp-users@lists.ettus.com>; Wed, 17 Mar 2021 10:11:23 -0400 (EDT)
Received: by mail-ot1-f47.google.com with SMTP id f73-20020a9d03cf0000b02901b4d889bce0so1865250otf.12
        for <usrp-users@lists.ettus.com>; Wed, 17 Mar 2021 07:11:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=nd.edu; s=google;
        h=mime-version:from:date:message-id:subject:to;
        bh=ST8I6JTizvL3pyznmj0BOszuux67pevrLk5ytqE/huw=;
        b=I2Gt1ooQtZYIHUjUirRvAM3dlOHFlHNGUUTBsH/+jFpzjGn3jiNhEmS6DpnDWwwKO+
         SEzx+sjS2ckrjSEjW6Mxs1utvOPg01jATUU3PJCsxPupxaUDx9u7R9eSaDv0lpvey632
         mCNC/gXkRP9QZ+HJFKiFtzYdmuDvyvm2OfAlV2mSbgf84X5q9O7bwRoSIPXqS6MpeenE
         ZlAi79leFMVp/r8/qPKEqmFtqJTw4q+LEN5YG0x1jlAHZumIjkNfGl2vVTJgqRpEnIWZ
         8q40JBbPU3DcABldfilQdOxtNBmmd1V/5V12Y0ajB3KN+F2C39Mbg76ofNlm1W+8rm0M
         X7jg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
        bh=ST8I6JTizvL3pyznmj0BOszuux67pevrLk5ytqE/huw=;
        b=AcuRjsK0LYg4I6Fjx28QgQMQcJHUxMAMolA+E56KJC8sRHd/y6HFHwziFXmo0Rv1cW
         aepXP38tqZYpz0R0q+TCiFJIxnYs3yAVRPH5CidFZUEPb4wdrKLjqwGkZe7wb/g9i9p9
         32mBWqewTss6uZMD2ljcXCqSrU1PohT2LheoLeo3x9MZJ9Bq8MkZzx80LwXJZHa65z/L
         oex8YscySxZM7oyxNmI3FZfgtvs0B+HHgWIe0+F7xcG+LShf8RdcCGoGEfqQm6jYArAH
         7B+/lVfqtLlETMPsXIaoPBL1AswTLlgh6CJJC+fDRPTde3HAQ6lLjwipSUvO9Ocwn8h4
         NK7g==
X-Gm-Message-State: AOAM530vevL2SJOmc/iuJ/i1dCXlamCNNvxFca/SBjocJFCc8VNMwUES
	HgmSYpdcEwIV8pIyWFNOpXYZpu25VMb3w4sUw3mmfeL88bQ=
X-Google-Smtp-Source: ABdhPJw+jn0zNtv4OkDphMDyvYVFcCIirlj0NcTeXJtZsyG5Ycj8NIW6aGJYzDW91O1wllKDpXt9kTMUu2MxF4Ppews=
X-Received: by 2002:a9d:4049:: with SMTP id o9mr3490354oti.58.1615990282380;
 Wed, 17 Mar 2021 07:11:22 -0700 (PDT)
MIME-Version: 1.0
From: Rob Kossler <rkossler@nd.edu>
Date: Wed, 17 Mar 2021 10:11:11 -0400
Message-ID: <CAB__hTQUGf5fbAyC4BjmxTSrQE7LwYrQd4U=hWQx-3ekdAgNnA@mail.gmail.com>
To: usrp-users <usrp-users@lists.ettus.com>
Message-ID-Hash: Y4HNPXWU2TRHBNEF6GPFOPYB4QAAIBLC
X-Message-ID-Hash: Y4HNPXWU2TRHBNEF6GPFOPYB4QAAIBLC
X-MailFrom: rkossler@nd.edu
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] White Rabbit questions
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/Y4HNPXWU2TRHBNEF6GPFOPYB4QAAIBLC/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============9149741235555810109=="

--===============9149741235555810109==
Content-Type: multipart/alternative; boundary="000000000000be379b05bdbc0e81"

--000000000000be379b05bdbc0e81
Content-Type: text/plain; charset="UTF-8"

In my use case, I have a single WR Switch (from Seven Solutions) connected
to 8 N3xx devices (WR slaves) via single-mode fiber (~ 10m).  I have a few
questions:

   - *Accuracy*: How does the accuracy of WR compare to running 10 MHz/PPS
   over coax of similar length (~10m) from a reference such as an OctoClock? I
   don't need specific quantification, but I am just looking for general
   comments.
   - *WR switch mode*: There are 3 choices: GrandMaster, Boundary Clock, or
   Free-running Master.  (In my use case, there are occasions where I will
   have a 10MHz/PPS reference available and other occasions where I won't.)
      - It appears that if I choose GrandMaster, I *must* have a 10 MHz/PPS
      reference input. The WR Switch does not seem to behave well if these
      signals are not present. Is this correct?
      - Conversely, if I have a 10MHz/PPS reference available and want to
      use it, I *must* choose GrandMaster mode. Is this correct?
      - I have found documentation that indicates that it is optional to
      have a 10MHz/PPS reference. But, it is not clear which mode I
should choose
      for the case where I do not have such a reference. I have also found
      documentation that indicates that the PPS output is *not* available in
      Boundary Clock mode, but that it *is* available in Free-Running Master
      mode.  Does this mean that in my use case with devices that
require PPS, I
      must use the Free-Running Master mode for times when I don't have an
      external reference but then switch to GrandMaster mode for times
when I do
      have an external reference?  (This would imply that I would never use the
      default Boundary Clock mode.)
   - *Optical Transceivers*: There are only a few optical transceivers
   listed on the WR website compatibility list and in the dot-config file of
   the WR Switch device. All of them are BiDi transceivers.
      - In my use case with short distances, is there any disadvantage to
      using 2-fiber transceivers (common wavelength of 1310nm) at both
master and
      slave ports? I recognize that single fiber BiDi solutions have the
      advantage that the Tx and Rx path lengths are identical, but I
would expect
      that a duplex fiber has *very* similar path lengths and it has the
      advantage of common wavelength.

Rob

--000000000000be379b05bdbc0e81
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">In my use case, I have a single WR Switch (from Seven Solu=
tions) connected to 8 N3xx devices (WR slaves) via single-mode fiber (~ 10m=
).=C2=A0 I have a few questions:<div><ul><li><b>Accuracy</b>: How does the =
accuracy of WR compare to running 10 MHz/PPS over coax of similar length (~=
10m) from a reference such as an OctoClock? I don&#39;t need specific quant=
ification, but I am just looking for general comments.</li><li><b>WR switch=
 mode</b>: There are 3 choices: GrandMaster, Boundary Clock, or Free-runnin=
g Master.=C2=A0 (In my use case, there are occasions where I will have a 10=
MHz/PPS reference available and other occasions where I won&#39;t.)</li><ul=
><li>It appears that if I choose GrandMaster, I *must* have a 10 MHz/PPS re=
ference input. The WR Switch does not seem to behave well if these signals =
are not present. Is this correct?</li><li>Conversely, if I have a 10MHz/PPS=
 reference available and want to use it, I *must* choose GrandMaster mode. =
Is this correct?</li><li>I have found documentation that indicates that it =
is optional to have a 10MHz/PPS reference. But, it is not clear which mode =
I should choose for the case where I do not have such a reference. I have a=
lso found documentation that indicates that the PPS output is *not* availab=
le in Boundary Clock mode, but that it *is* available in Free-Running Maste=
r mode.=C2=A0 Does this mean that in my use case with devices that require =
PPS, I must use the Free-Running Master mode for times when I don&#39;t hav=
e an external reference but then switch to GrandMaster mode for times when =
I do have an external reference?=C2=A0 (This would imply that I would never=
 use the default Boundary Clock mode.)</li></ul><li><b>Optical Transceivers=
</b>: There are only a few optical transceivers listed on the WR website co=
mpatibility list and in the dot-config file of the WR Switch device. All of=
 them are BiDi transceivers.=C2=A0=C2=A0</li><ul><li>In my use case with sh=
ort distances, is there any disadvantage to using 2-fiber transceivers (com=
mon wavelength of 1310nm) at both master and slave ports? I recognize that =
single fiber BiDi solutions have the advantage that the Tx and Rx path leng=
ths are identical, but I would expect that a duplex fiber has *very* simila=
r path lengths and it has the advantage of common wavelength.</li></ul></ul=
>Rob</div></div>

--000000000000be379b05bdbc0e81--

--===============9149741235555810109==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============9149741235555810109==--
