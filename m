Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 876E939F066
	for <lists+usrp-users@lfdr.de>; Tue,  8 Jun 2021 10:07:33 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 54F51384047
	for <lists+usrp-users@lfdr.de>; Tue,  8 Jun 2021 04:07:32 -0400 (EDT)
Received: from cc.mail.osaka-u.ac.jp (cc-ext.ccc.osaka-u.ac.jp [133.1.138.214])
	by mm2.emwd.com (Postfix) with SMTP id E73D33843F4
	for <usrp-users@lists.ettus.com>; Tue,  8 Jun 2021 04:02:14 -0400 (EDT)
Received: (qmail 29580 invoked by uid 0); 8 Jun 2021 17:02:13 +0900
X-Qmail-Scanner-Diagnostics: from 133.1.17.72 (viktor+ist@133.1.17.72) by m24 (envelope-from <viktor@ist.osaka-u.ac.jp>, uid 0) with qmail-scanner-2.11
 (clamdscan: 0.99.4/26096.  
 Clear:RC:0(133.1.17.72):.
 Processed in 0.050231 secs); 08 Jun 2021 08:02:13 -0000
X-Qmail-Scanner-Mail-From: viktor@ist.osaka-u.ac.jp via m24
X-Qmail-Scanner: 2.11 (Clear:RC:0(133.1.17.72):. Processed in 0.050231 secs)
Received: from unknown (HELO v-prec.higashi-local) (viktor+ist@133.1.17.72)
  by 172.30.102.164 with SMTP; 8 Jun 2021 17:02:13 +0900
To: usrp-users@lists.ettus.com
References: <495983099.3160297.1622725504093@mail.yahoo.com>
 <54055AEB-AEA1-4A10-A75F-D96F3FA8652F@gmail.com>
 <0369eb8c-4fea-0e61-77ca-3ae74f5241ab@ist.osaka-u.ac.jp>
 <CAEXYVK7KyX-1makb7SdhqQoGBX+mos6ZCcONKTDSjsgzJRuazA@mail.gmail.com>
From: Viktor Erdelyi <viktor@ist.osaka-u.ac.jp>
Message-ID: <c6c59663-2ef9-07cc-a98d-f972b0c2861b@ist.osaka-u.ac.jp>
Date: Tue, 8 Jun 2021 17:02:12 +0900
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.10.1
MIME-Version: 1.0
In-Reply-To: <CAEXYVK7KyX-1makb7SdhqQoGBX+mos6ZCcONKTDSjsgzJRuazA@mail.gmail.com>
Content-Language: en-US
X-matriXscan-msec-AV: Clean
X-odins-Action: Approve
X-odins-spam: Uncategorized
Message-ID-Hash: DLGKTFGYKDKMLIIJLP3JNEBFFEC6ZLDT
X-Message-ID-Hash: DLGKTFGYKDKMLIIJLP3JNEBFFEC6ZLDT
X-MailFrom: viktor@ist.osaka-u.ac.jp
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Center frequency drift on USRP B-series even with Octoclock
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/DLGKTFGYKDKMLIIJLP3JNEBFFEC6ZLDT/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============4157613737215867698=="

This is a multi-part message in MIME format.
--===============4157613737215867698==
Content-Type: multipart/alternative;
 boundary="------------5EFF869D5E04D5FCB48DBC60"
Content-Language: en-US

This is a multi-part message in MIME format.
--------------5EFF869D5E04D5FCB48DBC60
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: quoted-printable

For the record: I got my hands on a second B210, and I can confirm that,=20
in terms of keeping the center frequency synced, the B210+B210+Octoclock=20
combination indeed performs much better than the B205mini+B210+Octoclock=20
combination. Thanks for the insights!

Viktor

On 6/4/21 9:31 PM, Brian Padalino wrote:
> On Fri, Jun 4, 2021 at 2:21 AM Viktor Erdelyi=20
> <viktor@ist.osaka-u.ac.jp <mailto:viktor@ist.osaka-u.ac.jp>> wrote:
>
>     You're right Marcus, 0.9GHz seems to be better indeed (see image).
>     Also thanks for the input on the B205 PLL.
>
>     May I ask in what way phase noise can affect the signal's
>     frequency? According to an NI webpage [1], it "deals with very
>     short time scales and produces effects that look more like
>     unwanted modulation changing the shape of the waveform rather than
>     a wandering frequency". Am I missing something?
>
> It should be noted the B205 doesn't really have an analog PLL like the=20
> B200/B210/X-series.=C2=A0 Check the schematic:
>
> https://files.ettus.com/schematics/b200mini/b200mini.pdf=20
> <https://files.ettus.com/schematics/b200mini/b200mini.pdf>
>
> The VTCXO=C2=A0is fed by a 16-bit DAC and the FPGA does some counting t=
o=20
> try to keep it locked, but it doesn't have the feedback loop that the=20
> actual analog PLL does.
>
> Kind of comparing apples with oranges at that point.
>
> Brian
>
> _______________________________________________
> USRP-users mailing list -- usrp-users@lists.ettus.com
> To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--------------5EFF869D5E04D5FCB48DBC60
Content-Type: multipart/related;
 boundary="------------1BF3197B8DF2730960261BC7"


--------------1BF3197B8DF2730960261BC7
Content-Type: text/html; charset=utf-8
Content-Transfer-Encoding: quoted-printable

<html>
  <head>
    <meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3DUTF=
-8">
  </head>
  <body>
    <p>For the record: I got my hands on a second B210, and I can
      confirm that, in terms of keeping the center frequency synced, the
      B210+B210+Octoclock combination indeed performs much better than
      the B205mini+B210+Octoclock combination. Thanks for the insights!</=
p>
    <p>Viktor<br>
    </p>
    <p><img src=3D"cid:part1.CFE9C475.1A82070A@ist.osaka-u.ac.jp" alt=3D"=
"></p>
    <div class=3D"moz-cite-prefix">On 6/4/21 9:31 PM, Brian Padalino
      wrote:<br>
    </div>
    <blockquote type=3D"cite"
cite=3D"mid:CAEXYVK7KyX-1makb7SdhqQoGBX+mos6ZCcONKTDSjsgzJRuazA@mail.gmai=
l.com">
      <meta http-equiv=3D"content-type" content=3D"text/html; charset=3DU=
TF-8">
      <div dir=3D"ltr">
        <div dir=3D"ltr">On Fri, Jun 4, 2021 at 2:21 AM Viktor Erdelyi
          &lt;<a href=3D"mailto:viktor@ist.osaka-u.ac.jp"
            moz-do-not-send=3D"true">viktor@ist.osaka-u.ac.jp</a>&gt;
          wrote:<br>
        </div>
        <div class=3D"gmail_quote">
          <blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px
            0.8ex;border-left:1px solid
            rgb(204,204,204);padding-left:1ex">
            <div>
              <p>You're right Marcus, 0.9GHz seems to be better indeed
                (see image). Also thanks for the input on the B205 PLL.</=
p>
              <p>May I ask in what way phase noise can affect the
                signal's frequency? According to an NI webpage [1], it
                "deals with very short time scales and produces effects
                that look more like unwanted modulation changing the
                shape of the waveform rather than a wandering
                frequency". Am I missing something?<br>
              </p>
            </div>
          </blockquote>
          <div>It should be noted the B205 doesn't really have an analog
            PLL like the B200/B210/X-series.=C2=A0 Check the schematic:</=
div>
          <div><br>
          </div>
          <div>=C2=A0=C2=A0<a
              href=3D"https://files.ettus.com/schematics/b200mini/b200min=
i.pdf"
              moz-do-not-send=3D"true">https://files.ettus.com/schematics=
/b200mini/b200mini.pdf</a></div>
          <div><br>
          </div>
          <div>The VTCXO=C2=A0is fed by a 16-bit DAC and the FPGA does so=
me
            counting to try to keep it locked, but it doesn't have the
            feedback loop that the actual analog PLL does.</div>
          <div><br>
          </div>
          <div>Kind of comparing apples with oranges at that point.</div>
          <div><br>
          </div>
          <div>Brian</div>
        </div>
      </div>
      <br>
      <fieldset class=3D"mimeAttachmentHeader"></fieldset>
      <pre class=3D"moz-quote-pre" wrap=3D"">____________________________=
___________________
USRP-users mailing list -- <a class=3D"moz-txt-link-abbreviated" href=3D"=
mailto:usrp-users@lists.ettus.com">usrp-users@lists.ettus.com</a>
To unsubscribe send an email to <a class=3D"moz-txt-link-abbreviated" hre=
f=3D"mailto:usrp-users-leave@lists.ettus.com">usrp-users-leave@lists.ettu=
s.com</a>
</pre>
    </blockquote>
  </body>
</html>

--------------1BF3197B8DF2730960261BC7
Content-Type: image/png;
 name="npdhpnhlkmedibfj.png"
Content-Transfer-Encoding: base64
Content-ID: <part1.CFE9C475.1A82070A@ist.osaka-u.ac.jp>
Content-Disposition: inline;
 filename="npdhpnhlkmedibfj.png"

iVBORw0KGgoAAAANSUhEUgAAAfgAAAGlCAIAAACZWnMBAAAACXBIWXMAAA7EAAAOxAGVKw4b
AAAgAElEQVR4nOydeVxTV/r/HxN2RZSg4oCWoS5oLTBuXy20o9QNdRzsYEtd+blgK1hpkapV
0VYd95apFGtd6ljriktbUKzLWPfi8qLuIDAqUnChgiBhSeLvj485cyVhDRFDnveLF6+bc889
5znPOXlyc+/N52m0dcsOYhiGYRoujZ48eVLfNjAMwzBGxCI/P7++bWAYhmGMiKy+DWAYhmGM
Cwd6hmGYBg4HeoZhmAYOB3qGYZgGDgd6hmGYBg4HeoZhmAaORX0bUAOUSqVGo7G2trawMCWz
X0ySkpLu3LnTvn37V199tb5tqRmlpaXx8fFE1LVrVzc3t/o2xyA0Gs2xY8f++OMPInJ1de3Z
s2d9W1Se4uLiJ0+e2NraVv8QjUajVCplMlmNjqocLNfOnTt7eHjUVZtmhWmc0X/++eft27dv
3bq1i4uLk5OTm5vbhAkTjN3pyZMnIyMjIyMji4uLjd3XcyYvL+/tt98eP368Wq2ub1tqTGFh
4fjx48ePH3/8+PH6tsUgVCpVnz59AgICMJw1a9YYr6+4uDhXHWbMmFHJIdHR0e3bt3d2dm7d
unXnzp2///77Knv57rvv3njjjRYtWri4uLRu3bpFixaDBw/evXs39oaHh6PfkydPikNEYVJS
UiUt3759e/z48WPGjNFoNNUbMfMMJnBq/Pnnn3/22WdEJJfLbW1ty8rK8vLycE5nVK5du7Z2
7Voimj9/vrH7es589dVXeXl5vXr18vb2rm9bzJcDBw5cvHiRiCZMmODn59e6dWvj9aVWqwsL
C8sVKpXKiuovXrx46dKlRNSnTx987QgNDS0rKwsODtZbX6PRjB49et++fXhpbW0tl8tLSkpO
nTplb2//1ltvEVFxcTFsKCsrEweKwsrPOd56662oqKgbN25s3bp11KhR1Rgx8wwmEOi3b99O
RJ6engcOHMCXwevXr//444+iwpUrV+7fv29tbd27d+/k5OS0tLRWrVq9/vrr0kZSU1OvXr2q
UqlcXV179epVrousrKzk5OSSkhJra+s33njD3t7+0qVL6enp2HvixAlra+tmzZp5e3vr9uXj
44O36PXr169fv65SqVq1auXj4yOT/e/bUmlp6cGDB8vKyv7v//5PoVCcOnWKiDp27Ni6deuK
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
rwZ1SUkJSd6T0iHo9RI2li1bdvLkSdy3+OCDD8oFJr3O12g0unHH3d29RqdjwjbhwB49elT/
cKmF1fdVNSuHhIRs2bLl5s2bJ0+ezM7OLisrk8vl0rVkJGrqQyL6+9//LjXs3Xff3b9/f05O
TkWXYrZu3TpixIirV6/iiparqyvu0+j9NBVfDYuKirDRtGnTPn36ZGdn671AHxkZKRy7bt06
3LISqFSqMWPGHD161M7ObseOHdKvR7ip8Pjx4xqMnCEikwj0oFevXgiRGRkZmPuMjAxpBb3n
GuJ2k6+vr7jgCFxdXUWgFwu0mkgfEBaxTDw2IFqTy+XCAPEtGF9yK2mQiK5fv/7RRx/B7IkT
J1paWkZHR+ueB+neTGvXrl2VxtvZ2RFRWlqa7hD0egkbN27cECduBw8e/OSTT2xsbEQ1vc7X
e3a5e/fuyMhIvYZZWlrqXnoWjYjn6goKCvQejg8w0n4nK0eNfFXNyt7e3j169Dh79uymTZsQ
fQYMGODk5FRRs3VFTX1IRNLJIqKBAwfiu2xFQdPFxeXUqVMXLlzIzs5u27bt1atXcbFI7wdM
p06dmjRpUlhYeOjQoT/++MPR0fGVV17Zu3fvd999hy+I5fDx8REnCj///HO5QD927NiDBw/a
2tpu37693FkRHhMy9R9P1Asm8Bz9ggULdu/eLUKJWJqWlpbSaoWFhXgUNy8vDw/qdu7cWZwO
vPLKK19LCAkJ6d27d7du3fCWXrdunXhYPisrCxsixOBucEV069YNG+JBY/Fls2fPnj4+PuhC
xIJNmzZVOeQbN25gIzQ0NCAg4M0336zkwmtNgU9u374tQmflXiKix48fBwcHl5WV9erVq0mT
JteuXfv444+lbep1vt7eZTKZZQXo/S71l7/8BRvCvbiJIgUrISkpCZMovbVubCZNmkREu3fv
xrWv//f//p/YdejQoYCAgICAgCtXrtRtpzX1IRGtWrXq3r172FapVHiWhiQn4+WsxVrt2rXr
kCFDXFxc8BBOx44du3fvrtcefAyUlZWNHj1avINqwYQJE/bt22dpafn999+Xuw+XlZWFc6nq
nM0w5TCBM/rz58+vXLlSLpc7OTlZW1uLZVTuKSu5XB4QENCnT5+LFy/i3lFISEjr1q0nTJiw
fv36NWvWpKWlubm5PX78+OLFi1evXr13756zs3NISMjq1asvX77cvXv37t27P378ODk5GXFW
nMz6+Pg0adLknXfe+ec//6lrnrOzM7o4duxY//79xXV/Nze3oKAgGxub0NDQL7/88uLFi25u
bhYWFg4ODlUOWSzlqKioQ4cOnT17tvIPmxrxxhtvEFFZWdm5c+dwVbpyL1lZWYWHh6enpzdr
1mzTpk0HDx4MDQ3dtGnTwIEDhwwZgjb1Ol9v74gm1be2ZcuWAQEBe/fuPXHiRJ8+fRQKBe6i
S+nUqdPBgweLiop69uzZuHHj1NTUWrildgQGBs6fPx8XuJydnaUPMmVnZx89epQkX+bqipr6
kIi++uqr+fPn9+jRw8nJ6cKFCzC4R48e+CDXtXbr1q0xMTE4iTl69Ghubq6trW1FNwaIKDIy
8vTp06dOnTp16pSnp6eTk5OlpWVNF+3+/ftxqwwPOIhyXDDEvFtaWvbt27dGzTJkEmf0w4YN
69y5s1qtvnv37u3bt9VqdatWrVatWlXuA79Zs2bz588/fPjwnTt35HJ5REQEnnVbuXLljBkz
mjZtevjw4fXr12/btu2///1vQEAA7kEtXrz4k08+adas2Z07d/bu3Xvw4MFWrVqhwQEDBkyZ
MqVJkyYlJSW5ubm6vzcRLF++PCIiwtbW9uzZs/Hx8Wq1un///omJifi+/Nlnn0VGRjZr1kwm
k/Xp0ycmJgZHVXLfrFOnTgsWLJDL5Tdu3Fi/fr2Pj4/eC6m1w8PDw9PTk4ikD1NW4qXvvvsO
31FWrVrVsmXLUaNGIcqEhoaKD92KnF8nREdH45t+cnLylStXvv3223IVPvroI4Sk27dvl5aW
Lly4sK66rhKZTDZu3DhsBwUFSecUYc7Ozu7Pf/7zc7OnIt566y1HR8czZ87Ex8f//vvvlpaW
o0ePFl89dWnWrFlmZuauXbt27dqVm5vr7e2dkJBQiUKDjY3Njz/++Mknn7Rq1Qpv1Tt37qjV
ak9Pzzlz5lTzd3niKybecQIU4he2b731VnXuojHlaCSuU7/gaDSa1NTUnJwc/ApGumv06NF4
lDs9PV2lUp09e9bT01P3OZmMjIysrCz8qlu3/Zs3b2ZmZnp7e9vb29fawrS0tD/++KNr167S
tYjf8oiXq1evnjVrFhHt3r1b3GDUi1KpvHDhgre3t+5YDCQhIWHUqFF/+tOfLl++XO7zpnIv
6VJN5xtOVlbWH3/88corr1T0AZmamqpWq6VPwT4fxKM4586dk15VGDp06IkTJ/C4To0a3Lhx
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
RU5ErkJggg==
--------------1BF3197B8DF2730960261BC7--

--------------5EFF869D5E04D5FCB48DBC60--

--===============4157613737215867698==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============4157613737215867698==--
